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


<a name="installation"><h2>🛠️ Get ready</h2></a>

1. Download `Natro_Macro_v#.#.#.zip` from the [latest release of natro macro][latest-release-link] and extract
2. Installion of Auto hot key https://www.autohotkey.com/download/
3. Installion VS code https://code.visualstudio.com/
4. Start editing on VSCODE.

<a name="TIPS"><h2>💁 TIP</h2></a>
1. these mods i feel so good and make macro easier.
2. feel free to share to your friends. 

<a name="NOTICE"><h2>⚠️ NOTICE</h2></a>
1. i aint provide the natro macro in this fork. 
2. please edit the code yourself
3. i use this markdown to avoid have to post on my discord
4. all of these code are from chatgpt. failure could happen. version might vary. 

IMAGE
<a name="CODE"><h2>🧑‍💻 CODES</h2></a>
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
2.  `field_config.ini` editor GUI

credit: someone else i could not remember

Installion: put the file in root natro consisting of /settings folder

Tutorial: 
<a href="https://www.youtube.com/watch?v=luWwBXv_7LAk">
    <img src="https://i9.ytimg.com/vi/luWwBXv_7LA/mqdefault.jpg?v=670b42b7&sqp=CMzZ1r0G&rs=AOn4CLB5zDLmyCmBjo9FiQywLNDNOngGcg" width="600" height="400" />
</a>

3. Advanced tab Enabler

Image 

click on the Version multiple time to enable

4. Vicious bee hop macro

Installion: https://github.com/epicisgood/VicHopMacro

Usage: get stinger quick. No support for planters.

5. Natro so broke custom text

Emoji does not functional

Version 1.0.1 developer beta click many time on the 😩 face

Other version

```ahk
      if(ReconnectMessage && ((nowUnix()-LastNatroSoBroke)>3600)) { ;limit to once per hour
        LastNatroSoBroke:=nowUnix()
        Send "{Text}/[" A_Hour ":" A_Min ":" A_Sec "] Natro so broke  weary`n"
      sleep 250
    }
``` 

6. Guiding star custom text

```ahk 
        GSMins:=SubStr("0" Mod(A_Min+10, 60), -2)
        Sleep 200
        Send "{Text}/Guiding Star in " StringText " commune, tu liem hn at : [" A_Hour ":" A_Min ":" A_Sec "]`n"
        sleep 250
```
<a name="community"><h2>🌎 Community</h2></a>

7. Hive hub macro

Installion:https://github.com/huner2/NatroMacro/tree/hub_field_addition

Application for Image fix https://discord.com/channels/1012610056921038868/1305695364845928620

Pattern reccomedation: IMAGE

Notice: Apply ROBLOX image search fix due to very old version.Drift a lot and  no one willing to find a pattern


Usage: AFK stickers, hive hub stamp, leaderboard, hive hub badge.

IMAGE

Tool reccomedation: dark scythe.

8. RDP Setup

Application installion: rdp wrapper sebaxakerhtc  https://github.com/sebaxakerhtc/rdpwrap/releases

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
9. Reduction loops for vicious bee

Usage: if good attack, can reduce errors detection wrong with stick bug's totem, timing errors with vicious bee,etc

Loop fields (How many time attempt the vic,especially after dying, can be glitched)

```ahk
Loop 10 ; attempt each field a maximum of n (10) ;reduce loop lower
```

Time wait for attack: sometime can get error in attack and stand in a field for 10 minute

```ahk
if((nowUnix()-VBLastKilled)<(600)) { ;it has been less than 10 minutes since VB was found
```

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

For discussions, please join us on [Discord][discord-link] instead!


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


<a name="license"><details><summary><h4>📝 License</h4></summary></a>
Copyright © 2022-2024 [Natro Team][github-profile-link]<br>
This project is licensed under [GNU GPL v3.0](./LICENSE.md)

</details>

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
