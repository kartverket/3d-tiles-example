#!/bin/bash

aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 844069736237.dkr.ecr.eu-north-1.amazonaws.com
docker build -t digtvil-3dtiles-server .
docker tag digtvil-3dtiles-server:latest 844069736237.dkr.ecr.eu-north-1.amazonaws.com/digtvil-3dtiles-server:latest
docker push 844069736237.dkr.ecr.eu-north-1.amazonaws.com/digtvil-3dtiles-server:latest
aws ecs update-service --service 3dtiles-service --cluster digtvil-cluster --force-new-deployment