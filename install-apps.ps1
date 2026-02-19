$apps = Get-Content -Raw .\apps.json | ConvertFrom-Json

Write-Host "`n=== Chocolatey Interactive Installer ===`n"

# Cache installed packages once (faster)
$installed = choco list --local-only | ForEach-Object {
    ($_ -split '\|')[0]
}


for ($i = 0; $i -lt $apps.names.Count; $i++) {

    $appName = [string]$apps.names[$i]
	$app = [string]$apps.apps[$i]

    if ([string]::IsNullOrWhiteSpace($app)) {
        continue
    }

    if ($installed -contains $app) {
        Write-Host "[$i] ✔ $app already installed — skipping"
        continue
    }

    $answer = Read-Host "`n[$i] Install $appName ? Press Enter for Yes (Y/n)"

    if ($answer -eq '' -or $answer -match '^[Yy]') {
        Write-Host "Installing $app..."
        choco install $app -y
    }
    else {
        Write-Host "Skipped $appName"
    }
}




Write-Host "`nAll done"
