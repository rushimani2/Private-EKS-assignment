#!/bin/bash

# Script to list EKS nodes with their internal IP addresses

# Check if kubectl is installed
if ! command -v kubectl &> /dev/null; then
  echo "kubectl is not installed. Please install it before running this script."
  exit 1
fi

# List nodes with internal IPs
echo -e "\nNode Name\t\tInternal IP"
echo "-------------------------------"
kubectl get nodes -o wide | awk 'NR==1 || /ip-/{printf "%s\t%s\n", $1, $6}'
