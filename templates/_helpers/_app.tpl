{{- define "helpers.app.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "helpers.app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "helpers.app.fullname" -}}
{{- $ := .context -}}
{{- $appName := (include "helpers.app.name" $) -}}
{{- with .name -}}
{{- if contains . $appName -}}
{{ $appName | trunc 63 | trimSuffix "-" }}
{{- else -}}
{{- printf "%s-%s" $appName . | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- else -}}
{{- $appName -}}
{{- end -}}
{{- end -}}

{{/*
Recomendation labels
*/}}
{{- define "helpers.app.labels" -}}
{{ include "helpers.app.selectorLabels" . }}
helm.sh/chart: {{ include "helpers.app.chart" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ default .Chart.AppVersion $.Values.image.tag }}
{{- end }}


{{/*
Recomendation selector labels
*/}}
{{- define "helpers.app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "helpers.app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


{{/*
Object own selector labels
*/}}
{{- define "helpers.obj.selectorLabels" -}}
{{- $ := .context -}}
{{ include "helpers.app.selectorLabels" $ }}
{{- with $.Values.selectorLabels }}
{{ include "helpers.tpl" (dict "value" . "context" $)}}
{{- end }}
{{- with .value.selectorLabels }}
{{ include "helpers.tpl" (dict "value" . "context" $)}}
{{- end }}
{{- end }}


{{/*
Object own labels
*/}}
{{- define "helpers.obj.labels" -}}
{{- $ := .context -}}
{{ include "helpers.app.labels" $ }}
{{- with $.Values.labels }}
{{ include "helpers.tpl" (dict "value" . "context" $)}}
{{- end }}
{{- with .value.labels }}
{{ include "helpers.tpl" (dict "value" . "context" $)}}
{{- end }}
{{- end }}


