{{- define "helpers.hpa.target" -}}
{{- $ := .context -}}
{{- with .scaleTargetRef }}
scaleTargetRef:
  apiVersion: {{ .apiVersion | default "apps/v1" }}
  kind: {{ .kind | default "Deployment" }}
  name: {{ include "helpers.app.fullname" (dict "name" .name "context" $) }}
{{- else }}
scaleTargetRef:
  apiVersion: apps/v1
  kind: Deployment
  name: {{ include "helpers.app.fullname" (dict "name" .name "context" $) }}
{{- end }}
{{- end }}


{{- define "helpers.vpa.target" -}}
{{- $ := .context -}}
{{- with .scaleTargetRef }}
targetRef:
  apiVersion: {{ .apiVersion | default "apps/v1" }}
  kind: {{ .kind | default "Deployment" }}
  name: {{ include "helpers.app.fullname" (dict "name" .name "context" $) }}
{{ else }}
targetRef:
  apiVersion: apps/v1
  kind: Deployment
  name: {{ include "helpers.app.fullname" (dict "name" .name "context" $) }}
{{- end }}
{{- end }}
