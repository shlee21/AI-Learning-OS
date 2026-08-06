$ErrorActionPreference = 'Stop'
$target = Join-Path (Get-Location) '.ai-learning-os'

if (Test-Path -LiteralPath $target) {
    throw "The target already exists: $target. Setup stopped to protect the existing configuration."
}

Write-Host 'Choose an AI Learning OS setup level.'
Write-Host '1. Core'
Write-Host '2. Core + Learning (recommended)'
Write-Host '3. Full'
$choice = Read-Host 'Choice (1-3)'
if ($choice -notin @('1','2','3')) { throw 'Enter 1, 2, or 3.' }

$root = Split-Path -Parent $PSScriptRoot
New-Item -ItemType Directory -Path $target | Out-Null
Copy-Item -Recurse -LiteralPath (Join-Path $root 'core') -Destination $target

if ($choice -in @('2','3')) {
    Copy-Item -Recurse -LiteralPath (Join-Path $root 'learning') -Destination $target
}
if ($choice -eq '3') {
    Copy-Item -Recurse -LiteralPath (Join-Path $root 'work') -Destination $target
}

@("level=$choice", "installed=$(Get-Date -Format o)") | Set-Content -LiteralPath (Join-Path $target 'install.info') -Encoding utf8
Write-Host "Setup complete: $target"
