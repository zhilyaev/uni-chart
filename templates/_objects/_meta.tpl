{{- define "obj.metadata" -}}
{{- $ := .context -}}
{{- $name := .name | default nil -}}
{{- with .value -}}
metadata:
  name: {{ include "helpers.app.fullname" (dict "name" ( $name | default .name) "context" $) }}
  namespace: {{ $.Release.Namespace | quote }}
  labels:
    {{- include "helpers.obj.labels" (dict "value" . "context" $) | nindent 4 }}
  {{- if any $.Values.annotations .annotations }}
  annotations:
    {{- with $.Values.annotations }}{{- include "helpers.tpl" (dict "value" . "context" $) | nindent 4 }}{{- end }}
    {{- with .annotations }}{{- include "helpers.tpl" (dict "value" . "context" $) | nindent 4 }}{{- end }}
  {{- end }}
{{- end }}
{{- end }}
