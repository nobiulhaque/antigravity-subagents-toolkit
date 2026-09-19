param (
    [string]$Target,
    [switch]$Global
)

$ScriptDir = if ($PSScriptRoot) { $PSScriptRoot } else { Split-Path -Parent $MyInvocation.MyCommand.Definition }
$TemplateAgentsDir = Join-Path $ScriptDir "template\.agents"

if (-not (Test-Path $TemplateAgentsDir)) {
    Write-Error "Template folder not found at: $TemplateAgentsDir"
    exit 1
}

# 1. Global Installation
if ($Global -or (-not $Target)) {
    $GlobalSkills = "$env:USERPROFILE\.gemini\config\skills"
    $GlobalRules = "$env:USERPROFILE\.gemini\config\rules"

    New-Item -ItemType Directory -Force -Path $GlobalSkills | Out-Null
    New-Item -ItemType Directory -Force -Path $GlobalRules | Out-Null

    Copy-Item -Path (Join-Path $TemplateAgentsDir "skills\*") -Destination $GlobalSkills -Recurse -Force
    Copy-Item -Path (Join-Path $TemplateAgentsDir "rules\*") -Destination $GlobalRules -Recurse -Force

    Write-Host "✅ Successfully installed subagents globally to $env:USERPROFILE\.gemini\config" -ForegroundColor Green
    Write-Host "These subagents are now active in EVERY Antigravity project on your machine." -ForegroundColor Cyan
}

# 2. Project-Specific Installation
if ($Target) {
    if (-not (Test-Path $Target)) {
        Write-Error "Target directory does not exist: $Target"
        exit 1
    }

    $DestAgents = Join-Path $Target ".agents"
    New-Item -ItemType Directory -Force -Path $DestAgents | Out-Null
    Copy-Item -Path (Join-Path $TemplateAgentsDir "*") -Destination $DestAgents -Recurse -Force

    Write-Host "✅ Successfully installed subagents into project: $Target\.agents" -ForegroundColor Green
}
