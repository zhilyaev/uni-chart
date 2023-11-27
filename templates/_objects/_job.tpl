{{- define "helpers.job" -}}
{{- $ := .context -}}
{{- $name := .name -}}
{{- with .value }}
{{ with .completions }}completions: {{ . }}{{- end }}
{{ with .activeDeadlineSeconds }}activeDeadlineSeconds: {{ . }}{{- end }}
{{ with .ttlSecondsAfterFinished }}ttlSecondsAfterFinished: {{ . }}{{- end }}
{{ with .backoffLimit }}backoffLimit: {{ . }}{{- end }}
{{ with .parallelism }}parallelism: {{ . }}{{- end }}
template:
  metadata:
    {{- if any $.Values.podLabels .podLabels }}
    labels:
      {{- with $.Values.podLabels }}{{- include "helpers.tpl" (dict "value" . "context" $) | nindent 6 }}{{- end }}
      {{- with .podLabels }}{{- include "helpers.tpl" (dict "value" . "context" $) | nindent 6 }}{{- end }}
    {{- end }}
    {{- if any $.Values.podAnnotations .podAnnotations }}
    annotations:
      {{ include "helpers.workloads.checksum" | nindent 6 }}
      {{- with $.Values.podAnnotations }}{{- include "helpers.tpl" (dict "value" . "context" $) | nindent 6 }}{{- end }}
      {{- with .podAnnotations }}{{- include "helpers.tpl" (dict "value" . "context" $) | nindent 6 }}{{- end }}
    {{- end }}
  spec:
    {{- include "helpers.pod" (dict "value" . "name" $name "context" $) | indent 4 }}
    restartPolicy: {{ .restartPolicy | default "Never" }}
{{- end }}
{{- end }}
