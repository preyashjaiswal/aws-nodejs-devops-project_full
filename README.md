# 🚀 AWS Node.js DevOps Project

This project sets up a **scalable, secure, and automated infrastructure** on **AWS** for a **containerized Node.js application** using **Terraform, Docker, GitHub Actions, and AWS best practices**.

---

## 📌 Project Overview

This project demonstrates a full DevOps workflow:

- **Infrastructure as Code (IaC)** with Terraform
  - VPC, Subnets, Security Groups
  - Auto Scaling Group (ASG)
  - Application Load Balancer (ALB)
  - EC2 instances
  - RDS (PostgreSQL)
  - ECR for Docker images
  - ACM for SSL certificates
  - IAM roles and policies
- **CI/CD pipeline** using GitHub Actions
  - Automated testing
  - Docker build & push to ECR
  - Terraform deployment to AWS
- **Containerization** with Docker
- **Monitoring & Logging**
  - CloudWatch metrics and logs
  - Optional Prometheus + Grafana for advanced monitoring
- **Secrets Management**
  - AWS Secrets Manager
  - Environment variables securely handled
- **Security Best Practices**
  - HTTPS via ACM
  - IAM least privilege
  - VPC private subnets for databases

---

## 🏗️ Project Structure

