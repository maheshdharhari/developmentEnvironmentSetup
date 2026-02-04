$apps = Get-Content -Raw .\apps.json | ConvertFrom-Json

Write-Host "`n=== Chocolatey Interactive Installer ===`n"

# Cache installed packages once (faster)
$installed = choco list --local-only | ForEach-Object {
    ($_ -split '\|')[0]
}

foreach ($app in $apps.apps) {
    $appName = [string]$app

    if ([string]::IsNullOrWhiteSpace($appName)) {
        continue
    }

    if ($installed -contains $appName) {
        Write-Host "✔ $appName already installed — skipping"
        continue
    }

    $answer = Read-Host "`nInstall $appName ? Press Enter for Yes (Y/n)"

    if ($answer -eq '' -or $answer -match '^[Yy]') {
        Write-Host "Installing $appName..."
        choco install $appName -y
    }
    else {
        Write-Host "Skipped $appName"
    }
}

Write-Host "`nAll done"
