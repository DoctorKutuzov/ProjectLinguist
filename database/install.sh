#!/bin/bash

helm install database bitnami/postgresql --set primary.persistence.existingClaim=database-pvc,auth.postgresPassword=<your-psql-password>