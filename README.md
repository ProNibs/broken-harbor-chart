# Overview

How to quickly re-produce [issue 1240](https://github.com/goharbor/harbor-helm/issues/1240) in the goharbor harbor helm chart.

I used the Docker Desktop extensions to create a Tanzu Community Edition Cluster, but a KinD cluster should work as well.

Once you have a cluster up and running, run `setup-tce.sh`.
This will install cert-manager and contour. Contour is an ingress controller.
The script will then create the cert-manager `certificate` and `issuer` resources.
Lastly, it'll run a helm install with the values that cause the bug.

Run `get-logs.sh` to quickly grab the logs of all the pods.