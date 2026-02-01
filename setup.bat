@echo off
echo 🚀 Setting up Module 11 CI/CD Lab...

REM Check if Git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is not installed. Please install Git first.
    pause
    exit /b 1
)

REM Check if AWS CLI is installed
aws --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ AWS CLI is not installed. Please install AWS CLI first.
    pause
    exit /b 1
)

REM Initialize Git repository
echo 📁 Initializing Git repository...
git init

REM Add all files
echo 📝 Adding files to Git...
git add .

REM Create initial commit
echo 💾 Creating initial commit...
git commit -m "Initial commit: Add CloudFormation template and CI/CD workflows"

echo ✅ Setup complete!
echo.
echo Next steps:
echo 1. Create GitHub repository: module11-cicd-lab
echo 2. Add remote: git remote add origin https://github.com/YOUR-USERNAME/module11-cicd-lab.git
echo 3. Push to GitHub: git push -u origin main
echo 4. Add AWS credentials to GitHub Secrets
echo.
echo 📖 See Module11-CICD-Git-Lab-Setup.md for detailed instructions
pause