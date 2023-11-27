{{- define "helpers.workloads.envs" -}}
{{- $ctx := .context -}}
{{- with .value -}}
{{- if any .envsFromConfigmap .envsFromSecret .env }}
env:
{{ with .envsFromConfigmap }}{{- include "helpers.configmaps.includeEnv" ( dict "value" . "context" $ctx) }}{{- end }}
{{ with .envsFromSecret }}{{- include "helpers.secrets.includeEnv" ( dict "value" . "context" $ctx) }}{{- end }}
{{ with .env }}{{- include "helpers.tpl" ( dict "value" . "context" $ctx) }}{{- end }}
{{- end }}
{{- end }}
{{- end }}

{{- define "helpers.workloads.envsFrom" -}}
{{- $ := .context -}}
{{- with .value -}}
{{- if any $.Values.envs $.Values.secretEnvs .envConfigmaps .envSecrets .envFrom }}
envFrom:
{{- with .envConfigmaps }}
  {{- include "helpers.configmaps.includeEnvConfigmap" ( dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{- with .envSecrets }}
  {{- include "helpers.secrets.includeEnvSecret" ( dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{- with .envFrom }}
  {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{- end }}
{{- end }}
{{- end }}


{{- define "helpers.checksum" -}}
{{ . | toString | sha256sum }}
{{- end -}}


{{- define "helpers.workloads.checksum" -}}
checksum/configMap.envs: {{ include "helpers.checksum" (printf "%s%s" .Values.envs .Values.envsString) }}
checksum/secret.envs: {{ include "helpers.checksum" (printf "%s%s" .Values.secretEnvs .Values.secretEnvsString) }}
{{ with .Values.vaults.envs }}checksum/vaults.envs: {{ include "helpers.checksum" (printf "%s%s" .) }}{{- end }}
{{- end }}
