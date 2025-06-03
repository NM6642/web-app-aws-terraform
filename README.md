

Deploy a simple static website on AWS S3 using Terraform, automated via GitLab CI/CD.

---

## Overview

- Terraform creates an S3 bucket configured for static website hosting.  
- Uploads `index.html` to the bucket.  
- GitLab CI/CD runs Terraform `plan` and `apply` stages automatically.

---

## Purpose / Use

This project automates the deployment of a static website on AWS S3 by:

- Creating and configuring the S3 bucket for hosting without manual steps.  
- Automatically uploading website files to the bucket.  
- Using GitLab CI/CD pipelines to ensure consistent, repeatable deployments on every code update.  
- Allowing preview of infrastructure changes with Terraform plan before applying.  
- Managing infrastructure as code for better version control and maintainability.

---

## Usage

- Run locally:  
  `terraform init`  
  `terraform plan`  
  `terraform apply`

- Website URL output after deployment:  
  `http://<bucket-name>.s3-website-<region>.amazonaws.com`

---

## GitLab CI/CD Pipeline

- **plan**: Terraform init & plan  
- **apply**: Terraform apply

---

## Next Steps

- Add S3 bucket policies & versioning  
- Secure with CloudFront or IAM policies  
- Extend Terraform for more resources

---


