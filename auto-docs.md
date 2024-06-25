# uni

![Version: 0.0.0](https://img.shields.io/badge/Version-0.0.0-informational?style=flat-square)

universal helm chart

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Dmitrii Zhiliaev |  |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | It overrides affinityPreset |
| affinityPreset | object | `{"enabled":false,"nodeAffinity":{"key":"topology.kubernetes.io/zone","type":"soft","values":[]},"podAffinityType":"soft","podAntiAffinityType":"soft"}` | Predefined Affinity block |
| affinityPreset.enabled | bool | `false` | disable presets by default |
| affinityPreset.nodeAffinity | object | `{"key":"topology.kubernetes.io/zone","type":"soft","values":[]}` | Node affinity preset Ref: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#node-affinity |
| affinityPreset.nodeAffinity.key | string | `"topology.kubernetes.io/zone"` | Node label key to match E.g. key: "kubernetes.io/e2e-az-name" |
| affinityPreset.nodeAffinity.type | string | `"soft"` | Node affinity type Allowed values: soft, hard, nil (nil means disabling) |
| affinityPreset.nodeAffinity.values | list | `[]` | Node label values to match E.g. values:   - e2e-az1   - e2e-az2 |
| affinityPreset.podAffinityType | string | `"soft"` | Pod affinity preset ref: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity Allowed values: soft, hard, nil (nil means disabling) |
| affinityPreset.podAntiAffinityType | string | `"soft"` | Pod anti-affinity preset Ref: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity Allowed values: soft, hard, nil (nil means disabling) |
| alerts | object | `{}` | Collection of alert, It's prometheus rule. |
| alertsGeneral | object | `{}` | General for alert |
| annotations | object | `{}` | extra annotations for all resources (for podSpecTemplate use podAnnotations instead) |
| argocdAppSets | object | `{}` | Collection of ArgoCD application sets |
| argocdApps | object | `{}` | Collection of ArgoCD application |
| argocdAppsGeneral | object | `{}` | General for argocd app |
| awsps | object | `{}` | Collection of AWS secrets |
| awssm | object | `{}` | Collection of AWS Secret Manager |
| configMaps | object | `{"envs":{"enabled":true}}` | Collection of ConfigMaps |
| configMaps.envs | object | `{"enabled":true}` | envs |
| cronJobs | object | `{}` | Collection of crons |
| cronJobsGeneral | object | `{"envConfigmaps":["envs"]}` | General for cron |
| daemonSets | object | `{}` | Collection of  daemonSets |
| daemonSetsGeneral | object | `{"envConfigmaps":["envs"]}` | General for daemonSet |
| deployments | object | `{}` | Collection of deployment |
| deploymentsGeneral | object | `{"envConfigmaps":["envs"]}` | General for deployment |
| diagnosticMode | object | `{"args":["infinity"],"command":["sleep"],"enabled":false}` | diagnosticMode works with all defined containers |
| dnsPolicy | list | `[]` | Change dns policy inside pods |
| envs | object | `{}` | Environment variables for all workloads (recommended way) |
| envsString | string | `""` | use string as file for environment variables |
| extra | object | `{}` | Any objects |
| extraVolumes | list | `[]` | Clean yaml spec for volumes |
| gateways | object | `{}` | Collection of gateway |
| gatewaysGeneral | object | `{}` | General for gateway |
| hooks | object | `{}` | Collection of helm hooks jobs |
| hooksGeneral | object | `{"envConfigmaps":["envs"]}` | General for helm-hook job |
| hostAliases | list | `[]` | Change host aliases inside pods |
| hpas | object | `{}` | Collection of hpa, can match with workloads with the same name |
| image | object | `{"pullPolicy":"IfNotPresent","pullSecrets":[],"registry":"docker.io","repository":"nginx","tag":"latest"}` | Default image for all workloads |
| image.pullPolicy | string | `"IfNotPresent"` | Default pullPolicy |
| image.pullSecrets | list | `[]` | Default pullSecrets |
| image.registry | string | `"docker.io"` | Default registry |
| image.repository | string | `"nginx"` | Default repository |
| image.tag | string | `"latest"` | Default tag |
| imagePullSecrets | object | `{}` | This Collection will create secrets |
| ingresses | object | `{}` | Collection of ingress |
| ingressesGeneral | object | `{}` | General for ingressesGeneral |
| jobs | object | `{}` | Collection of jobs |
| jobsGeneral | object | `{"envConfigmaps":["envs"]}` | General for jobs |
| kedas | object | `{}` | Collection of keda, can match with workloads with the same name |
| labels | object | `{}` | extra labels for all resources (for podSpecTemplate use podLabels instead) |
| limitRanges | object | `{}` | Collection of  LimitRanges |
| networkPolicies | object | `{}` | Collection of networkPolicy, It's Firewall rules |
| networkPoliciesGeneral | object | `{}` | General for networkPolicy |
| notes | string | `"Successful deploy!"` | Notes after successful deploy |
| pdbs | object | `{}` | Collection of pdb, can match with workloads with the same name |
| pdbsGeneral | object | `{}` | General for pdb |
| podAnnotations | object | `{}` | Extra pod annotations |
| podLabels | object | `{}` | Extra pod labels |
| podMonitors | object | `{}` | Collection of podMonitor, It's prometheus pod monitor. |
| podMonitorsGeneral | object | `{}` | General for podMonitors |
| priorityClassName | string | `""` | Default priorityClassName |
| priorityClasses | object | `{}` | Collection of priorityClasses |
| pvcs | object | `{}` | All PVSs will be added to `volumes` block in each workload excluding hooks |
| pvcsGeneral | object | `{}` | General for pvc |
| resourceQuotas | object | `{}` | Collection of resourceQuotas |
| resourcesPreset | string | `"none"` |  |
| secretEnvs | object | `{}` | environment variables as the secret |
| secretEnvsString | string | `""` | use string as file for secret environment variables |
| secrets | object | `{}` | Collection of Secrets |
| selectorLabels | object | `{}` | Extra selectors labels |
| serviceAccount | object | `{}` | Collection of serviceAccounts |
| serviceAccountGeneral | object | `{}` | General for serviceAccountGeneral |
| serviceAccountName | string | `""` | Default serviceAccount for all workloads |
| serviceMonitors | object | `{}` | Collection of serviceMonitor, It's prometheus service monitor. |
| serviceMonitorsGeneral | object | `{}` | General for serviceMonitor |
| services | object | `{}` | Collection of service |
| servicesGeneral | object | `{}` | General for service |
| statefulSets | object | `{}` | Collection of statefulSets |
| statefulSetsGeneral | object | `{"envConfigmaps":["envs"]}` | General for statefulSet |
| vaultStores | object | `{}` | Collection of Vault secret stores |
| vaults | object | `{}` | Collection of vaults envs can conflict with secrets collection |
| volumeMounts | list | `[]` | Typed volume mounts |
| volumes | list | `[]` | volumes for all workloads |
| vpas | object | `{}` | Collection of vpa, can match with workloads with the same name |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
