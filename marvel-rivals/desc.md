
# Marvel Rivals Tool

| Option                 | Details                                                           |
|------------------------------------|-------------------------------------------------------------------|
| `GameUserSettings.ini` Configuration | - Use `Performance` if your PC can barely get stable FPS <br> - Use `Balanced` if your PC can handle it (better quality) |
| `Engine.ini` Configuration         | Configuration settings for the game engine                        |
| **Game Trimming**                  | Removes files/folders that aren't required to run the game     |
| `launcher_config.xml` Config       | Configuration settings for the game launcher                     |
| **QoS Policy**                    | - High priority packet handling (DSCP) <br> - No bandwidth throttling <br> [Placeholder](https) includes more information|


TUI Preview:

![](https://github.com/5Noxi/game-tools/blob/main/marvel-rivals/media/mrtui.png?raw=true)

# Steam Launch Settings

Open Steam, go into your library, right click on Marvel Rivals and go into `Propeties` (these were taken from the source engine, Marvel Rivals uses UE5, and I didn't test if these do anything yet):
```ps
-nojoy -novid -forcenovsync
```

How it could look:

![](https://github.com/5Noxi/game-tools/blob/main/marvel-rivals/media/mrls.png?raw=true)