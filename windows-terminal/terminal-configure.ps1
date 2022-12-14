$env_file = "$env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

Write-Host "Applying Windows Terminal Settings..."
# Makes a duplicate just in case
Copy-Item $env_file -Destination "$env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.old"
Copy-Item "./settings.json" -Destination $env_file

Write-Host "Installing Oh My Posh"
winget install JanDeDobbeleer.OhMyPosh -s winget

Write-Host "Copying Oh My Posh - PL10K theme"
Copy-Item "./.pl10k_customized.omp.json" -Destination "C:\Users\$env:USERNAME\.pl10k_customized.omp.json"

# Sets the pl10k theme
Write-Host "Adding Oh My Posh to the PROFILE variable"
echo "oh-my-posh init pwsh --config ~/.pl10k_customized.omp.json | Invoke-Expression" > $PROFILE

Write-Host "Done. Restart Windows Terminal to apply"