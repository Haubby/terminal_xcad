
Import-Module 'C:\Users\<your-username>\Documents\GitHub\posh-git\src\posh-git.psd1'

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"

if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function Invoke-Starship-TransientFunction {
  &starship module character
}

Invoke-Expression (&starship init powershell)

Enable-TransientPrompt

$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
$ENV:STARSHIP_CACHE = "$HOME\AppData\Local\Temp"
$ENV:STARSHIP_DISTRO = "󰖳 "
