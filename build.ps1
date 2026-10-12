Write-Host "Getting latest code..."
git pull origin main

Write-Host "Building..."
dotnet build
if ($LASTEXITCODE -ne 0) { exit 1 }

Write-Host "Running tests..."
dotnet test
if ($LASTEXITCODE -ne 0) { exit 1 }

Write-Host "Building Docker image..."
docker build -t devops-demo:v1 .
if ($LASTEXITCODE -ne 0) { exit 1 }

Write-Host "Pipeline successful."