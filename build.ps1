Write-Host "Pulling latest code..."
git pull origin main

Write-Host "Building..."
dotnet build

Write-Host "Running tests..."
dotnet test

Write-Host "Pipeline completed."
