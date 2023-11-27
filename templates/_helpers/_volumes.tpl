{{- define "helpers.volumes.typed" -}}
{{- $ := .context -}}
{{- range .volumes -}}
{{- if eq .type "configMap" }}
- name: {{ .name }}
  configMap:
    {{- with .originalName }}
    name: {{ include "helpers.tpl" (dict "value" . "context" $) }}
    {{- else }}
    name: {{ include "helpers.app.fullname" (dict "name" .name "context" $) }}
    {{- end }}
    {{- with .items }}
    items: {{- include "helpers.tpl" (dict "value" . "context" $) | nindent 4 }}
    {{- end }}
{{- else if eq .type "secret" }}
- name: {{ .name }}
  secret:
    {{- with .originalName }}
    secretName: {{ include "helpers.tpl" (dict "value" . "context" $) }}
    {{- else }}
    secretName: {{ include "helpers.app.fullname" (dict "name" .name "context" $) }}
    {{- end }}
    {{- with .items }}
    items: {{- include "helpers.tpl" (dict "value" . "context" $) | nindent 4 }}
    {{- end }}
{{- else if eq .type "pvc" }}
- name: {{ .name }}
  persistentVolumeClaim:
    {{- with .originalName }}
    claimName: {{ include "helpers.tpl" (dict "value" . "context" $) }}
    {{- else }}
    claimName: {{ include "helpers.app.fullname" (dict "name" .name "context" $) }}
    {{- end }}
{{- else if eq .type "emptyDir" }}
- name: {{ .name }}
  {{- if or .sizeLimit .medium }}
  emptyDir:
    {{- with .sizeLimit }}
    sizeLimit: {{ . }}
    {{- end }}
    {{- with .medium }}
    medium: {{ . }}
    {{- end }}
  {{- else }}
  emptyDir: {}
  {{- end }}
{{- end }}
{{- end }}
{{- end }}

{{- define "helpers.obj.volumes" -}}
{{- $ := .context -}}
{{- with .value -}}
{{- if any .volumes .extraVolumes $.Values.extraVolumes  $.Values.volumes -}}
volumes:
{{- with .volumes }}
  {{- include "helpers.volumes.typed" ( dict "volumes" . "context" $) | nindent 2 }}
{{- end }}
{{- with $.Values.volumes }}
  {{- include "helpers.volumes.typed" ( dict "volumes" . "context" $) | nindent 2 }}
{{- end }}
{{- with .extraVolumes }}
  {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{- with $.Values.extraVolumes }}
  {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{- end }}
{{- end }}
{{- end }}


{{- define "helpers.obj.volumeMounts" -}}
{{- $ := .context -}}
{{- with .value -}}
{{- if any .volumeMounts $.Values.volumeMounts -}}
volumeMounts:
{{- with .volumeMounts }}
  {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{- with $.Values.volumeMounts }}
  {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{- end }}
{{- end }}
{{- end }}
