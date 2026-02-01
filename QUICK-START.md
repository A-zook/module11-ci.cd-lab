# Module 11 CI/CD Lab - Quick Reference

## 📁 Folder Structure
```
module11-cicd-lab/
├── .github/workflows/          # GitHub Actions pipelines
│   ├── validate.yml           # Template validation
│   └── deploy.yml             # AWS deployment
├── infrastructure.yaml        # Main CloudFormation template
├── infrastructure-with-encryption.yaml  # Enhanced template (for feature branch)
├── README.md                  # Repository documentation
├── .gitignore                 # Git ignore rules
├── setup.sh                   # Linux/Mac setup script
└── setup.bat                  # Windows setup script
```

## 🚀 Quick Start (3 Steps)

### Step 1: Initialize Repository
```bash
cd module11-cicd-lab

# Windows users:
setup.bat

# Linux/Mac users:
chmod +x setup.sh
./setup.sh
```

### Step 2: Create GitHub Repository
1. Go to GitHub.com
2. Create new repository: `module11-cicd-lab`
3. Set to **Public** (for free GitHub Actions)
4. **Don't** initialize with README

### Step 3: Connect and Push
```bash
# Add GitHub remote (replace YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/module11-cicd-lab.git

# Push to GitHub
git push -u origin main
```

## 🔐 AWS Credentials Setup

### Create IAM User
1. AWS Console → IAM → Users → Create user
2. Username: `github-actions-user`
3. Attach policies:
   - `AmazonS3FullAccess`
   - `CloudFormationFullAccess`
   - `IAMReadOnlyAccess`
4. Create access key → Copy both keys

### Add to GitHub Secrets
1. GitHub repo → Settings → Secrets and variables → Actions
2. Add secrets:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`

## 🧪 Test Feature Branch Workflow

```bash
# Create feature branch
git checkout -b feature/add-encryption

# Replace infrastructure.yaml with the encrypted version
cp infrastructure-with-encryption.yaml infrastructure.yaml

# Commit and push
git add infrastructure.yaml
git commit -m "Add S3 bucket encryption"
git push origin feature/add-encryption

# Create Pull Request on GitHub
# Watch CI/CD pipeline run automatically
```

## 🧹 Cleanup
```bash
# Delete CloudFormation stack
aws cloudformation delete-stack --stack-name module11-lab-stack

# Delete IAM user in AWS Console
```

## 💰 Cost: $0.00
- GitHub Actions: Free for public repos
- AWS S3: Free tier (5GB)
- CloudFormation: No charges

---
**Ready to push to GitHub!** All files are organized and ready to use.