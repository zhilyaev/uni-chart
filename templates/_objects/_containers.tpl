{{- define "helpers.containers" -}}
{{- $ := .context -}}
{{- $name := .name -}}
{{- $type := .type -}}
{{- $parent := deepCopy .parent -}}
{{- /* fix: Hating helm because it can't delete non string value. */ -}}
{{ $_ := set $parent "initContainers" "" }}
{{ $_ := unset $parent "initContainers" }}
{{ $_ := set $parent "containers" "" }}
{{ $_ := unset $parent "containers" }}
{{- range .value }}
- {{- $merged := mergeOverwrite dict $parent . -}}
  {{- with $merged -}}
  {{- if .name }}
  name: {{ include "helpers.tpl" ( dict "value" .name "context" $) }}
  {{- else if eq $type "init" }}
  name: {{ printf "%s-init-%s" $name (lower (randAlphaNum 5)) }}
  {{- else }}
  name: {{ printf "%s-%s" $name (lower (randAlphaNum 5)) }}
  {{- end }}
  {{- include "helpers.workloads.envs" (dict "value" . "context" $) | indent 2 }}
  {{- include "helpers.workloads.envsFrom" (dict "value" . "context" $) | indent 2 }}
  imagePullPolicy: {{ coalesce .image.pullPolicy  $.Values.image.pullPolicy  "IfNotPresent" }}
  image: {{ include "helpers.image" (dict "image" .image "context" $) }}
  {{- with .securityContext }}
  securityContext: {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 4 }}
  {{- end }}
  {{- if $.Values.diagnosticMode.enabled }}
  args: {{- include "helpers.tpl" ( dict "value" $.Values.diagnosticMode.args "context" $) | nindent 2 }}
  {{- else if .args }}
  args: {{- include "helpers.tpl" ( dict "value" .args "context" $) | nindent 2 }}
  {{- end }}
  {{- if $.Values.diagnosticMode.enabled }}
  command: {{- include "helpers.tpl" ( dict "value" $.Values.diagnosticMode.command "context" $) | nindent 2 }}
  {{- else if .command }}
  {{- if typeIs "string" .command }}
  command: {{ printf "[\"%s\"]" (join ("\", \"") (without (splitList " " .command) "" )) }}
  {{- else }}
  command: {{- include "helpers.tpl" ( dict "value" .command "context" $) | nindent 2 }}
  {{- end }}
  {{- end }}

  {{- if and (not $.Values.diagnosticMode.enabled) (ne $type "init") }}
  {{- with .startupProbe }}
  startupProbe: {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 4 }}
  {{- end }}
  {{- with .livenessProbe }}
  livenessProbe: {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 4 }}
  {{- end }}
  {{- with .readinessProbe }}
  readinessProbe: {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 4 }}
  {{- end }}
  {{- with .lifecycle }}
  lifecycle: {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 4 }}
  {{- end }}
  {{- end }}

  {{- with .ports }}
  ports: {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 2 }}
  {{- end }}
  {{- with .resources }}
  resources: {{- include "helpers.tpl" ( dict "value" . "context" $) | nindent 4 }}
  {{- end }}
  {{- include "helpers.obj.volumeMounts" (dict "value" . "context" $) | nindent 2 }}
{{- end }}
{{- end }}
{{- end }}
