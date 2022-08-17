$env_file = "$env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
Copy-Item $env_file -Destination "$env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.old"

#Copy-Item "./settings.json" -Destination "$env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

#winget install JanDeDobbeleer.OhMyPosh -s winget

#Write-Host "Copying Oh My Posh - PL10K theme"
#Copy-Item "./pl10k_customized.omp.json" --Destination "$HOME\.pl10k_customized.omp.json"


# Sets the pl10k theme
#Add-Content -Path $PROFILE -Value "oh-my-posh init pwsh --config ~/.pl10k_customized.omp.json | Invoke-Expression"
#Get-Content -Path $PROFILE


# echo "oh-my-posh init pwsh --config ~/.pl10k_customized.omp.json | Invoke-Expression" > $PROFILE

#Write-Host "Done. Restart terminal to apply"