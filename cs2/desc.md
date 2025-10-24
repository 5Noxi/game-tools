# Counter-Strike 2 Tool

| Option                | Details                                                           |
|-----------------------------------|-------------------------------------------------------------------|
| `cs2_video.txt` & `cs2_machine_convars.vcfg` | Replaces specific lines to configure game settings     |
| `autoexec.cfg`                    | Configuration (console commands) – Doesn't remove current commands |
| **QoS Policy**                    | - High priority packet handling (DSCP) <br> - No bandwidth throttling <br> [Placeholder](https) includes more information|


Reference:
- https://developer.valvesoftware.com/wiki/Command_line_options
- https://developer.valvesoftware.com/wiki/Command_line_options_(Source_2)
- https://totalcsgo.com/commands

TUI Preview:

![](https://github.com/5Noxi/game-tools/blob/main/cs2/media/cs2tui.png?raw=true)

# Steam Launch Settings

Open Steam, go into your library, right click on Counter-Strike 2 and go into `Propeties`:
```ps
+exec autoexec -nojoy -full -forcenovsync -novid
```

Reference:
- https://developer.valvesoftware.com/wiki/Command_line_options
- https://developer.valvesoftware.com/wiki/Command_line_options_(Source_2)

How it could look:

![](https://github.com/5Noxi/game-tools/blob/main/cs2/media/mrls.png?raw=true)