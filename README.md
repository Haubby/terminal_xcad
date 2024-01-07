### DIY Windows Terminal 

* This article is all about making your windows terminal look cool

* In order to understand how it works, you need to spend some time watching the video mentioned in 'References' [^1] also you need to spend sometime on configuration of 'starship.toml' which I have already shared which I'm personally using. 

* So, if you don't want to do any sort of configuration stuffs just be my guest; copy the 'starship.toml' file & I promise you won't regret it and ofcourse you can thank me later

* So, jumping on to the main reason why we need to tweak our terminal
- It's because of the limited number of colors that can be displayed in a normal command prompt. The default color scheme provided by Microsoft

* First of all, you need to install 'Nerd fonts' of your choice from here [^2]. By the way, I'm using 'Hack Nerd Fonts' and working perfectly on windows 11 (tested successfully)

* I think I'm feeling lazy a bit, so why not you try to explore the References mentioned at the end of this article and figure out what you want out of it.

* In case you may find it difficult to search for some specific icons, just refer "Nerd Fonts Cheat Sheet", serach for any icon by it's name and copy the icon according to your requirement. 

* For your convenience, if you are using Windows 10/11, try installing WSL/ubuntu-22.04/Arch linux/kali linux from the Microsoft store

* Reason why I mentioned multiple Linux distributions is because their terminals are automatically added as a profile with default settings to your Windows Terminal and they look pretty much amazing. 

* Having multiple terminals of Linux without installing any hypervisor isn't that cool. Like you're running a shell inside a windows 10/11 without any VMware / Virtual Box / etc.

* For Mac users, I'll suggest go with Nerd Fonts installations and then configuring `starship.toml` as it's already a UNIX based system

* I'm trying everything I can to help people understand this Article and if anything goes missing in this article feel free to ask questions or else you can do pull requests and I'll try to reply/update the responses to this article

* The file _'starwars'_ is the name given by me as it's a default 'starship.toml' file found on some opensource gist. `starship.toml` is the file which I had configured myself. So, don't get confused, we only need one file that's `starship.toml` & configure as per your convenience

* To load the starship at the system startup/bootup, execute the below command from an elevated powershell and a file named `'Microsoft.PowerShell_profile.ps1'` will open in VS-Code. And ofcourse, you do need to install VS-Code on your windows system

```
code $PROFILE
```
* I've also added this `'Microsoft.PowerShell_profile.ps1'` file for your convenience, so windows users do check it out as well

* Next, add below variables to your `'Microsoft.PowerShell_profile.ps1'` file which will be added to your environment variables 
```ps1
function Invoke-Starship-TransientFunction {
  &starship module character
}

Invoke-Expression (&starship init powershell)

Enable-TransientPrompt
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
$ENV:STARSHIP_CACHE = "$HOME\AppData\Local\Temp"
$ENV:STARSHIP_DISTRO = "󰖳 "
```

* Even after all the configurations you've done, if you are not able to see the icons on vscode, then you do need to configure VS-Code as mentioned here [^3]


Thanks


### References ~

[^1]: _**[Make Windows Terminal look amazing!](https://www.youtube.com/watch?v=AK2JE2YsKto)**_

[^2]: _**[Nerd Fonts Downloads Page](https://www.nerdfonts.com/font-downloads)**_

_**[Nerd Fonts Cheat Sheet](https://www.nerdfonts.com/cheat-sheet)**_

_**[Starship Homepage](https://starship.rs/guide/)**_

_**[Starship default config, extracted from the source](https://gist.github.com/nukopy/fe23c9517032963a4ad863356572b4dc)**_

_**[Windows Terminal Themes](https://windowsterminalthemes.dev/)**_

_**[unofficial Arch WSL](https://github.com/VSWSL/Arch-WSL)**_

[^3]: _**[Configure VS Code to support Nerd Fonts Visual Studio Code](https://dev.to/owl777/how-to-show-nerd-fonts-in-visual-studio-code-15fd#:~:text=Without%20proper%20configuration%2C%20Visual%20Studio,settings%20using%20the%20keyword%20'terminal.)**_