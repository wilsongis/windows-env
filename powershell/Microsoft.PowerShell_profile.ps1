# Envitronment
$env:PYTHONIOENCODING="utf-8"

# Set up Oh My Posh
#oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/atomic.omp.json" | Invoke-Expression
#oh-my-posh init pwsh --config "$env:POSH_THEMES/jandedobbeleer.omp.json" | Invoke-Expression

# posh-git
Import-Module posh-git

# PSReadLine
Set-PSREadLineOption -PredictionSource History

# Terminal-Icons
Import-Module Terminal-Icons

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'

# Alias (Optional)
Set-Alias vim nvim


# Ultilities (Optional)
#Invoke-Expression "$(thefuck --alias)"
#    Get-Command -Name $command -ErrorAction SilentlyContinue |
#        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
#}

rm alias:\r
