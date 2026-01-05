@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Current directory: %CD%
echo.
echo Checking git status...
git status
echo.
echo Adding AdminDashboard.tsx...
git add components/AdminDashboard.tsx
echo.
echo Committing changes...
git commit -m "Fix JSX error: replace -> with → character in AdminDashboard.tsx"
echo.
echo Pushing to GitHub...
git push
echo.
echo Done! Changes have been pushed to GitHub.
pause

