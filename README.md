# 🚀 Private EKS Cluster with Terraform

This project provisions a **secure, private AWS EKS cluster** using Terraform and retrieves node information via a shell script.

---

## 📌 Project Structure

- `main.tf` — AWS provider setup
- `vpc.tf` — Private VPC with two subnets
- `iam.tf` — IAM roles for EKS cluster
- `eks.tf` — Private EKS cluster configuration
- `outputs.tf` — Cluster name and endpoint output
- `get-nodes.sh` — Script to list EKS nodes with internal IPs

---

## ✅ Features

- 🛡️ Private EKS endpoint (no public access)
- 🌐 Nodes in **private subnets only**
- 📦 Minimal IAM and secure networking

---

## 🔧 Prerequisites

- AWS CLI configured with permissions for VPC, EC2, IAM, and EKS
- Terraform v1.5 or newer
- kubectl v1.27 or newer
- GitHub Codespaces (or local setup)

---

## 📥 Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
cd YOUR_REPO_NAME
```

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Apply Terraform Plan
```bash
terraform apply -auto-approve
```

This provisions:
- A custom VPC with two private subnets (us-east-1a & 1b)
- EKS cluster with private-only API endpoint

### 4. Configure kubectl Access
```bash
aws eks update-kubeconfig --name private-eks --region us-east-1
```

---

## 🧪 Run Node Listing Script
```bash
chmod +x get-nodes.sh
./get-nodes.sh
```
**Expected Output:**
```
Node Name       Internal IP
ip-10-0-1-25     10.0.1.25
ip-10-0-2-45     10.0.2.45
```

---

## 📌 Notes

- No public internet access exists for control plane or nodes.
- Ensure NAT Gateway or endpoint services are used if nodes need outbound access.
- This project avoids third-party Terraform modules (everything is written from scratch).

---

## 🌍 Region Used
`us-east-1`

## 🧰 Tools Used
- Terraform v1.5+
- AWS CLI v2+
- kubectl
- GitHub Codespaces

---

## 📎 License
MIT License
