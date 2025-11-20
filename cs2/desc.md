# Counter Strike 2 Tool

| Option                | Details                                                           |
|-----------------------------------|-------------------------------------------------------------------|
| `cs2_video.txt` & `cs2_machine_convars.vcfg` | Replaces specific lines to configure game settings     |
| `autoexec.cfg`                    | Configuration (console commands) – Doesn't remove current commands |
| **QoS Policy**                    | - High priority packet handling (DSCP) <br> - No bandwidth throttling <br> [win-config/network - QoS-Policy](https://github.com/5Noxi/win-config/blob/main/network/desc.md#qos-policy) includes more information|

## TUI Preview

![](https://github.com/5Noxi/game-tools/blob/main/cs2/media/cs2tui.png?raw=true)

## Steam Launch Settings

Open Steam, go into your library, right click on Counter-Strike 2 and go into `Propeties`:
```powershell
+exec autoexec -nojoy -full -forcenovsync -novid
```

> https://developer.valvesoftware.com/wiki/Command_line_options  
> https://developer.valvesoftware.com/wiki/Command_line_options_(Source_2)  
> https://totalcsgo.com/commands  

Example:

![](https://github.com/5Noxi/game-tools/blob/main/cs2/media/cs2ls.png?raw=true)

## Download

It might fail execution if the powershell execution policy is set to it's default values. See [PS Unrestricted Policy](https://github.com/5Noxi/win-config/blob/8144f2f151799c6140ad3ea895ce55e13064abb4/security/desc.md#ps-unrestricted-policy) for details.

> [brave/NV-Brave-Tool](https://github.com/5Noxi/app-tools/blob/main/brave/NV-Brave-Tool.ps1)