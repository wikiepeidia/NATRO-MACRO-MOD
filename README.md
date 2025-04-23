<!--
  /\ \ \__ _| |_ _ __ ___     /\/\   __ _  ___ _ __ ___  
 /  \/ / _` | __| '__/ _ \   /    \ / _` |/ __| '__/ _ \ 
/ /\  / (_| | |_| | | (_) | / /\/\ \ (_| | (__| | | (_) |
\_\ \/ \__,_|\__|_|  \___/  \/    \/\__,_|\___|_|  \___/                                                    

Thanks for downloading Natro Macro!

To start the macro, just open 'START.bat'!

If you need help or want to discuss, join our Discord server!

Feel free to give us a Star on GitHub!

IMPORTANT:
Make sure you are only downloading from an official source!
The only official sources are:
 - our GitHub page (https://github.com/NatroTeam/NatroMacro)
 - our Discord server (https://discord.gg/natromacro)

>>> IGNORE BELOW THIS LINE <<<
-->

<div align="center">

<!-- logo banner -->
<picture>
  <source width="200px" media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/NatroTeam/.github/main/profile/assets/banners/natro-logo-light.svg"> <!-- light theme (black text) -->
  <img src="https://raw.githubusercontent.com/NatroTeam/.github/main/profile/assets/banners/natro-logo-dark.svg"> <!-- dark theme (light text) -->
</picture>
<br>

<!-- shields and contents -->
[![][latest-release-shield]][latest-release-link]
[![][downloads-shield]][downloads-link]
[![][discord-shield]][discord-link]
[![][roblox-shield]][roblox-link]
<br>
PROVIDING MODDED CODE FOR NATRO MACRO<br>
</div>

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/1.jpg)
<a name="installation"><h2>🛠️ Get ready</h2></a>

1. Download `Natro_Macro_v#.#.#.zip` from the [latest release of natro macro][latest-release-link] and extract
2. Installion of Auto hot key [![AutoHotkey](https://img.shields.io/badge/Download-AutoHotkey-blue?style=for-the-badge)](https://www.autohotkey.com/download/)  
3. Installion VS code [![VSCode](https://img.shields.io/badge/Download-VSCode-purple?style=for-the-badge)](https://code.visualstudio.com/)  
4. Start editing on VSCODE.

<a name="TIPS"><h2>💁 TIP</h2></a>
1. these mods i feel so good and make macro easier.
2. feel free to share to your friends. 

<a name="NOTICE"><h2>⚠️ NOTICE</h2></a>
1. i aint provide the natro macro in this fork. 
2. please edit the code yourself
3. i use this markdown to avoid have to post on my discord
4. all of these code are from chatgpt.
5.  though failure are rare, it can cause EXCEPTION at no moment. you need to know where to edit.
6.  All the files ahk are located in folder `/submacros/`


<a name="CODE"><h2>🧑‍💻 MODS</h2></a>
1. Addition of shutdown command:

files: `status.ahk`

```ahk 
        case "restart":
        discord.SendEmbed("Restarting YOUR pc...", 5066239, , , , id)
        Shutdown 6

        case "shutdown":
        discord.SendEmbed("SHUTING DOWN YOUR WINDOWS...", 5066239, , , , id)
        Shutdown 2 ;this command is not tested but high chances due to windows update or whatever can cause a restart.

        case "sleep":
        discord.SendEmbed("SLEEEEEEEPING YOUR WINDOWS...", 5066239, , , , id)
        DllCall("PowrProf\SetSuspendState", "Int", 0, "Int", 0, "Int", 0)
```
2.  `/settings/field_config.ini` editor GUI

credit: someone else i could not remember. A new version that make the GUI a bit better from Chatgpt o1 in Portrait mode to avoid overlapping. 

Purpose: a graphical UI to edit the `field_config.ini` file, to avoid any cases in which being defaulted to Stationary parttern 

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/15.png)

Installion: put the file in root natro consisting of `/settings` folder

as of right now i cant find the github or original link for this script, temprary upload to script folder until i could find the oiginal

<a href="https://www.youtube.com/watch?v=luWwBXv_7LAk">
    <img src="https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/4.jpg" width="502" height="177" />
</a>

Tutorial:

 [![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20TUTORIAL-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/watch?v=luWwBXv_7LAk)

Download: 

[![Download Script](https://img.shields.io/badge/Download-Script-brightgreen?style=for-the-badge&logo=github)](https://github.com/wikiepeidia/NATRO-MACRO-MOD/raw/main/scripts/FieldDefault_Edit.ahk)

3. Advanced tab Enabler

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/2.jpg) 

click on the Version `v1.0.x` at the corner multiple time to enable

4. Vicious bee hop macro

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/5.jpg)

Installion: [![VicHopMacro](https://img.shields.io/badge/GitHub-VicHopMacro-black?style=for-the-badge&logo=github)](https://github.com/epicisgood/VicHopMacro)


Usage: get stinger quick. No support for planters.

5. Natro so broke custom text `natromacro.ahk`

Emoji does not functional


```ahk
[" A_Hour ":" A_Min ":" A_Sec "]
```
pramenter:

```ahk
      if(ReconnectMessage && ((nowUnix()-LastNatroSoBroke)>3600)) { ;limit to once per hour
        LastNatroSoBroke:=nowUnix()
        Send "{Text}/[" A_Hour ":" A_Min ":" A_Sec "] Natro so broke  weary`n"
      sleep 250
    }
``` 

6. Guiding star custom text `natromacro.ahk`

```ahk 
        GSMins:=SubStr("0" Mod(A_Min+10, 60), -2)
        Sleep 200
        Send "{Text}/Guiding Star in " StringText " commune, tu liem hn at : [" A_Hour ":" A_Min ":" A_Sec "]`n"
        sleep 250
```


7. Hive hub macro

Installion:[![NatroMacro](https://img.shields.io/badge/GitHub-HIVEHUBMACRO-black?style=for-the-badge&logo=github)](https://github.com/huner2/NatroMacro/tree/hub_field_addition)  

Pattern reccomedation: 
![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/3.jpg)

Notice: Apply ROBLOX image search fix due to very old version.Drift a lot and  no one willing to find a pattern

Application for Image fix [![Discord](https://img.shields.io/badge/Discord-Image%20Fix-5865F2?style=for-the-badge&logo=discord)](https://discord.com/channels/1012610056921038868/1305695364845928620)

Usage: AFK stickers, hive hub stamp, leaderboard, hive hub badge.

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/4.png)

Tool reccomedation: dark scythe.

Attention: Currently there is glitch to place petals,POP or planters in the hub field. 

While we could not find any true case of data being wiped for doing this, as of now, do not macro in the hub, since the owner can perform statistic revert,etc.

Also it might be possible to be flagged, thus we do not recommend an unfair play. 

8. RDP Setup

Problem: Roblox cant run on virtual machine due to no GPU passthrough.Hyperion does not like Vmware SVGA,etc

here is what you can do before :

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/10.webp)

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/12.png)
Solution: usage of RDP,lighter than the whole OS, but less stability.

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/11.png)

Application installion: rdp wrapper sebaxakerhtc  

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/15.jpg)

Notice: unsure some browser CHROME flag `github.com/sebaxakerhtc/rdpwrap/` site as dangerous.This tool is much more updated with support for Automatic ini and patching files, as well as screen resoution change.

 If you do not like this RDP consider traditional way [![Google Docs](https://img.shields.io/badge/Google%20Docs-Open%20Document-4285F4?style=for-the-badge&logo=googledocs&logoColor=white)](https://docs.google.com/document/d/13Sx3mtLNRYVYAcTIRCjPcK41OygrBKOZg6mw-vfNTnQ/edit?usp=sharing)


Running 2 ACCS for best error free:

Acc main installion Bloxstrap, find code at `natromacro.ahk` 
```ahk
 ; if roblox exists, activate it and send Esc+L+Enter
 ```
replace the code below to 
```ahk

....................REST CODE....................
        Sleep 4500 ; Delay to prevent Roblox Error Code 264
    }
    ; Kill only Bloxstrap version
    for p in ComObjGet("winmgmts:").ExecQuery("SELECT * FROM Win32_Process WHERE Name LIKE '%Roblox%' OR CommandLine LIKE '%ROBLOXCORPORATION%'")
    {
        ExecutablePath := p.ExecutablePath
        if (ExecutablePath && !(InStr(ExecutablePath, "Bloxstrap"))) ; Skip non-Bloxstrap versions
            continue
        ProcessClose p.ProcessID ; Kill Bloxstrap version of Roblox
    }
}
```

Acc alt installion normal roblox, edit the same location to
```ahk
 
....................REST CODE....................
        Sleep 4500 ; Delay to prevent Roblox Error Code 264
    }
; Kill only the default-installed Roblox versions (ignoring Bloxstrap)
    for p in ComObjGet("winmgmts:").ExecQuery("SELECT * FROM Win32_Process WHERE Name LIKE '%Roblox%' OR CommandLine LIKE '%ROBLOXCORPORATION%'")
    {
        ExecutablePath := p.ExecutablePath
        if (ExecutablePath && InStr(ExecutablePath, "Bloxstrap")) ; Skip Bloxstrap version
            continue
        if (ExecutablePath && !(InStr(ExecutablePath, "Program Files") || InStr(ExecutablePath, "AppData"))) ; Skip non-default installs
            continue
        ProcessClose p.ProcessID ; Kill default-installed Roblox versions
    }
}
```

if run more accs, consider use Bloxstrap all accs since it is guranteed to install on `%localappdata%` then apply code for both accs. 

The codes are not tested. Check for yourself

```ahk
; Kill only Bloxstrap for the current user
	CurrentUser := A_UserName
	LocalAppDataPath := "C:\Users\" CurrentUser "\AppData\Local\Bloxstrap"

	for p in ComObjGet("winmgmts:").ExecQuery("SELECT * FROM Win32_Process WHERE Name LIKE '%Roblox%' OR CommandLine LIKE '%ROBLOXCORPORATION%'")
	{
		ExecutablePath := p.ExecutablePath
		if (ExecutablePath && !InStr(ExecutablePath, LocalAppDataPath)) ; Skip if not the current user's Bloxstrap
			continue
		ProcessClose p.ProcessID ; Kill only this user's Bloxstrap version of Roblox
	}
}
```
recommendation resulution: 1366x768, for honeyday consider full HD. 

for 1366x768, recommended full screen to avoid inactive honey issues. Small taskbar if you do not want full screen.

to get small taskbar on windows 11 consider:

[![Get Small Taskbar](https://img.shields.io/badge/Get%20Small%20Taskbar-ExplorerPatcher-0078D7?style=for-the-badge&logo=github&logoColor=white)](https://github.com/valinet/ExplorerPatcher)

if you want virtual machine, consider finding a way to GPU passthrough. Hyperion wants GPU, means you would somehow be able to install your GPU driver inside the vm.

Considering some solution

[![VMware GPU Passthrough](https://img.shields.io/badge/VMware-PCIe%20Passthrough-607078?style=for-the-badge&logo=vmware&logoColor=white)](https://us.informatiweb-pro.net/virtualization/vmware/vmware-esxi-6-7-pci-passthrough.html)

[![KVM GPU Passthrough](https://img.shields.io/badge/KVM/QEMU-GPU%20Passthrough-AC0000?style=for-the-badge&logo=linux&logoColor=white)](https://wiki.archlinux.org/title/PCI_passthrough_via_OVMF)

[![Proxmox GPU Passthrough](https://img.shields.io/badge/Proxmox-GPU%20Passthrough-EE7623?style=for-the-badge&logo=proxmox&logoColor=white)](https://pve.proxmox.com/wiki/Pci_passthrough)

Disadvantage: any time attempting to run multiple roblox macro on a PC would consume extreme power.

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/13.png)

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/14.png)

If you are seeing your CPU continously at 100%, the temperature is fluctuate around 90-93 degree, either come at these solution

[![RDP Optimization Doc](https://img.shields.io/badge/RDP%20Optimization-Documentation-4285F4?style=for-the-badge&logo=google-drive&logoColor=white)](https://docs.google.com/document/d/1-tihlV3_0zDef1H_RfvneL18zDu7wW2__T1iGJQkCLQ/edit?tab=t.0)


[![Buy Intel CPU](https://img.shields.io/badge/Buy%20Intel%20CPU-Intel-0071C5?style=for-the-badge&logo=intel&logoColor=white)](https://www.intel.com/content/www/us/en/products/details/processors.html)


[![Buy AMD CPU](https://img.shields.io/badge/Buy%20AMD%20CPU-Ryzen-ED1C24?style=for-the-badge&logo=amd&logoColor=white)](https://www.amd.com/en/where-to-buy/processors/ryzen.html)


[![Buy CPU Accessories](https://img.shields.io/badge/Buy%20CPU%20Accessories-HoangHaPC-008000?style=for-the-badge&logo=amazonec2&logoColor=white)](https://hoanghapc.vn/linh-kien-may-tinh)


[![Buy PSU](https://img.shields.io/badge/Buy%20Power%20Supply-AnPhatPC-FF4500?style=for-the-badge&logo=hyper&logoColor=white)](https://www.anphatpc.com.vn/nguon-dien-may-tinh-psu.html)

[![Buy RAM](https://img.shields.io/badge/Buy%20RAM-MemoryZone-0066CC?style=for-the-badge&logo=dell&logoColor=white)](https://memoryzone.com.vn/ram)

[![Buy Gaming PC](https://img.shields.io/badge/Buy%20Gaming%20PC-GEARVN-FF0000?style=for-the-badge&logo=nvidia&logoColor=white)](https://gearvn.com/pages/pc-gvn)

9.  Reduction loops for vicious bee `natromacro.ahk`

Usage: if good attack, can reduce errors detection wrong with stick bug's totem, timing errors with vicious bee,etc

Loop fields (How many time attempt the vic,especially after dying, can be glitched)

```ahk
Loop 10 ; attempt each field a maximum of n (10) ;reduce loop lower
```

Time wait for attack: sometime can get error in attack and stand in a field for 10 minute

```ahk
if((nowUnix()-VBLastKilled)<(600)) { ;it has been less than 10 minutes since VB was found
```
10. Changement of the Title and icon, Themes.

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/7.jpg)

title: `natromacro.ahk`
```ahk 
MainGui := Gui((AlwaysOnTop ? "+AlwaysOnTop " : "") "+Border +OwnDialogs", "Natro Macro (Loading 0%)")
```

```ahk
SetLoadingProgress(percent) => MainGui.Title := "Natro Macro (Loading " Round(percent) "%)"
```

```ahk 
MainGui.Title := "NaAAAtro Macro"
```

icon:

locate `/nm_image_assets/auryn.ico`

Usage icon maker, converter website: [![Favicon.io](https://img.shields.io/badge/Favicon.io-Icon%20Maker-orange?style=flat-square&logo=googlechrome&logoColor=white)](https://favicon.io/)


theme:

Download functional themes at  [![Visual Styles](https://img.shields.io/badge/Visual%20Styles-Download%20Themes-blue?style=plastic&logo=paintbrush&logoColor=white)](https://www.skin-soft.co.uk/visualstyles/skingallery.aspx)


If you want a classic DEFAULT theme, either remove the `/nm_image_assets/styles/` or download a non functional theme such as [![Windows Aero](https://img.shields.io/badge/Windows%2011%20Aero-Download%20MSStyles-black?style=social&logo=windows&logoColor=blue)](https://www.deviantart.com/thetechnoguy18/art/Windows-11-aero-msstyles-for-Windows-10-906211554)

Default theme has trouble with UI compared to with themes. this could be issues with AHK 2.0 UI selection, AHK 1.0 is perfect with default theme.

![NATRO MACRO MOD](https://raw.githubusercontent.com/wikiepeidia/NATRO-MACRO-MOD/refs/heads/main/image/8.jpg)

11. additional feature from developer version to version does not have that feature yet

to hand on one of the developer versions  please join natro macro server [![natro macro](https://img.shields.io/discord/1012610056921038868?logo=discord&logoColor=white&label=Discord&labelColor=black&color=5865f2)](https://discord.com/channels/1012610056921038868)
and perform a server boost [![TUTORIAL](https://img.shields.io/badge/Boost%20Server-TUTORIAL-ff73fa?style=for-the-badge&logo=discord&logoColor=white)](https://support.discord.com/hc/en-us/articles/360028038352-Server-Boosting-FAQ)

**⚠️Attention: do not leak any of the developer version.**

in this case, version 1.0.0.3 is newer than version 1.0.1 developer beta. this is more like windows neptune 5111 versus windows xp 2600. 

we will not provide code for this section due to privacy issue but we will provide tips whether possible to transfer

Attention: we just recieved a warning from natro macro to not leak any informations. thus we will no longer provide anything here

If you are using that developer beta versions, consider everything is  DIY. 

For supports, only channels that is granted with the access to the pre release will help you.

leaking anywhere else could result in terminations,blacklist and etc..

concepts: if you want anything yourself, consider study where the functions and assets at.


12.  : installion of bot webhook:

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20TUTORIAL-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/watch?v=CIGZcUqpuVY)


13. puffshrrom attention timer

created despealtely by claude 3.7 from coplot github

announce puffshrrom so you will not forget.



14. Variable fider
python script to indentify hidden variables. As such if you want to set this variable, you will highly need to macro in Onedrive.
[![Download Script](https://img.shields.io/badge/Download-Comparison%20Script-brightgreen?style=for-the-badge&logo=github)](https://github.com/wikiepeidia/NATRO-MACRO-MOD/blob/main/scripts/comparision.py)
Usage: copy your `nm_config.ini` file into a folder (contain the scipt),change the name to something `nmconfigold.ini` run natro and only enable setting you would need to change, then close natro and copy the new one to the same folder. 
**Notice** you need to change the corresponding names in the script
Then when hidden variables found, you can attempt to change it in RC commands. There will be a high chance that this is not doable . 
Moreover, changing those setting could lead to script errors,other settings also changed as well, thus to make sure you can properly change those, we recommended macroing in Onedrive.
**you will most likely had to change it via another remote things, one of the best way is to macro in Onedrive.**
If you use onedrive, things get easier since you just need to copy and paste into your laptop/other devices macro, change it, then paste that into onedrive.
Moreover, this will also work in Mobile, in case that you don't have the computer, but just to make sure that you can't run AHK on phones and you need to read variables by yourself.
**ATTENTION to onedrive**: you need to stop the macro before doing any changes, else you can cause conflicts
cirtain Essential variables that cannot be changed,such as nectar preset Red blue white and Custom, and most of the AFB settings

<a name="DISCORD"><h2>🗨️🗣️ DISCORD</h2></a>
[**Join us on Discord!**][discord-link]

This is where you can connect with the community, access guides and help channels, and download custom patterns, paths, and themes!

Discord is our main platform for troubleshooting and update news!
 





<a href="https://discord.gg/natromacro">
  <picture>
    <source media="(prefers-color-scheme: light)" srcset="http://invidget.switchblade.xyz/natromacro?theme=light"> <!-- light theme -->
    <img alt="discord-invite-widget" width=500 src="http://invidget.switchblade.xyz/natromacro"> <!-- dark theme -->
  </picture>
</a>






<a name="contributing"><h2>⌨️ Contributing</h2></a>

Natro Macro is an open-source project. We greatly appreciate all contributions, whether you are helping us fix bugs or suggesting new features. If you want to get started, read our [Contributing Guidelines][contributing-link] first.

- **Bugs**: If you find an issue or run into an error message while using the macro, please create a [bug report][bug-report-link].
- **Suggestions**: If you have an idea for a feature that you'd like to see in the macro, please submit a [suggestion][suggestion-link].
- **FORK** if you want to mod natro macro of your own and share to other.

For discussions,BUG errors please join us on [Discord][discord-link] instead!


<a name="credits"><h2>💝 Credits</h2></a>

Natro Macro wouldn't be possible without the help and inspiration of many extraordinary individuals.<br>
We want to show our gratitude to all of you, so please check out our [list of credits][credits-link]!

Thank you all for your hard work and support!


<a name="stars"><h2>🌠 Stars</h2></a>

If Natro Macro helped you, let us know by giving it a ⭐ $\color{yellow}{\textsf{Star}}$ on GitHub!<br>
You can do this by scrolling up and clicking the Star button at the top of the page!

<a href="https://github.com/NatroTeam/NatroMacro/stargazers">
  <picture>
    <source media="(prefers-color-scheme: light)" srcset="http://reporoster.com/stars/NatroTeam/NatroMacro"> <!-- light theme -->
    <img alt="stargazer-widget" src="http://reporoster.com/stars/dark/NatroTeam/NatroMacro"> <!-- dark theme -->
  </picture>
</a>

<a name="ARCHIVABILITY"><h2>📼ARCHIVIBALITY</h2></a>

if you would like to have other version of natro macro, or zez's macro as historical, consider:

all version of natro macro is hosted on github: 

[![Natro Macro Releases](https://img.shields.io/badge/Natro%20Macro-All%20Versions-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/NatroTeam/NatroMacro/releases)


If you find old version of zez macro,or natro macro enhancement(the true OG natro), or any other macro that need to be archived ,consider posting to

[![Archive Old Macros](https://img.shields.io/badge/Archive-Submit%20OG%20Macros-990000?style=for-the-badge&logo=html5&logoColor=white)](https://archive.org/create/)

If you want to find them right now, i have uploaded some 

[![My Archive Uploads](https://img.shields.io/badge/Internet%20Archive-My%20Uploads-222222?style=for-the-badge&logo=html5&logoColor=white)](https://archive.org/details/@kfg20005)

**Attention: Do not upload beta version of Natro macro**. I have tested and it is immediately deleted.Account ban might triggered if violate multiple times



<a name="HELP"><h2>🆘Help</h2></a>
If the code is not functional,or if you would more customization please study AHK by yourself 

[![AutoHotkey Docs](https://img.shields.io/badge/AutoHotkey-Official%20Docs-6DA55F?style=for-the-badge&logo=bookstack&logoColor=white)](https://www.autohotkey.com/docs/) 

else please ask:

[![ChatGPT](https://img.shields.io/badge/ChatGPT-OpenAI%20Chat-00A67E?style=for-the-badge&logo=openai&logoColor=white)](https://chat.openai.com/)

[![Gemini AI](https://img.shields.io/badge/Google%20Gemini-Try%20AI-4285F4?style=for-the-badge&logo=google&logoColor=white)](https://gemini.google.com/u/0/app)

[![GitHub Copilot](https://img.shields.io/badge/GitHub%20Copilot-Try%20AI-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/features/copilot)

[![BlackBox AI](https://img.shields.io/badge/BlackBox%20AI-Code%20Faster-000000?style=for-the-badge&logo=codeforces&logoColor=white)](https://www.blackbox.ai/)

[![Microsoft Copilot](https://img.shields.io/badge/Microsoft%20Copilot-Try%20AI-0078D4?style=for-the-badge&logo=robot-framework&logoColor=white)](https://copilot.microsoft.com/)

[![Claude AI](https://img.shields.io/badge/Claude%20AI-Chat%20Now-ff9900?style=for-the-badge&logo=anthropic&logoColor=white)](https://claude.ai/new)


[![DeepSeek Chat](https://img.shields.io/badge/DeepSeek%20AI-Chat%20Now-5E60CE?style=for-the-badge&logo=deepnote&logoColor=white)](https://chat.deepseek.com/)

[![Reddit: r/AutoHotkey](https://img.shields.io/badge/Reddit-r%2FAutoHotkey-FF4500?style=for-the-badge&logo=reddit&logoColor=white)](https://www.reddit.com/r/AutoHotkey/)

[![Stack Overflow: AutoHotkey](https://img.shields.io/badge/Stack%20Overflow-AutoHotkey-FF9900?style=for-the-badge&logo=stackoverflow&logoColor=white)](https://stackoverflow.com/questions/tagged/autohotkey)

[![Discord Support](https://img.shields.io/badge/Discord-AHK%20DISCISSION%20NATRO-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://ptb.discord.com/channels/1012610056921038868/1190836918804561971)

<a name="license"><h2>📝 License</h2></a>
Copyright © 2022-2025 [Natro Team][github-profile-link]<br>
This project is licensed under [GNU GPL v3.0](./LICENSE.md)
<a name="contriutinon"><h2>💁 contribution</h2></a>

| Contributor         | Purpose/What They Do                                      |
|---------------------|----------------------------------------------------------|
| **Natro Macro**     | Main project of course                                   |
| **ChatGPT**         | Provide `Shield.io` links, provide working scripts        |
| **GitHub Copilot**  | Provide working scripts                                 |
| **Simple Icons**    | Provide `Shield.io` icons                                 |
| **wikiepeidia**       | Provide links, YouTube tutorials, and images           |
| **Other Authors**   | RDP, field editor script, documents, etc.              |





<!-- links -->
[latest-release-shield]: https://img.shields.io/github/v/release/NatroTeam/NatroMacro?logo=github&logoColor=white&labelColor=black&color=faa125
[latest-release-link]: https://github.com/NatroTeam/NatroMacro/releases/latest
[downloads-shield]: https://img.shields.io/github/downloads/NatroTeam/NatroMacro/total?label=downloads&labelColor=black&color=40ca53&logo=data:image/svg%2bxml;base64,PHN2ZwogICB2aWV3Qm94PSIwIDAgMjQgMjQiCiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPHBhdGgKICAgICBmaWxsPSIjZmZmIgogICAgIGQ9Ik0gMTIsMC4yMDk2MTUxNSBBIDExLjc5MDM4NSwxMS43OTAzODUgMCAxIDAgMjMuNzkwMzg1LDEyIDExLjc5MDM4NSwxMS43OTAzODUgMCAwIDAgMTIsMC4yMDk2MTUxNSBaIE0gOS4zMDAwMDE5LDkuOTgzODQ0MiAxMC44MjA5NjIsMTEuNTE2NTk0IFYgNC45MjU3NjkxIGggMi4zNTgwNzYgViAxMS41MTY1OTQgTCAxNC42OTk5OTgsOS45OTU2MzQ2IDE2LjM2MjQ0MiwxMS42NTgwNzkgMTIsMTYuMDIwNTIxIDcuNjI1NzY3MiwxMS42NTgwNzkgWiBNIDE2LjcxNjE1NCwxOS4wNzQyMzEgSCA3LjI4Mzg0NjEgdiAtMi4zNTgwNzcgaCA5LjQzMjMwNzkgeiIKICAgICAvPgo8L3N2Zz4K
[downloads-link]: https://github.com/NatroTeam/NatroMacro/releases
[roblox-shield]: https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fgroups.roblox.com%2Fv1%2Fgroups%2F16490149&query=%24.memberCount&suffix=%20members&logo=roblox&logoColor=white&label=roblox&labelColor=black&color=dc3544
[roblox-link]: https://www.roblox.com/groups/16490149/Natro-Macro
[discord-shield]: https://img.shields.io/discord/1012610056921038868?logo=discord&logoColor=white&label=discord&labelColor=black&color=5865f2
[discord-link]: https://discord.gg/natromacro
[contributing-link]: https://github.com/NatroTeam/.github/blob/main/CONTRIBUTING.md
[credits-link]: https://github.com/NatroTeam/.github/blob/main/CREDITS.md
[bug-report-link]: https://github.com/NatroTeam/NatroMacro/issues/new?assignees=&labels=bug%2Cneeds+triage&projects=&template=bug.yml
[suggestion-link]: https://github.com/NatroTeam/NatroMacro/issues/new?assignees=&labels=suggestion%2Cneeds+triage&projects=&template=suggestion.yml
[github-profile-link]: http://github.com/NatroTeam
[discord-banner-link]: https://invidget.switchblade.xyz/natromacro
