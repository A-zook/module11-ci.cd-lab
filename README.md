# Module 11 CI/CD Lab

This repository demonstrates CI/CD practices with CloudFormation.

## What's Included

- `infrastructure.yaml` - CloudFormation template for S3 bucket
- `.github/workflows/` - GitHub Actions CI/CD pipelines

## How to Deploy

1. Fork this repository
2. Push changes to trigger CI/CD pipeline
3. Review deployment in AWS Console

## Resources Created

- S3 bucket with versioning enabled
- Secure bucket configuration (no public access)

## Quick Start

```bash
# Clone this repository
git clone https://github.com/YOUR-USERNAME/module11-cicd-lab.git
cd module11-cicd-lab

# Initialize Git (if needed)
git init

# Add your changes
git add .
git commit -m "Initial setup"
git push origin main
```

## Pipeline Status

The CI/CD pipeline will:
1. Validate CloudFormation template syntax
2. Run linting checks
3. Deploy to AWS automatically on main branch# Trigger workflow after adding secrets
