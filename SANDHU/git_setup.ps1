Write-Host "1. Cleaning up corrupted Git directory..."
if (Test-Path .git) {
    Remove-Item -Recurse -Force .git
}

Write-Host "2. Initializing fresh Git repository..."
git init

Write-Host "3. Setting up local Git user configuration..."
git config user.name "nihalnaaz"
git config user.email "nihalnaaz@users.noreply.github.com"

Write-Host "4. Renaming default branch to main..."
git checkout -b main

Write-Host "5. Adding remote origin..."
git remote add origin https://github.com/nihalnaaz/project.git

Write-Host "6. Staging files..."
git add .

Write-Host "7. Creating initial commit..."
git commit -m "Initial project commit"

Write-Host "8. Pushing to remote main branch..."
git push -u origin main

Write-Host "Git setup complete!"
