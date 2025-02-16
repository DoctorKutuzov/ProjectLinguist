#!/bin/bash

helm install message-bus bitnami/rabbitmq --namespace linguist-system-backend --set persistence.existingClaim=message-bus-pvc,ingress.enabled=true,ingress.hostname=dashboard.rmq.linguist.ru,auth.username=<your-rmq-user>,auth.password=<your-rmq-password>,ingress.ingressClassName=nginx