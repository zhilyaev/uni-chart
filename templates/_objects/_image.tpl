{{- define "helpers.image" -}}
{{- $ := .context -}}
{{- $image := .image -}}
{{- $registry := coalesce $image.registry $.Values.image.registry  -}}
{{- $repository := coalesce $image.repository $.Values.image.repository -}}
{{- $t := "" -}}
{{- $s := "" -}}
{{- if $image.digest -}}
    {{- $s = "@" -}}
    {{- $t = $image.digest -}}
{{- else if $image.tag -}}
    {{- $s = ":" -}}
    {{- $t = $image.tag -}}
{{- else if $.Values.image.digest -}}
    {{- $s = "@" -}}
    {{- $t = $.Values.image.digest -}}
{{- else if $.Values.image.tag -}}
    {{- $s = ":" -}}
    {{- $t = $.Values.image.tag -}}
{{- else -}}
{{ fail "i don't know wtf is going on with your images" }}
{{- end -}}
{{- if $registry }}
    {{- printf "%s/%s%s%s" $registry $repository $s $t -}}
{{- else -}}
    {{- printf "%s%s%s"  $repository $s $t -}}
{{- end -}}
{{- end -}}
