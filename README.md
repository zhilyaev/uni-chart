<div>
  <img align="left" alt="uni-chart logo" src="https://github.com/zhilyaev/uni-chart/raw/main/logo_1024.png" style="max-height:100%;" height="300px" /></a>
</div>


# Universal helm chart

The Universal Helm Chart tries to encompass a broader scope, offering a more flexible and adaptable solution for deploying applications on Kubernetes. Users can customize these charts by providing values for various parameters, enabling them to deploy applications with different configurations while using the same underlying Helm Chart.

### [ >> documentations << ](REFERENCE.md)

<br clear="left">

---



## Features

* Flexible way to deploy your applications.
* Supported any Ingress controllers (Ingress Nginx, Traefik).
* Easy way to template any custom resource with extra deploy feature.
* Supported Kubernetes versions and OpenShift versions.
* Supported Helm versions (2/3)
* Generals options for each collection.

## Who can use this tool

* Development
* DevOps engineers
* SRE engineers

Who deploys into Kubernetes/OpenShift on a regular basis.

# Quickstart

## Install

### Kubernetes/OpenShift

To install the chart with the release name `my-release`:

```bash
$ helm install my-release oci://ghcr.io/zhilyaev/uni -f my-values.yaml
```

