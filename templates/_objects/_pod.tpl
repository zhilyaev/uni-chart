{{- define "helpers.pod" -}}
{{- $ := .context -}}
{{- $name := .name -}}
{{- with .value -}}
{{/* Fix: null image */}}
{{- if not (hasKey . "image") }}{{- $_ := set . "image" dict }}{{- end }}
{{- if any .serviceAccountName $.Values.serviceAccountName }}
serviceAccountName: {{- include "helpers.tpl" (dict "value" (.serviceAccountName | default $.Values.serviceAccountName) "context" $) | nindent 2 }}
{{- end }}
{{- if .hostAliases }}
hostAliases: {{- include "helpers.tpl" (dict "value" .hostAliases "context" $) | nindent 2 }}
{{- else if $.Values.hostAliases }}
hostAliases: {{- include "helpers.tpl" (dict "value" $.Values.hostAliases "context" $) | nindent 2 }}
{{- end }}
{{- if .affinity }}
affinity: {{- include "helpers.tpl" ( dict "value" .affinity "context" $) | nindent 2 }}
{{- else if $.Values.affinityPreset.enabled }}
affinity:
  {{- if $.Values.affinityPreset.podAffinityType }}
    podAffinity: {{- include "helpers.affinities.pods" (dict "type" $.Values.affinityPreset.podAffinityType "extraLabels" .selectorLabels "context" $) | nindent 4 }}
  {{- end }}
  {{- if $.Values.affinityPreset.podAntiAffinityType }}
    podAntiAffinity: {{- include "helpers.affinities.pods" (dict "type" $.Values.affinityPreset.podAntiAffinityType "extraLabels" .selectorLabels "context" $) | nindent 4 }}
  {{- end }}
  {{- if $.Values.affinityPreset.nodeAffinity.type }}
    nodeAffinity: {{- include "helpers.affinities.nodes" (dict "type" $.Values.affinityPreset.nodeAffinity.type "key" $.Values.affinityPreset.nodeAffinity.key "values" $.Values.affinityPreset.nodeAffinity.values "context" $) | nindent 4 }}
  {{- end }}
{{- end }}
{{- if any .priorityClassName $.Values.priorityClassName }}
priorityClassName: {{ .priorityClassName | default $.Values.priorityClassName }}
{{- end }}
{{- if any .dnsPolicy $.Values.dnsPolicy }}
dnsPolicy: {{ .dnsPolicy | default $.Values.dnsPolicy }}
{{- end }}
{{- with .nodeSelector }}
nodeSelector: {{- include "helpers.tpl" (dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{- with .tolerations }}
tolerations: {{- include "helpers.tpl" (dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{- with .securityContext }}
securityContext: {{- include "helpers.tpl" (dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{ if or $.Values.imagePullSecrets $.Values.image.pullSecrets .image.pullSecrets .imagePullSecrets }}
imagePullSecrets:
{{- range $sName, $v := $.Values.imagePullSecrets }}
- name: {{ $sName }}
{{- end }}
{{- with .image.pullSecrets }}{{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 0 }}{{- end }}
{{- with $.Values.image.pullSecrets }}{{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 0 }}{{- end }}
{{- end }}
{{- with .terminationGracePeriodSeconds }}
terminationGracePeriodSeconds: {{ . }}
{{- end }}
{{- include "helpers.obj.volumes" (dict "value" . "context" $) }}
{{- if .initContainers }}
initContainers:
  {{- include "helpers.containers" (dict "value" .initContainers "type" "init"  "name" $name "parent" . "context" $) | indent 2 }}
{{- end }}
containers:
  {{- /* Fix: null containers */ -}}
  {{- if not (hasKey . "containers") }}{{- $_ := set . "containers" (list (dict "name" $name)) }}{{- end }}
  {{- include "helpers.containers" (dict "value" .containers  "name" $name "parent" .  "context" $) | indent 2 }}
{{- end -}}
{{- end -}}