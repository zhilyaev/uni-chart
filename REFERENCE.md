# Global


| Name                     | Description                                                                                                                                                                                                       | Value                  |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------|
| `kubeVersion`            | Override Kubernetes version (1.25.0/1.18.0/etc)                                                                                                                                                                   | `null`                 |
| `nameOverride`           | String to override release name                                                                                                                                                                                   | `null`                 |
| `extra`                  | Map of extra objects (k8s manifests / Helm templates) to deploy with the release.                                                                                                                                 | `{}`                   |
| `notes`                  | extra NOTES, what do you want to say after deploy?                                                                                                                                                                | `"Successful deploy!"` |
| `annotations`            | Annotations to add to all deployed objects                                                                                                                                                                        | `{}`                   |
| `labels`                 | Labels to add to all deployed objects                                                                                                                                                                             | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| **CONFIGURATIONS**       | ==================================================================                                                                                                                                                |                        |
| `envs`                   | Map of env variables which will be deployed as ConfigMap with name `RELEASE_NAME-envs`                                                                                                                            | `{}`                   |
| `envsString`             | String with map of env variables which will be deployed as ConfigMap with name `RELEASE_NAME-envs`                                                                                                                | `""`                   |
| `secretEnvs`             | Map of env variables which will be deployed as Secret with name `RELEASE_NAME-envs`                                                                                                                               | `{}`                   |
| `secretEnvsString`       | String with map of env variables which will be deployed as Secret with name `RELEASE_NAME-envs`                                                                                                                   | `""`                   |
|                          |                                                                                                                                                                                                                   |                        |
| **WORKLOADS**            | ==================================================================                                                                                                                                                |                        |
| `podLabels`              | Labels to add to all deployed pods                                                                                                                                                                                | `{}`                   |
| `podAnnotations`         | Annotations to add to all deployed pods                                                                                                                                                                           | `{}`                   |
| `selectorLabels`         | Extra `selectorLabels` to add to deployments and services                                                                                                                                                         | `{}`                   |
| `priorityClassName`      | Default pods priorityClassName                                                                                                                                                                                    | `""`                   |
| `image`                  | Default [image](#image) for all deployed containers                                                                                                                                                               | `[]`                   |
| `affinityPreset`         | [Affinity Presets](#affinityPreset) for all workloads                                                                                                                                                             | `[]`                   |
| `affinity`               | Your own affinity by default (it'll override affinityPreset)                                                                                                                                                      | `{}`                   |
| `serviceAccountName`     | The name of the ServiceAccount to use by workload                                                                                                                                                                 | `""`                   |
| `hostAliases`            | Pods host aliases to use by all workloads                                                                                                                                                                         | `[]`                   |
| `dnsPolicy`              | DnsPolicy for all workloads                                                                                                                                                                                       | `[]`                   |
| `volumes`                | Array of [typed volume](#volume) to add to all deployed workloads                                                                                                                                                 | `[]`                   |
| `extraVolumes`           | Array of k8s volumes to add to all deployed workloads                                                                                                                                                             | `[]`                   |
| `volumeMounts`           | Array of k8s volumeMounts to add to all deployed workloads                                                                                                                                                        | `[]`                   |
| `diagnosticMode`         | [diagnosticMode](#diagnosticMode)                                                                                                                                                                                 | `[]`                   |
| `resourcesPreset`        | Set container resources according to one common preset (allowed values: none, nano, micro, small, medium, large, xlarge, 2xlarge). This is ignored if resources is set (resources is recommended for production). | `none`                 |
| `resources`              | The resources requests and limits for container                                                                                                                                                                   | `{}`                   ||                          |                                                                                                    |                        |
|                          |                                                                                                                                                                                                                   |                        |
| **GENERALS**             | ==================================================================                                                                                                                                                |                        |
| WORKLOADS                |                                                                                                                                                                                                                   |                        |
| `deploymentsGeneral`     | General options for all [deployments](#deployment)                                                                                                                                                                | `{}`                   |
| `statefulSetsGeneral`    | General options for all [statefulSets](#statefulSet)                                                                                                                                                              | `{}`                   |
| `daemonSetsGeneral`      | General options for all [daemonSets](#daemonSet)                                                                                                                                                                  | `{}`                   |
| `cronJobsGeneral`        | General options for all [cronJobs](#cronJob)                                                                                                                                                                      | `{}`                   |
| `jobsGeneral`            | General options for all [jobs](#job)                                                                                                                                                                              | `{}`                   |
| `hooksGeneral`           | General options for all [job helm hooks](#hook)                                                                                                                                                                   | `{}`                   |
| `serviceAccountGeneral`  | General options for all [serviceAccount](#serviceAccount)                                                                                                                                                         | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| POLICIES                 |                                                                                                                                                                                                                   |                        |
| `pdbsGeneral`            | General options for all [pdb](#pdb)                                                                                                                                                                               | `{}`                   |
| `pvcsGeneral`            | General options for all [pvc](#pvc)                                                                                                                                                                               | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| METRICS                  |                                                                                                                                                                                                                   |                        |
| `serviceMonitorsGeneral` | General options for all [serviceMonitor](#serviceMonitor)                                                                                                                                                         | `{}`                   |
| `alertsGeneral`          | General options for all [alert](#alert)                                                                                                                                                                           | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| TRAFFIC                  |                                                                                                                                                                                                                   |                        |
| `networkPoliciesGeneral` | General options for all [networkPolicies](#networkPolicies)                                                                                                                                                       | `{}`                   |
| `servicesGeneral`        | General options for all [services](#service)                                                                                                                                                                      | `{}`                   |
| `ingressesGeneral`       | General options for all [ingresses](#ingress)                                                                                                                                                                     | `{}`                   |
| `gatewaysGeneral`        | General options for all [gateway](#gateway)                                                                                                                                                                       | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| ARGO                     |                                                                                                                                                                                                                   |                        |
| `argocdAppsGeneral`      | General options for all [argocdApps](#argocdApps)                                                                                                                                                                 | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| **COLLECTIONS**          | ==================================================================                                                                                                                                                |                        |
| `namespaces`             | Map of [namespace](#namespace)                                                                                                                                                                                    | `{}`                   |
| `pvcs`                   | Map of the [pvc](#pvc) parameters, where key is a name                                                                                                                                                            | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| WORKLOADS                |                                                                                                                                                                                                                   |                        |
| `deployments`            | Map of the [deployment](#deployment) parameters, where key is a name                                                                                                                                              | `{}`                   |
| `statefulSets`           | Map of the [statefulSet](#statefulSet) parameters, where key is a name                                                                                                                                            | `{}`                   |
| `daemonSets`             | Map of the [daemonSet](#daemonSet) parameters, where key is a name                                                                                                                                                | `{}`                   |
| `cronJobs`               | Map of the [cronJobs](#cronJob) parameters, where key is a name                                                                                                                                                   | `{}`                   |
| `jobs`                   | Map of the [job](#job) parameters, where key is a name                                                                                                                                                            | `{}`                   |
| `hooks`                  | Map of the [hook](#hook) parameters, where key is a name                                                                                                                                                          | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| CONFIGURATION            |                                                                                                                                                                                                                   |                        |
| `imagePullSecrets`       | Map of registry secrets in `.dockerconfigjson` format                                                                                                                                                             | `{}`                   |
| `configMaps`             | Map of the [configMap](#configMap) parameters, where key is a name                                                                                                                                                | `{}`                   |
| `secrets`                | Map of the [secret](#secret) parameters, where key is a name                                                                                                                                                      | `{}`                   |
| `vaults`                 | Map of the [vault](#vault) parameters, where key is a name                                                                                                                                                        | `{}`                   |
| `awssm` (todo)           | Map of the [awssm](#awssm) parameters, where key is a name                                                                                                                                                        | `{}`                   |
| `awsps` (todo)           | Map of the [awsps](#awsps) parameters, where key is a name                                                                                                                                                        | `{}`                   |
| `serviceAccount`         | Map of the [serviceAccount](#serviceAccount) parameters, where key is a name                                                                                                                                      | `{}`                   |
| `vaultStores`            | Maps of [vault stores](#vaultStores)                                                                                                                                                                              | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| POLICIES                 |                                                                                                                                                                                                                   |                        |
| `pdbs`                   | Map of the [pdb](#pdb) parameters, where key is a name                                                                                                                                                            | `{}`                   |
| `limitRanges`            | Map of the [limitRange](#limitRange) parameters                                                                                                                                                                   | `{}`                   |
| `resourceQuotas`         | Map of the [resourceQuota](#resourceQuota) parameters                                                                                                                                                             | `{}`                   |
| `priorityClasses`        | Map of the [priorityClass](#priorityClasses) parameters, where key is a name                                                                                                                                      | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| AUTOSCALERS              |                                                                                                                                                                                                                   |                        |
| `hpas`                   | Map of the [hpa](#hpa) parameters, where key is a name                                                                                                                                                            | `{}`                   |
| `vpas`                   | TODO: Map of the [vpa](#vpa) parameters, where key is a name                                                                                                                                                      | `{}`                   |
| `kedas`                  | Map of the [keda](#keda) parameters, where key is a name                                                                                                                                                          | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| METRICS                  |                                                                                                                                                                                                                   |                        |
| `alerts`                 | Map of the [alert](#alert) parameters, where key is a name                                                                                                                                                        | `{}`                   |
| `serviceMonitors`        | Map of the [serviceMonitor](#serviceMonitor) parameters, where key is a name                                                                                                                                      | `{}`                   |
| `podMonitors`            | Map of the [podeMonitor](#podMonitor) parameters, where key is a name                                                                                                                                             | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| TRAFFIC                  |                                                                                                                                                                                                                   |                        |
| `networkPolicies`        | Map of the [networkPolicy](#networkPolicy) parameters, where key is a name                                                                                                                                        | `{}`                   |
| `services`               | Map of the [service](#service) parameters, where key is a name                                                                                                                                                    | `{}`                   |
| `ingresses`              | Map of the [ingress](#ingress) parameters, where key is a name                                                                                                                                                    | `{}`                   |
| `gateways`               | Map of the [gateway](#gateway) parameters, where key is a name                                                                                                                                                    | `{}`                   |
|                          |                                                                                                                                                                                                                   |                        |
| ARGO                     |                                                                                                                                                                                                                   |                        |
| `argocdApps`             | Map of the [argocdApps](#argocdApps) parameters, where key is a name                                                                                                                                              | `{}`                   |
| `argocdAppSets`          | Map of the [argocdAppSets](#argocdAppSets) parameters, where key is a name                                                                                                                                        | `{}`                   |

# Objects

## `image`

| Name          | Description                                                     | Value            |
|---------------|-----------------------------------------------------------------|------------------|
| `registry`    | Image registry that will be used by default                     | `"docker.io"`    |
| `repository`  | Required image repository repo that will be used by default     | `"nginx"`        |
| `tag`         | Image tag that will be used by default                          | `"latest"`       |
| `digest`      | Image digest that will be used by default (It'll override tag!) |                  |
| `pullPolicy`  | Image pull policy that will be used by default                  | `"IfNotPresent"` |
| `pullSecrets` | Array of existing pull secrets to add to all deployed workloads | `[]`             |

## `container`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#container-v1-core

| Name                | Description                                                                                                                                                                                                                                 | Value  |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|
| `name`              | The name of the container                                                                                                                                                                                                                   | `""`   |
| `image`             | [image](#image)                                                                                                                                                                                                                             | `{}`   |
| `securityContext`   | Security Context for container                                                                                                                                                                                                              | `{}`   |
| `command`           | Container command override (list or string)                                                                                                                                                                                                 | `[]`   |
| `args`              | Container arguments override                                                                                                                                                                                                                | `[]`   |
| `diagnosticMode`    | Set command for all container [diagnosticMode](#diagnosticMode)                                                                                                                                                                             | `{}`   |
| `env`               | Array of extra environment variables                                                                                                                                                                                                        | `[]`   |
| `envsFromConfigmap` | Map of ConfigMaps and envs from it                                                                                                                                                                                                          | `{}`   |
| `envsFromSecret`    | Map of Secrets and envs from it                                                                                                                                                                                                             | `{}`   |
| `envConfigmaps`     | Array of Configmaps names with extra envs                                                                                                                                                                                                   | `[]`   |
| `envSecrets`        | Array of Secrets names with extra envs                                                                                                                                                                                                      | `[]`   |
| `envFrom`           | Array of extra envFrom objects                                                                                                                                                                                                              | `[]`   |
| `ports`             | Array of ports to be exposed from container                                                                                                                                                                                                 | `[]`   |
| `lifecycle`         | Containers lifecycle hooks                                                                                                                                                                                                                  | `{}`   |
| `livenessProbe`     | Liveness probe object for container                                                                                                                                                                                                         | `{}`   |
| `readinessProbe`    | Readiness probe object for container                                                                                                                                                                                                        | `{}`   |
| `volumeMounts`      | Array of the [k8s Volume mounts](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#volumemount-v1-core)                                                                                                                  | `[]`   |

## `pod`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#pod-v1-core

| Name                            | Description                                                                                                                                                                                                                                 | Value  |
|---------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|
| `name`                          | The default name for containers                                                                                                                                                                                                             | `""`   |
| `image`                         | Default [image](#image)   for all deployed containers                                                                                                                                                                                       | `[]`   |
| `affinity`                      | Your own affinity                                                                                                                                                                                                                           | `""`   |
| `serviceAccountName`            | The name of the ServiceAccount to use                                                                                                                                                                                                       | `""`   |
| `hostAliases`                   | Pods host aliases                                                                                                                                                                                                                           | `[]`   |
| `priorityClassName`             | Pods priorityClassName                                                                                                                                                                                                                      | `""`   |
| `securityContext`               | Security Context for pods                                                                                                                                                                                                                   | `{}`   |
| `terminationGracePeriodSeconds` | terminationGracePeriodSeconds for pods                                                                                                                                                                                                      | `{}`   |
| `dnsPolicy`                     | DnsPolicy pods                                                                                                                                                                                                                              | `""`   |
| `nodeSelector`                  | Node labels for pods assignment                                                                                                                                                                                                             | `{}`   |
| `tolerations`                   | Tolerations for pods assignment                                                                                                                                                                                                             | `[]`   |
| `initContainers`                | Array of the initContainers ([container](#container) objects)                                                                                                                                                                               | `[]`   |
| `containers`                    | Array of the containers ([container](#container) objects)                                                                                                                                                                                   | `[]`   |
| `volumes`                       | Array of [typed volumes](#volume)                                                                                                                                                                                                           | `[]`   |
| `extraVolumes`                  | Array of k8s Volumes                                                                                                                                                                                                                        | `[]`   |
| `volumeMounts`                  | Array of k8s volumeMounts                                                                                                                                                                                                                   | `[]`   |
| `resourcesPreset`               | Set container resources according to one common preset (allowed values: none, nano, micro, small, medium, large, xlarge, 2xlarge). This is ignored if provisioning.resources is set (provisioning.resources is recommended for production). | `none` |

## `job`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#job-v1-batch

| Name                      | Description                                          | Value     |
|---------------------------|------------------------------------------------------|-----------|
| `enabled`                 | Enable/disable                                       | `"true"`  |
| `labels`                  | Extra labels                                         | `{}`      | 
| `annotations`             | Extra annotations                                    | `{}`      | 
| `podLabels`               | Labels to add to pods                                | `{}`      |
| `podAnnotations`          | Annotations to add to pods                           | `{}`      |
| `parallelism`             | How much pods of Job can be run in parallel          | `1`       | 
| `completions`             | How much pods should finish to finish Job            | `1`       | 
| `activeDeadlineSeconds`   | Duration of the Job                                  | `100`     | 
| `backoffLimit`            | Number of retries before considering a Job as failed | `6`       | 
| `ttlSecondsAfterFinished` | TTL for delete finished Job                          | `100`     |
| `restartPolicy`           | Restart Policy of the Job                            | `"Never"` |
| `alert`                   | TODO: [alert](#alert)                                | `{}`      |
| `...`                     | Available all [pod parameters](#pod)                 |           |

## `cronJob`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#cronjob-v1-batch

| Name                         | Description                          | Value     |
|------------------------------|--------------------------------------|-----------|
| `enabled`                    | Enable/disable                       | `true`    |
| `labels`                     | Extra labels                         | `{}`      | 
| `annotations`                | Extra annotations                    | `{}`      | 
| `timeZone`                   | Cronjob timeZone                     | `""`      |
| `concurrencyPolicy`          | Cronjob concurrencyPolicy            | `"Allow"` |
| `startingDeadlineSeconds`    | Cronjob startingDeadlineSeconds      | `""`      |
| `successfulJobsHistoryLimit` | Cronjob successfulJobsHistoryLimit   | `""`      |
| `failedJobsHistoryLimit`     | Cronjob failedJobsHistoryLimit       | `""`      |
| `...`                        | Available all [job parameters](#job) |           |

## `daemonSet`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#daemonset-v1-apps


| Name              | Description                          | Value  |
|-------------------|--------------------------------------|--------|
| `enabled`         | Enable/disable                       | `true` |
| `labels`          | Extra labels                         | `{}`   | 
| `annotations`     | Extra annotations                    | `{}`   |
| `podLabels`       | Labels to add to pods                | `{}`   |
| `podAnnotations`  | Annotations to add to pods           | `{}`   |
| `selectorLabels`  | Extra `selectorLabels`               | `{}`   |
| `strategy`        | strategy                             | `{}`   |
| `minReadySeconds` | minReadySeconds                      |        |
| `...`             | Available all [pod parameters](#pod) |        |


## `deployment`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#deploymentspec-v1-apps

| Name                      | Description                            | Value  |
|---------------------------|----------------------------------------|--------|
| `enabled`                 | Enable/disable                         | `true` |
| `labels`                  | Extra labels                           | `{}`   | 
| `annotations`             | Extra annotations                      | `{}`   |
| `podLabels`               | Labels to add to pods                  | `{}`   |
| `podAnnotations`          | Annotations to add to pods             | `{}`   |
| `selectorLabels`          | Extra `selectorLabels`                 | `{}`   |
| `replicas`                | Replica count  (don't use it with hpa) | `1`    |
| `strategy`                | strategy                               | `{}`   |
| `minReadySeconds`         | minReadySeconds                        |        |
| `progressDeadlineSeconds` | progressDeadlineSeconds                |        |
| `...`                     | Available all [pod parameters](#pod)   |        |

## `statefulSet`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#statefulset-v1-apps


| Name                  | Description                           | Value  |
|-----------------------|---------------------------------------|--------|
| `enabled`             | Enable/disable                        | `true` |
| `labels`              | Extra labels                          | `{}`   | 
| `annotations`         | Extra annotations                     | `{}`   |
| `podLabels`           | Labels to add to pods                 | `{}`   |
| `podAnnotations`      | Annotations to add to pods            | `{}`   |
| `selectorLabels`      | Extra `selectorLabels`                | `{}`   |
| `replicas`            | Replica count (don't use it with hpa) | `1`    |
| `strategy`            | strategy                              | `{}`   |
| `minReadySeconds`     | minReadySeconds                       |        |
| `podManagementPolicy` | podManagementPolicy                   | `""`   |
| `serviceName`         | serviceName                           | `""`   |
| `...`                 | Available all [pod parameters](#pod)  |        |

## `hook`

| Name           | Description                          | Value                       |
|----------------|--------------------------------------|-----------------------------|
| `enabled`      | Enable/disable                       | `true`                      |
| `labels`       | Extra labels                         | `{}`                        | 
| `annotations`  | Extra annotations                    | `{}`                        | 
| `kind`         | Kind of the Helm Hook                | `"pre-install,pre-upgrade"` | 
| `weight`       | Weight of the Helm Hook              | `"5"`                       | 
| `deletePolicy` | Delete Policy of the Helm Hook       | `"before-hook-creation"`    | 
| `...`          | Available all [job parameters](#job) |                             |

## `affinityPreset`

| Name                  | Description                                                                                                             | Value                           |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------|---------------------------------|
| `enabled`             | Enable/disable affinity preset                                                                                          | `false`                         |
| `podAffinityType`     | Pod affinity preset. Ignored if workload `affinity` is set. Allowed values: soft, hard, nil (nil means disabling)       | `"soft"`                        |
| `podAntiAffinityType` | Pod anti-affinity preset. Ignored if workload `affinity` is set. Allowed values: soft, hard, nil (nil means disabling)  | `"soft"`                        |
| `nodeAffinity.type`   | Node affinity preset type. Ignored if workload `affinity` is set. Allowed values: soft, hard, nil (nil means disabling) | `{}`                            |
| `nodeAffinity.key`    | Node label key to match. Ignored if workload `affinity` is set                                                          | `"topology.kubernetes.io/zone"` |
| `nodeAffinity.values` | Node label values to match. Ignored if workload `affinity` is set. Example: `values: [az1, az2]`                        | `[]`                            |

## `diagnosticMode`

| Name      | Description                                                                             | Value          |
|-----------|-----------------------------------------------------------------------------------------|----------------|
| `enabled` | Enable diagnostic mode (all probes will be disabled and the command will be overridden) | `false`        |
| `command` | Command to override all containers in the deployment                                    | `["sleep"]`    |
| `args`    | Args to override all containers in the deployment                                       | `["infinity"]` |

----------------------------------------------------------------------------------


## `configMap`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#configmap-v1-core

| Name          | Description                 | Value  |
|---------------|-----------------------------|--------|
| `enabled`     | Enable/disable              | `true` |
| `labels`      | Extra ConfigMap labels      | `{}`   | 
| `annotations` | Extra ConfigMap annotations | `{}`   | 
| `data`        | Map of ConfigMap data       | `{}`   |

## `secret`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#secret-v1-core

Secret `data` object is a map where value can be a string, json or base64 encoded string with prefix `b64:`.

| Name          | Description              | Value      |
|---------------|--------------------------|------------|
| `enabled`     | Enable/disable           | `true`     |
| `type`        | Secret type              | `"Opaque"` | 
| `labels`      | Extra secret labels      | `{}`       | 
| `annotations` | Extra secret annotations | `{}`       | 
| `data`        | Map of Secret data       | `{}`       |

## `vault`

First, you need to install [External Secret Operator](https://github.com/external-secrets/external-secrets).

Works only with kv engine. 
SecretStore should be defined already.

| Name              | Description                                                                         | Value  |
|-------------------|-------------------------------------------------------------------------------------|--------|
| `enabled`         | Enable/disable                                                                      | `true` |
| `annotations`     | Extra annotations                                                                   |        |
| `labels`          | Extra labels                                                                        |        |
| `store`           | Required [store name](https://external-secrets.io/latest/provider/hashicorp-vault/) |        |
| `path`            | Required path to vault raw data                                                     |        |
| `revision`        | KV2 revision of secret                                                              |        |
| `refreshInterval` | interval for updating vault value                                                   | `60s`  |

## `awssm`

Coming soon.

AWS Secrets Manager

First, you need to install [External Secret Operator](https://github.com/external-secrets/external-secrets).

## `awsps`

Coming soon.

AWS Parameters Store

First, you need to install [External Secret Operator](https://github.com/external-secrets/external-secrets).


----------------------------------------------------------------------------------



## `keda` 

Specs: https://keda.sh/docs/2.11/concepts/scaling-deployments/#scaledobject-spec

| Name              | Description                              | Value  |
|-------------------|------------------------------------------|--------|
| `enabled`         | Enable/disable                           | `true` |
| `labels`          | Extra labels                             | `{}`   |
| `annotations`     | Extra annotations                        | `{}`   |
| `minReplicas`     | Minimum replicas for HPA                 | `2`    |
| `maxReplicas`     | Maximum replicas for HPA                 | `3`    |
| `scaleTargetRef`  | [scaleTargetRef](#scaletargetref) object |        |
| `pollingInterval` | Pool timeout                             | `1h`   |
| `cooldownPeriod`  | Cooldown period                          | `300`  |
| `triggers`        | Keda scalers                             |        |

## `hpa`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#horizontalpodautoscalerspec-v1-autoscaling

| Name             | Description                              | Value  |
|------------------|------------------------------------------|--------|
| `enabled`        | Enable/disable                           | `true` |
| `labels`         | Extra labels                             | `{}`   |
| `annotations`    | Extra annotations                        | `{}`   |
| `minReplicas`    | minimum replicas for HPA                 | `2`    |
| `maxReplicas`    | maximum replicas for HPA                 | `3`    |
| `scaleTargetRef` | [scaleTargetRef](#scaletargetref) object |        |
| `targetCPU`      | target CPU utilization percentage        | `""`   |
| `targetMemory`   | target memory utilization percentage     | `""`   |
| `metrics`        | list of custom metrics                   | `[]`   |

## `vpa`

Specs: https://github.com/kubernetes/autoscaler/blob/master/vertical-pod-autoscaler/pkg/apis/autoscaling.k8s.io/v1/types.go

| Name             | Description                              | Value  |
|------------------|------------------------------------------|--------|
| `enabled`        | Enable/disable                           | `true` |
| `labels`         | Extra labels                             | `{}`   |
| `annotations`    | Extra annotations                        | `{}`   |
| `scaleTargetRef` | [scaleTargetRef](#scaletargetref) object |        |


## `scaleTargetRef`

Using with autoscalers

| Name       | Description                      | Value        |
|------------|----------------------------------|--------------|
| apiVersion | apiVersion for target HPA object | "apps/v1"    |
| kind       | kind for target HPA object       | "Deployment" |
| name       | name of target object            | $name        |

----------------------------------------------------------------------------------



## `serviceMonitor`

Specs: https://github.com/prometheus-operator/prometheus-operator/blob/main/Documentation/api.md#servicemonitorspec

| Name             | Description                              | Value  |
|------------------|------------------------------------------|--------|
| `enabled`        | Enable/disable                           | `true` |
| `labels`         | Extra labels                             | `{}`   |
| `annotations`    | Extra annotations                        | `{}`   |
| `endpoints`      | Array of ServiceMonitor endpoints        | `[]`   |
| `selectorLabels` | Extra selectorLabels for select workload | `{}`   |

## `alert`

aka PrometheusRule

Specs: https://github.com/prometheus-operator/prometheus-operator/blob/main/Documentation/api.md#prometheusrulespec

| Name                          | Description                               | Value   |
|-------------------------------|-------------------------------------------|---------|
| `labels`                      | Extra labels                              | `{}`    |
| `annotations`                 | Extra annotations                         | `{}`    |
| `groups`                      | array of [group](#group) prometheus rules | `[]`    |

### `group`

| Name                          | Description            | Value   |
|-------------------------------|------------------------|---------|
| `interval`                    | interval               |         |
| `limit`                       | limit                  |         |
| `rules`                       | array of [rule](#rule) |         |

#### `rule`

| Name       | Description      | Value   |
|------------|------------------|---------|
| `alert`    | alert name       | $name   |
| `for`      | for              |         |
| `msg`      | alert's message  |         |
| `severity` | alert's severity | `"low"` |



## `pdb`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#poddisruptionbudgetspec-v1-policy

| Name             | Description                                     | Value  |
|------------------|-------------------------------------------------|--------|
| `enabled`        | Enable/disable                                  | `true` |
| `labels`         | Extra labels                                    | `{}`   |
| `annotations`    | Extra annotations                               | `{}`   | 
| `minAvailable`   | Pods that must be available after the eviction  | `""`   |
| `maxUnavailable` | Pods that can be unavailable after the eviction | `""`   |
| `selectorLabels` | Extra selectorLabels for select workload        | `{}`   |

## `pvc`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#persistentvolumeclaimspec-v1-core

| Name               | Description                                          | Value          |
|--------------------|------------------------------------------------------|----------------|
| `enabled`          | Enable/disable                                       | `true`         |
| `labels`           | Extra Persistent Volume Claim labels                 | `{}`           | 
| `annotations`      | Extra Persistent Volume Claim annotations            | `{}`           | 
| `accessModes`      | Persistent Volume access modes                       | `[]`           | 
| `volumeMode`       | Persistent Volume volume mode                        | `"Filesystem"` | 
| `storageClassName` | Persistent Volume Storage Class name                 | `""`           | 
| `selector`         | Labels selector to further filter the set of volumes | `{}`           | 

## `volume`

| Name           | Description                                                | Value |
|----------------|------------------------------------------------------------|-------|
| `type`         | Resource type of the volume ("configMap","secret","pvc")   | `""`  |
| `name`         | Name of the resource that will be used with release prefix | `""`  |
| `defaultMode`  | defaultMode                                                | `""`  |
| `originalName` | Original name of the resource                              | `""`  |
| `items`        | Array of volume items                                      | `[]`  |


## `serviceAccount`

Combined with RBAC objects

| Name                | Description                                      | Value  |
|---------------------|--------------------------------------------------|--------|
| `enabled`           | Enable/disable                                   | `true` |
| `labels`            | Extra ServiceAccount, role and binding labels    | `{}`   | 
| `annotations`       | Extra ServiceAccount annotations                 | `{}`   | 
| `role`              | Map of role parameters to create and bind        | `{}`   | 
| `role.name`         | Name of role to create/bind                      | `{}`   | 
| `role.rules`        | List of rules for role                           | `{}`   | 
| `clusterRole`       | Map of clusterRole parameters to create and bind | `{}`   | 
| `clusterRole.name`  | Name of clusterRole to create/bind               | `{}`   | 
| `clusterRole.rules` | List of rules for clusterRole                    | `{}`   | 

`role/clusterRole` is a map of parameters of role/clusterRole. If *rules* are not set then only binding to existing role/clusterRole will be created. If *rules* are set then corresponding role/clusterrole will be created and bound to a service account. Service account can be created without corresponding roles and bindings.



## `service`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#servicespec-v1-core

| Name                       | Description                                                       | Value         |
|----------------------------|-------------------------------------------------------------------|---------------|
| `enabled`                  | Enable/disable                                                    | `true`        |
| `labels`                   | Extra labels for service                                          | `{}`          |
| `annotations`              | Extra annotations for service                                     | `{}`          |
| `type`                     | Type of a service                                                 | `"ClusterIP"` |
| `loadBalancerIP`           | IP of a service with LoadBalancer type                            | `""`          |
| `loadBalancerSourceRanges` | Service Load Balancer sources                                     | `[]`          |
| `externalTrafficPolicy`    | Service external traffic policy                                   | `"Cluster"`   |
| `healthCheckNodePort`      | Health check node port (numeric port number) for the service      | ``            |
| `externalIPs`              | Array of the external IPs that route to one or more cluster nodes | `[]`          | 
| `ports`                    | Array of the service [port](#port) objects                        | `[]`          |
| `selectorLabels`           | Extra selectorLabels for select workload                          | `{}`          |
| `clusterIP`                | Service clusterIP parameter value (set static IP)                 | `""`          |


### `port`

| Name         | Description                  | Value   |
|--------------|------------------------------|---------|
| `name`       | Name of the service port     | $name   |
| `protocol`   | Protocol of the service port | `"TCP"` | 
| `port`       | Service port number          | $name   |
| `targetPort` | Service target port number   | $port   |
| `nodePort`   | Service NodePort number      |         |

## `ingress`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#ingressspec-v1-networking-k8s-io

| Name                     | Description                                                                                             | Value              |
|--------------------------|---------------------------------------------------------------------------------------------------------|--------------------|
| `name`                   | Custom name of the ingress, if empty ingress hostname will be used                                      | `""`               |
| `labels`                 | Extra labels for ingress                                                                                | `{}`               |
| `annotations`            | Extra annotations for ingress                                                                           | `{}`               |
| `certManager.issuerName` | CertManager issuer name for ingress TLS                                                                 | `""`               |
| `certManager.issuerType` | CertManager issuer type for ingress TLS                                                                 | `"cluster-issuer"` |
| `certManager.tlsName`    | The name of secret to use for CertManager generated TLS                                                 | `""`               |
| `ingressClassName`       | The name of ingressClass to use                                                                         | `""`               |
| `hosts`                  | Array of the ingress [hosts](#hosts) objects                                                            | `[]`               |
| `tls`                    | Array of the ingress [tls params](https://kubernetes.io/docs/concepts/services-networking/ingress/#tls) | `[]`               |


### `hosts`

| Name       | Description                                                          | Value |
|------------|----------------------------------------------------------------------|-------|
| `hostname` | Hostname to serve by ingress, if empty ingress hostname will be used | `""`  |
| `paths`    | Array of the ingress [paths](#path) objects                          | `[]`  |

### `path`

| Name          | Description                                                                                                             | Value      |
|---------------|-------------------------------------------------------------------------------------------------------------------------|------------|
| `path`        | URL path                                                                                                                | `"/"`      |
| `pathType`    | Type of the ingress path [see for details](https://kubernetes.io/docs/concepts/services-networking/ingress/#path-types) | `"Prefix"` |
| `serviceName` | Name of the service to route requests                                                                                   | `""`       |
| `servicePort` | Name or number of the service port to route requests                                                                    |            |


## `namespace`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#namespace-v1-core

| Name          | Description                     | Value |
|---------------|---------------------------------|-------|
| `name`        | Custom name of the namespace    | `""`  |
| `labels`      | Extra labels for namespace      | `{}`  |
| `annotations` | Extra annotations for namespace | `{}`  |


## `limitRange`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#limitrangespec-v1-core

| Name          | Description       | Value |
|---------------|-------------------|-------|
| `name`        | Custom name       | `""`  |
| `labels`      | Extra labels      | `{}`  |
| `annotations` | Extra annotations | `{}`  |
| `limits`      | limit             | `{}`  |


## `resourceQuota`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#resourcequotaspec-v1-core

| Name          | Description         | Value |
|---------------|---------------------|-------|
| `name`        | Custom name         | `""`  |
| `labels`      | Extra labels        | `{}`  |
| `annotations` | Extra annotations   | `{}`  |
| `hard`        | spec of hard quotas | `{}`  |


## `vaultStores`

Specs: https://external-secrets.io/latest/api/secretstore/

| Name                 | Description             | Value                               |
|----------------------|-------------------------|-------------------------------------|
| `name`               | Custom name             | `""`                                |
| `labels`             | Extra labels            | `{}`                                |
| `annotations`        | Extra annotations       | `{}`                                |
| `server`             | url for vault server    | `""`                                |
| `path`               | vault mountPath role    | `""`                                |
| `serviceAccountName` | serviceAccount for role | `{{ $.Values.serviceAccountName }}` |
| `refreshInterval`    | refresh interval        | `60`                                |

## `argocdApps`

> useful app for apps


| Name          | Description             | Value  |
|---------------|-------------------------|--------|
| `name`        | Custom name             | `""`   |
| `labels`      | Extra labels            | `{}`   |
| `annotations` | Extra annotations       | `{}`   |
| `finalizers`  | Extra finalizers        | `{}`   |
| `project`     | project name            | `nill` |
| `destination` | destination k8s cluster | `{}`   |
| `info`        | notification settings   | `{}`   |
| `syncPolicy`  | syncPolicy pruning      | `{}`   |
| `sources`     | can be item or slice    | `{}`   |

## `argocdAppSets`

> useful app for apps


| Name          | Description             | Value  |
|---------------|-------------------------|--------|
| `name`        | Custom name             | `""`   |
| `labels`      | Extra labels            | `{}`   |
| `annotations` | Extra annotations       | `{}`   |
| `finalizers`  | Extra finalizers        | `{}`   |
| `project`     | project name            | `nill` |
| `destination` | destination k8s cluster | `{}`   |
| `info`        | notification settings   | `{}`   |
| `syncPolicy`  | syncPolicy pruning      | `{}`   |
| `sources`     | can be item or slice    | `{}`   |

## `priorityClass`

Specs: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.29/#priorityclass-v1-scheduling-k8s-io

| Name          | Description                                              | Value   |
|---------------|----------------------------------------------------------|---------|
| `name`        | Custom name                                              | `""`    |
| `labels`      | Extra labels                                             | `{}`    |
| `annotations` | Extra annotations                                        | `{}`    |
| `finalizers`  | Extra finalizers                                         | `{}`    |
| `value`       | Int value prior                                          | `0`     |
| `preemption`  | set policy                                               | `{}`    |
| `default`  | set as default (only 1 default is available per cluster) | `false` |

