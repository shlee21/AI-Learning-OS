param(
    [ValidateSet('1', '2', '3')]
    [string]$Level,

    [ValidateSet('Project', 'Global')]
    [string]$Scope
)

$ErrorActionPreference = 'Stop'

# Windows PowerShell 5.1 reads BOM-less UTF-8 as the system ANSI code page when
# Get-Content is used without an explicit encoding. Use strict UTF-8 decoding
# and BOM-less UTF-8 output so existing Korean guidance is never rewritten as
# mojibake.
$utf8Strict = New-Object System.Text.UTF8Encoding($false, $true)
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

function Read-StrictUtf8File {
    param([Parameter(Mandatory = $true)][string]$Path)

    try {
        return $utf8Strict.GetString([System.IO.File]::ReadAllBytes($Path))
    }
    catch {
        throw "The existing file is not valid UTF-8 and was not changed: $Path"
    }
}

function Write-Utf8NoBomFile {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][string]$Content
    )

    [System.IO.File]::WriteAllText($Path, $Content, $utf8NoBom)
}

if (-not $Level) {
    Write-Host 'Choose an AI Learning OS setup level.'
    Write-Host '1. Core'
    Write-Host '2. Core + Learning (recommended)'
    Write-Host '3. Full (Core + Learning + Capabilities + Work)'
    $Level = Read-Host 'Level (1-3)'
    if ($Level -notin @('1', '2', '3')) { throw 'Enter 1, 2, or 3.' }
}

if (-not $Scope) {
    Write-Host 'Choose where to apply the rules.'
    Write-Host '1. Current project (safer default)'
    Write-Host '2. Global Codex settings'
    $scopeChoice = Read-Host 'Scope (1-2)'
    if ($scopeChoice -eq '1') { $Scope = 'Project' }
    elseif ($scopeChoice -eq '2') { $Scope = 'Global' }
    else { throw 'Enter 1 or 2.' }
}

$sourceRoot = Split-Path -Parent $PSScriptRoot
$timestamp = Get-Date -Format 'yyyyMMdd-HHmmss'

if ($Scope -eq 'Global') {
    $codexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $env:USERPROFILE '.codex' }
    $target = Join-Path $codexHome 'ai-learning-os'
    $agentsPath = Join-Path $codexHome 'AGENTS.md'
    $referenceRoot = 'ai-learning-os'
}
else {
    $target = Join-Path (Get-Location) '.ai-learning-os'
    $agentsPath = Join-Path (Get-Location) 'AGENTS.md'
    $referenceRoot = '.ai-learning-os'
}

if (Test-Path -LiteralPath $target) {
    throw "The target already exists: $target. Setup stopped to protect the existing configuration."
}

$beginMarker = '<!-- AI-LEARNING-OS:BEGIN -->'
$endMarker = '<!-- AI-LEARNING-OS:END -->'
$existingAgents = if (Test-Path -LiteralPath $agentsPath) { Read-StrictUtf8File -Path $agentsPath } else { '' }

if ($existingAgents -match [regex]::Escape($beginMarker)) {
    throw "AI Learning OS is already linked in $agentsPath. Setup stopped to avoid duplicate instructions."
}

$coreLinks = @(
    "$referenceRoot/core/identity.md",
    "$referenceRoot/core/thinking.md",
    "$referenceRoot/core/knowledge.md",
    "$referenceRoot/core/response.md",
    "$referenceRoot/core/style.md",
    "$referenceRoot/core/orchestrator.md"
)

$lines = @(
    $beginMarker,
    '# AI Learning OS',
    '',
    "Apply AI Learning OS level $Level from ``$referenceRoot``.",
    '',
    'Read and always apply these Core rules:'
)
$lines += $coreLinks | ForEach-Object { "- ``$_``" }

if ($Level -in @('2', '3')) {
    $lines += @(
        '',
        'Use these Learning Coaches when relevant without delaying simple requests:'
    )
    $lines += @(
        "$referenceRoot/learning/question-coach.md",
        "$referenceRoot/learning/thinking-coach.md",
        "$referenceRoot/learning/context-coach.md",
        "$referenceRoot/learning/learning-coach.md"
    ) | ForEach-Object { "- ``$_``" }
}

if ($Level -eq '3') {
    $lines += @(
        '',
        'For complex production work, read the Capability index and load only the Pack needed for the current result:',
        "- ``$referenceRoot/capabilities/README.md``",
        '',
        'The Work files are reusable templates. Load one only when the current task needs it:',
        "- ``$referenceRoot/work/templates/project-template.md``",
        "- ``$referenceRoot/work/templates/workflow-template.md``",
        "- ``$referenceRoot/work/templates/role-template.md``",
        '',
        'Keep real project facts, decisions, constraints, Evidence, and Reference in each project rather than in the global templates.'
    )
}

$lines += $endMarker
$instructionBlock = $lines -join [Environment]::NewLine

$createdTarget = $false
try {
    $targetParent = Split-Path -Parent $target
    if (-not (Test-Path -LiteralPath $targetParent)) {
        New-Item -ItemType Directory -Path $targetParent -Force | Out-Null
    }

    New-Item -ItemType Directory -Path $target | Out-Null
    $createdTarget = $true
    Copy-Item -Recurse -LiteralPath (Join-Path $sourceRoot 'core') -Destination $target

    if ($Level -in @('2', '3')) {
        Copy-Item -Recurse -LiteralPath (Join-Path $sourceRoot 'learning') -Destination $target
    }
    if ($Level -eq '3') {
        Copy-Item -Recurse -LiteralPath (Join-Path $sourceRoot 'capabilities') -Destination $target
        Copy-Item -Recurse -LiteralPath (Join-Path $sourceRoot 'work') -Destination $target
    }

    $installInfo = @(
        "level=$Level",
        "scope=$Scope",
        "installed=$(Get-Date -Format o)"
    ) -join [Environment]::NewLine
    Write-Utf8NoBomFile -Path (Join-Path $target 'install.info') -Content ($installInfo + [Environment]::NewLine)

    $agentsParent = Split-Path -Parent $agentsPath
    if (-not (Test-Path -LiteralPath $agentsParent)) {
        New-Item -ItemType Directory -Path $agentsParent -Force | Out-Null
    }

    if (Test-Path -LiteralPath $agentsPath) {
        $backupPath = "$agentsPath.backup-$timestamp"
        Copy-Item -LiteralPath $agentsPath -Destination $backupPath
        $newAgents = $existingAgents.TrimEnd() + [Environment]::NewLine + [Environment]::NewLine + $instructionBlock + [Environment]::NewLine
        Write-Utf8NoBomFile -Path $agentsPath -Content $newAgents
        Write-Host "Existing AGENTS.md backed up to: $backupPath"
    }
    else {
        Write-Utf8NoBomFile -Path $agentsPath -Content ($instructionBlock + [Environment]::NewLine)
    }
}
catch {
    if ($createdTarget -and (Test-Path -LiteralPath $target)) {
        Remove-Item -Recurse -Force -LiteralPath $target
    }
    throw
}

Write-Host "Setup complete: level=$Level scope=$Scope"
Write-Host "Rules: $target"
Write-Host "Codex guidance: $agentsPath"
