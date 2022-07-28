#!/bin/sh

mkdir -p logs
for pod in $(kubectl get pods -n harbor -o jsonpath='{.items[*].metadata.name}'); do
    kubectl logs -n harbor $pod > logs/$pod.log
done    