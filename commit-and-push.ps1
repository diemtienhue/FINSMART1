# Script to commit and push changes
$ErrorActionPreference = "Stop"

# Get the script directory (project root)
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptPath

Write-Host "Current directory: $(Get-Location)" -ForegroundColor Green

# Check git status
Write-Host "`nChecking git status..." -ForegroundColor Yellow
git status

# Add the changed file
Write-Host "`nAdding AdminDashboard.tsx..." -ForegroundColor Yellow
git add components/AdminDashboard.tsx

# Commit changes
Write-Host "`nCommitting changes..." -ForegroundColor Yellow
git commit -m "Fix JSX error: replace -> with → character in AdminDashboard.tsx"

# Push to GitHub
Write-Host "`nPushing to GitHub..." -ForegroundColor Yellow
git push

Write-Host "`nDone! Changes have been pushed to GitHub." -ForegroundColor Green

