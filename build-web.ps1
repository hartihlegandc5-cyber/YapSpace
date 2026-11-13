param([Parameter(Mandatory=$true)][string]$ApiUrl)
$ErrorActionPreference = 'Stop'
if (-not (Test-Path 'web')) { .\prepare.ps1 }
flutter build web --release --dart-define="API_URL=$ApiUrl"
if ($LASTEXITCODE -ne 0) { throw 'Web build failed. See Flutter output above.' }
Write-Host 'Upload the contents of build\web to your static web host.'
