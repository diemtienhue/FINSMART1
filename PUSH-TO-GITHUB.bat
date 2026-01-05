@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ========================================
echo PUSHING CODE TO GITHUB
echo ========================================
echo.

echo [1/5] Checking git status...
git status
echo.

echo [2/5] Adding all files...
git add .
echo.

echo [3/5] Committing changes...
git commit -m "Initial commit: Finsmart project with AdminDashboard fix"
echo.

echo [4/5] Checking branch...
git branch -M main
echo.

echo [5/5] Pushing to GitHub...
git push -u origin main
echo.

echo ========================================
echo DONE! Code has been pushed to GitHub.
echo ========================================
pause

