# Overwatch Tool

| Option                 | Details                                                           |
|------------------------------------|-------------------------------------------------------------------|
| `Settings_v0.ini` Configuration    | **Let you choose:** <br> - FPS Cap <br> - Shadow Detail <br> &nbsp;&nbsp;&nbsp; - Enabling shadows can give you an advantage in certain situations (if someone is above you and you can see their location based on the shadows) <br> - NVIDIA Reflex <br> You still have to apply the settings from the pictures above. |
| **QoS Policy**                    | - High priority packet handling (DSCP) <br> - No bandwidth throttling <br> [win-config/network - QoS-Policy](https://github.com/5Noxi/win-config/blob/main/network/desc.md#qos-policy) includes more information|

## TUI Preview

![](https://github.com/5Noxi/game-tools/blob/main/overwatch/media/owtui.png?raw=true)

## In-Game Settings

These are only the settings, which can't get applied via the script.

![](https://github.com/5Noxi/game-tools/blob/main/overwatch/media/ow1.png?raw=true)
![](https://github.com/5Noxi/game-tools/blob/main/overwatch/media/ow2.png?raw=true)
![](https://github.com/5Noxi/game-tools/blob/main/overwatch/media/ow3.png?raw=true)

## Download

It might fail execution if the powershell execution policy is set to it's default values. See [PS Unrestricted Policy](https://github.com/5Noxi/win-config/blob/8144f2f151799c6140ad3ea895ce55e13064abb4/security/desc.md#ps-unrestricted-policy) for details.

> [overwatch/NV-Overwatch-Tool](https://github.com/5Noxi/app-tools/blob/main/overwatch/NV-Overwatch-Tool.ps1)