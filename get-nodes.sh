#!/bin/bash

echo -e "Node Name\t\tInternal IP"
echo "-------------------------------"

kubectl get nodes -o json | jq -r '.items[] | [.metadata.name, (.status.addresses[] | select(.type=="InternalIP").address)] | @tsv'
