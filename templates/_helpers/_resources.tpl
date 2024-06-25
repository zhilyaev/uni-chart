{{- define "helpers.obj.resources" -}}
{{- $ := .context -}}
{{- with .value -}}
{{- if any .resources $.Values.resources -}}
{{- $resources := mergeOverwrite dict $.Values.resources .resources }}
resources: {{- include "helpers.tpl" ( dict "value" $resources "context" $) | nindent 2 }}
{{- else if any .resourcesPreset $.Values.resourcesPreset }}
{{- $preset := .resourcesPreset | default $.Values.resourcesPreset }}
{{ if ne $preset "none"}}
resources: {{- include "common.resources.preset" (dict "type" $preset) | nindent 2 }}
{{- end }}
{{- end }}
{{- end }}
{{- end }}

