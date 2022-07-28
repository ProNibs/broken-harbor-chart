#!/bin/sh

kubectl create ns harbor
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.9.1/cert-manager.yaml
kubectl apply -f https://projectcontour.io/quickstart/contour.yaml
kubectl apply -f ./harbor-certs.yaml
helm upgrade --install -n harbor harbor-app harbor/harbor -f harbor-values.yaml