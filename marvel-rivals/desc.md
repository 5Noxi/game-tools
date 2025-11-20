# Marvel Rivals Tool

| Option                 | Details                                                           |
|------------------------------------|-------------------------------------------------------------------|
| `GameUserSettings.ini` Configuration | - Use `Performance` if your PC can barely get stable FPS <br> - Use `Balanced` if your PC can handle it (better quality) |
| `Engine.ini` Configuration         | Configuration settings for the game engine                        |
| **Game Trimming**                  | Removes files/folders that aren't required to run the game     |
| `launcher_config.xml` Config       | Configuration settings for the game launcher                     |
| **QoS Policy**                    | - High priority packet handling (DSCP) <br> - No bandwidth throttling <br> [win-config/network - QoS-Policy](https://github.com/5Noxi/win-config/blob/main/network/desc.md#qos-policy) includes more information|


## TUI Preview

![](https://github.com/5Noxi/game-tools/blob/main/marvel-rivals/media/mrtui.png?raw=true)

## Steam Launch Settings

Open Steam, go into your library, right click on Marvel Rivals and go into `Propeties` (these were taken from the source engine, Marvel Rivals uses UE5, and I didn't test if these do anything yet):

```powershell
-nojoy -novid -forcenovsync
```

Example:

![](https://github.com/5Noxi/game-tools/blob/main/marvel-rivals/media/mrls.png?raw=true)

## Download

It might fail execution if the powershell execution policy is set to it's default values. See [PS Unrestricted Policy](https://github.com/5Noxi/win-config/blob/8144f2f151799c6140ad3ea895ce55e13064abb4/security/desc.md#ps-unrestricted-policy) for details.

> [marvel-rivals/NV-Marvel-Tool](https://github.com/5Noxi/app-tools/blob/main/marvel-rivals/NV-Marvel-Tool.ps1)