$ErrorActionPreference = 'Stop'
if (-not (Get-Command flutter -ErrorAction SilentlyContinue)) { throw 'Flutter SDK is not installed or not on PATH.' }
if (-not (Test-Path 'web')) {
  flutter create --platforms=web --org com.yapspace --project-name yapspace .
  if ($LASTEXITCODE -ne 0) { throw 'flutter create failed.' }
  Copy-Item 'web-assets/index.html' 'web/index.html' -Force
  Copy-Item 'web-assets/manifest.json' 'web/manifest.json' -Force
  Copy-Item 'web-assets/favicon.svg' 'web/favicon.svg' -Force
}
flutter pub get
if ($LASTEXITCODE -ne 0) { throw 'flutter pub get failed.' }
Write-Host 'Web project is prepared.'
