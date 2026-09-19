# Antigravity Subagents Toolkit - 1-Click Community Updater
param (
    [string]$Branch = "main"
)

$ScriptDir = if ($PSScriptRoot) { $PSScriptRoot } else { Split-Path -Parent $MyInvocation.MyCommand.Definition }
Push-Location $ScriptDir

Write-Host "🔄 Checking for community updates..." -ForegroundColor Cyan

# Check if git repository is initialized
$IsGitRepo = Test-Path (Join-Path $ScriptDir ".git")

if ($IsGitRepo) {
    try {
        git fetch origin $Branch 2>$null
        $LocalHash = git rev-parse HEAD 2>$null
        $RemoteHash = git rev-parse "origin/$Branch" 2>$null

        if ($LocalHash -ne $RemoteHash) {
            Write-Host "📥 Pulling latest community improvements and new subagents..." -ForegroundColor Yellow
            git pull origin $Branch
        } else {
            Write-Host "✨ Already on the latest community version!" -ForegroundColor Green
        }
    } catch {
        Write-Warning "Could not reach remote git repository. Proceeding with local re-install..."
    }
} else {
    Write-Host "ℹ️ Not a Git clone. Syncing local skills..." -ForegroundColor Yellow
}

# Run global installer to refresh ~/.gemini/config
Write-Host "⚡ Re-registering all specialists globally..." -ForegroundColor Cyan
& (Join-Path $ScriptDir "install.ps1") -Global

Pop-Location
Write-Host "🎉 Update complete! Your Antigravity environment is now synced with the latest community skills." -ForegroundColor Green
