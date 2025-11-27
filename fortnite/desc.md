# Fortnite Tool

| Option                 | Details                                                           |
|------------------------------------|-------------------------------------------------------------------|
| `GamerUserSettings.ini` Configuration | __Let you choose:__ <br> - Resolution <br> - FPS Cap <br> - View distance <br> - NVIDIA reflex <br> - Resolution quality <br> - Performance mode |
| `Engine.ini` Configuration         | Configuration settings for the game engine                        |
| **Game Trimming**                  | - Removes files/folders that aren't required to run the game <br> - Optionally remove: <br> &nbsp;&nbsp;&nbsp; - Game data that affects the appearance of skins <br> - Revert it by verifying the game files |
| **Auto Launcher Termination**      | - Creates a shortcut that starts Fortnite and terminates the launcher automatically <br> - It only works if launching the game via the shortcut |
| **Potato Graphics**                | - [`Very Low`](https://drive.google.com/file/d/18c2ZiRVdZm66IPg8x7_zMDK68YyC4v6O/view?usp=drive_link) <br> - [`Ultra Low`](https://drive.google.com/file/d/1HPFnDLX01KMtGAhzj0DVZf32hAHylWAU/view?usp=drive_link) <br> - [`Extreme Low`](https://drive.google.com/file/d/12l__vksd0BKo2BVCKjECdqdd43wUI9ev/view?usp=drive_link) <br> - `Revert ReBar OFF` <br> - `Revert ReBar ON` |
| **QoS Policy**                     | - High priority packet handling (DSCP) <br> - No bandwidth throttling <br> - [win-config/network - QoS-Policy](https://github.com/5Noxi/win-config/blob/main/network/desc.md#qos-policy) includes more information |

CL Arguments (UE):
>  https://dev.epicgames.com/documentation/en-us/unreal-engine/command-line-arguments-in-unreal-engine

## TUI Preview

![](https://github.com/5Noxi/game-tools/blob/main/fortnite/media/fntui.png?raw=true)

## Game Installation Options

Click on the three dots (librabry), then on `Options`. Enable `Pre-download Streamed Assets`:

![](https://github.com/5Noxi/game-tools/blob/main/fortnite/media/fninstall.png?raw=true)

## Download

It might fail execution if the powershell execution policy is set to it's default values. See [PS Unrestricted Policy](https://github.com/5Noxi/win-config/blob/main/security/desc.md#ps-unrestricted-policy) for details.

> [fortnite/NV-Fortnite-Tool](https://github.com/5Noxi/game-tools/blob/main/fortnite/NV-Fortnite-Tool.ps1)