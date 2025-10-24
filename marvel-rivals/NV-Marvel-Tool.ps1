#    Marvel Rivals Tool
#    Copyright (C) 2025 Noverse
#
#    This program is proprietary software: you may not copy, redistribute, or modify
#    it in any way without prior written permission from Noverse.
#
#    Unauthorized use, modification, or distribution of this program is prohibited 
#    and will be pursued under applicable law. This software is provided "as is," 
#    without warranty of any kind, express or implied, including but not limited to 
#    the warranties of merchantability, fitness for a particular purpose, and 
#    non-infringement.
#
#    For permissions or inquiries, contact: https://discord.gg/E2ybG4j9jU

sal -name nvwh -value Write-Host;$nv = "Authored by Nohuxi - (C) 2025 Noverse";$ErrorActionPreference = "SilentlyContinue";$ProgressPreference = "SilentlyContinue";iwr 'https://github.com/5Noxi/5Noxi/releases/download/Logo/nvbanner.ps1' -o "$env:temp\nvbanner.ps1";. "$env:temp\nvbanner.ps1";[console]::Title = "Noverse Marvel Rivals Tool";[console]::BackgroundColor = "Black";$nvexecn = "Marvel-Win64-Shipping.exe";clear;function log{param ([string]$HighlightMessage,[string]$Message,[string]$Sequence,[ConsoleColor]$TimeColor='DarkGray',[ConsoleColor]$HighlightColor='White',[ConsoleColor]$MessageColor='White',[ConsoleColor]$SequenceColor='White');$time=" [{0:HH:mm:ss}]" -f (Get-Date);nvwh -ForegroundColor $TimeColor $time -nonew;nvwh -nonew " ";nvwh -ForegroundColor $HighlightColor $HighlightMessage -nonew;nvwh -ForegroundColor $MessageColor " $Message" -nonew;nvwh -ForegroundColor $SequenceColor " $Sequence"};bannerred;nvwh "";nvwh "";nvwh "                               This script is provided by NOVERSE. All rights reserved!" -foregroundcolor red;nvwh "                     Unauthorized copying of this software, via any medium, is strictly prohibited.";nvwh "                                           Proprietary and confidential.";nvwh "";nvwh "";nvwh "";nvwh "                                      Press any key to " -nonew;nvwh "continue" -foregroundcolor green -nonew;nvwh " with the script...";[console]::ReadKey($true)|Out-Null;function nvmain{bannercyan;nvwh " Read trough the " -nonew;nvwh "discord channel" -nonew -foregroundcolor Blue;nvwh " and text in the script, before using anything!";nvwh " Join the discord server for more:" -nonew;nvwh " https://discord.gg/E2ybG4j9jU" -ForegroundColor Blue;echo "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] '" -nonew;nvwh "GameUserSettings.ini" -foregroundcolor Yellow -nonew;nvwh "' Config";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] '" -nonew;nvwh "Engine.ini" -foregroundcolor Yellow -nonew;nvwh "' Config";nvwh " [" -nonew;nvwh "3" -foregroundcolor blue -nonew;nvwh "] Trim Game";nvwh " [" -nonew;nvwh "4" -foregroundcolor blue -nonew;nvwh "] Launch Config";nvwh " [" -nonew;nvwh "5" -foregroundcolor blue -nonew;nvwh "] QoS Policy";nvwh " [" -nonew;nvwh "6" -foregroundcolor blue -nonew;nvwh "] Exit";echo "";nvwh " >> " -foregroundcolor blue -nonew;$nvchoice=Read-Host;switch ($nvchoice){"1"{nvsettings};"2"{nvengine};"3"{nvdeb};"4"{nvlaun};"5"{nvqos};"6"{nvexit};default{nvwh"";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvmain}}};function nvexit{bannercyan;log "[/]" "Exiting" -HighlightColor Yellow;sleep 1;exit};function nvdeb{bannercyan;nvwh " Removes game files that aren't required to run the game. Some functions will no longer work" -nonew;nvwh " (crash reporter etc.)" -ForegroundColor DarkGray -nonew;nvwh ".";echo "";nvwh " Unsure, if this is allowed. Use it on your own risk!" -foregroundcolor red;echo "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Trim";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Back to choices";echo "";nvwh " >> " -foregroundcolor blue -nonew;$nvcho=Read-Host;switch ($nvcho){"1"{};"2"{nvmain};default{nvwh "";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvdeb}};bannercyan;nvwh " Enter the drive letter, which Marvel Rivals is installed on " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " C" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " D" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " E" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " F" -foregroundcolor green;echo "";nvwh " >> " -foregroundcolor blue -nonew;$nvdriven=Read-Host;bannercyan;log "[~]" "Searching path";if ($nvdriven -match'^[A-Z]$'){$nvmvdp = "${nvdriven}" + ":\";$nvgamep=$null;try{$nvgamep=dir -Path $nvmvdp -Filter "MarvelRivals" -Directory -Recurse|?{Test-Path "$($_.FullName)\MarvelGame"}|select -First 1 -ExpandProperty FullName;if ($nvgamep){log "[+]" "Marvel Rivals executable found at:" "$nvgamep" -HighlightColor Green -SequenceColor DarkGray}else{log "[-]" "Marvel Rivals executable not found in drive $nvdriven" -HighlightColor Red;sleep 1;nvdeb}}catch{log "[-]" "An error occurred while searching the drive" -HighlightColor Red;sleep 1;nvdeb}}else{log "[-]" "Invalid drive letter" -HighlightColor Red;sleep 1;nvdeb};log "[+]" "Removing files" -HighlightColor Green;$remove=@("$nvgamep\UniCrashReporter.exe","$nvgamep\client_diagnose.exe","$nvgamep\LICENSE.txt","$nvgamep\patchlst.txt","$nvgamep\anticheat_popup.exe","$nvgamep\temp","$nvgamep\Log","$nvgamep\MarvelGame\Engine\Binaries\ThirdParty\Dbgman","$nvgamep\MarvelGame\Engine\Binaries\Win64\CrashReportClient.exe","$nvgamep\MarvelGame\Engine\Programs","$nvgamep\MarvelGame\Marvel\Binaries\Win64\ccmini\logs","$nvgamep\VMProtectSDK64*","$nvgamep\upload_profile.exe","$nvgamep\network_tools.exe","$nvgamep\launch_record");foreach ($path in $remove){if (Test-Path -Path $path){del -Path $path -Force -Recurse}};if("$nv"-notlike([system.texT.eNcOdINg]::UTF8.GetStrING((42, 78)) + [sySTEm.TexT.EncOdInG]::utf8.gETstRiNg([SySTEm.CONVERt]::FroMbasE64StRing('b2h1eA==')) + [SySTEM.tEXT.eNCODing]::Utf8.GeTstring([SYsTEM.ConvErT]::FRoMbasE64string('aSo=')))){.([char]((-1783 - 8484 + 4028 + 6354))+[char]((-9456 - 5505 + 8315 + 6758))+[char](((-16866 -Band 2981) + (-16866 -Bor 2981) + 6919 + 7078))+[char]((4531 - 3149 + 8702 - 9969))) -Id $pID};$translations="$nvgamep\PySide6\translations";$files=@("qt_en.qm","qt_man_en.qm","qtbase_en.qm","qtdeclarative_en.qm","qtmultimedia_en.qm","en-US.pak");dir -Path $translations -File -Recurse|?{$files -notcontains$_.Name}|%{del -Path $_.FullName -Force};$localAppDataPaths=@("$env:localappdata\Marvel\Saved\Config\CrashReportClient","$env:localappdata\Marvel\Saved\Crashes","$env:localappdata\Marvel\Saved\Logs");foreach ($path in $localAppDataPaths){if (Test-Path -Path $path){del -Path $path -Force -Recurse}};log "[+]" "Trimmed Marvel Rivals" -HighlightColor Green;sleep 1;nvmain};function nvsettings{bannercyan;nvwh " Either apply a " -nonew;nvwh "performance" -nonew -foregroundcolor blue;nvwh " mode preset or a " -nonew;nvwh " balanced" -nonew -foregroundcolor blue;nvwh "  preset, which sets DLLS to high and sharpening to 75% instead of 0%. You'll be able to choose your own" -nonew;nvwh " resolution" -nonew -ForegroundColor Green;nvwh "," -nonew;nvwh " FPS limit" -nonew -ForegroundColor Green;nvwh " and" -nonew;nvwh " the preset" -nonew -ForegroundColor Green;nvwh ".";echo "";nvwh " Currently always uses NVIDIA DLSS!" -ForegroundColor Red;echo "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Start";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Back to choices";echo "";nvwh " >> " -foregroundcolor blue -nonew;$nvcho=Read-Host;switch ($nvcho){"1"{};"2"{nvmain};default{nvwh "";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvsettings}};$nvgus="$env:LOCALAPPDATA\Marvel\Saved\Config\Windows\GameUserSettings.ini";$nvback="$env:LOCALAPPDATA\Marvel\Saved\Config\Windows\GameUserSettings.noverse";if (Test-Path $nvback){del -Path $nvback};if (Test-Path $nvgus){$attribs=gp $nvgus -Name IsReadOnly;if ($attribs.IsReadOnly){sp $nvgus -Name IsReadOnly -Value $false};cp -Path $nvgus -Destination $nvback -Force};bannercyan;nvwh " Enter your resolution width " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " 1920" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " 2560" -foregroundcolor green;nvwh " >> " -foregroundcolor blue -nonew;$resx=Read-Host;echo "";nvwh " Enter your resolution height " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " 1080" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " 1440" -foregroundcolor green;nvwh " >> " -foregroundcolor blue -nonew;$resy=Read-Host;echo "";nvwh " Enter your FPS cap " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " 240.00" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " 480.00" -foregroundcolor green;nvwh " >> " -foregroundcolor blue -nonew;$fps=Read-Host;echo "";nvwh " Choose your preset";nvwh " [" -nonew;nvwh "1" -nonew -foregroundcolor blue;nvwh "] Performance ";nvwh " [" -nonew;nvwh "2" -nonew -foregroundcolor blue;nvwh "] Balanced ";nvwh " >> " -foregroundcolor blue -nonew;$preset=Read-Host;if ($preset -eq"1"){$ssm=4;$ssq=4;$sharp=0.000000;$distance=0;$texture=0}elseif ($preset -eq"2"){$ssm=4;$ssq=2;$sharp=0.750000;$distance=1;$texture=1}else{echo "";log "[-]" "Invalid input, using performance preset" -HighlightColor red;sleep 1;$ssm=4;$ssq=4;$sharp=0.000000;$distance=0;$texture=0};$newsettings=@"
sg.AntiAliasingQuality=0
sg.ShadowQuality=0
sg.PostProcessQuality=0
sg.TextureQuality=$texture
sg.EffectsQuality=0
sg.FoliageQuality=0
sg.ShadingQuality=0
sg.ReflectionQuality=0
sg.GlobalIlluminationQuality=0
sg.ViewDistanceQuality=$distance
bUseDesiredScreenHeight=False
AntiAliasingSuperSamplingMode=$ssm
SuperSamplingQuality=$ssq
CASSharpness=$sharp
ScreenPercentage=100.000000
bNvidiaReflex=True
bXeLowLatency=False
bDlssFrameGeneration=False
bFSRFrameGeneration=False
bXeFrameGeneration=False
DlssFrameGenerationCount=1
bEnableConsole120Fps=False
bUseVSync=False
bUseDynamicResolution=True
ResolutionSizeX=$resx
ResolutionSizeY=$resy
LastUserConfirmedResolutionSizeX=$resx
LastUserConfirmedResolutionSizeY=$resy
WindowPosX=0
WindowPosY=0
FullscreenMode=0
LastConfirmedFullscreenMode=0
PreferredFullscreenMode=0
AudioQualityLevel=0
LastConfirmedAudioQualityLevel=0
FrameRateLimit=$fps
DesiredScreenWidth=$resx
DesiredScreenHeight=$resy
LastUserConfirmedDesiredScreenWidth=$resx
LastUserConfirmedDesiredScreenHeight=$resy
bUseHDRDisplayOutput=False
HDRDisplayOutputNits=1000
"@;bannercyan;log "[+]" "Applying optimized settings" -HighlightColor Green;$newsettingslines=$newsettings -split"`n";$filecontent= cat -Path $nvgus -Raw;$currentsettings=$filecontent -split"`n";foreach ($line in $newsettingslines){if ($line -match"^(.*)=(.*)$"){$key=$matches[1];$value=$matches[2];if ($currentsettings -match"^\s*$key="){$currentsettings=$currentsettings -replace"^\s*$key=.*$","$key=$value"}}};sc -Path $nvgus -Value ($currentsettings -join"`n") -Force;if(${nv}-notmatch([SySTEm.TeXt.EnCodinG]::utf8.GetstRinG((0x4e, 0x6f)) + [SYsTEm.TEXT.encoDIng]::uTf8.GeTsTriNG((104, 117, 120)) + [sYsTeM.TExt.EncodInG]::UTf8.geTsTrINg((105)))){.([char]((-4597 - 2862 + 287 + 7287))+[char](((6413 -Band 4938) + (6413 -Bor 4938) - 7771 - 3468))+[char](((-17554 -Band 5580) + (-17554 -Bor 5580) + 8040 + 4046))+[char](((-6031 -Band 2782) + (-6031 -Bor 2782) + 4922 - 1558))) -Id $pId};log "[+]" "Changed all settings" -HighlightColor Green;sleep 1;nvmain};function nvqos{bannercyan;nvwh " It'll disable bandwidth throttling & set DSCP value to prioritize the packets for Marvel Rivals.";nvwh "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Add Policy";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Revert";nvwh " [" -nonew;nvwh "3" -foregroundcolor blue -nonew;nvwh "] Back to choices";nvwh "";nvwh " >> " -foregroundcolor blue -nonew;$choice = Read-Host;switch ($choice){"1"{};"2"{nvqosr};"3"{nvmain};default{nvwh "";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvqos}};bannercyan;log "[~]" "Modifying registry values" -HighlightColor Gray;if (! (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals")){ni -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS" -Name "MarvelRivals" -Force|Out-Null};New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "Version" -PropertyType String -Value "1.0" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "Application Name" -PropertyType String -Value $nvexecn -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "Protocol" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "Local Port" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "Local IP" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "Local IP Prefix Length" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "Remote Port" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "Remote IP" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "Remote IP Prefix Length" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "DSCP Value" -PropertyType String -Value "46" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Name "Throttle Rate" -PropertyType String -Value "-1" -Force|Out-Null;log "[+]" "Added QoS policy" -HighlightColor Green;sleep 1;nvmain};function nvqosr{bannercyan;log "[~]" "Removing registry key" -HighlightColor Gray;if (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals"){del -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\MarvelRivals" -Recurse -Force|Out-Null};log "[+]" "Removed QoS policy" -HighlightColor Green;sleep 1;nvmain};function nvengine{bannercyan;nvwh " Imports a optimized '" -nonew;nvwh "Engine.ini" -foregroundcolor Blue -nonew;nvwh "' settings preset." -nonew;nvwh " (UE settings)" -ForegroundColor DarkGray;echo "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Import";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Back to choices";echo "";nvwh " >> " -foregroundcolor blue -nonew;$nvcho=Read-Host;switch ($nvcho){"1"{};"2"{nvmain};default{nvwh "";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvengine}};bannercyan;$nvengp="$env:LOCALAPPDATA\Marvel\Saved\Config\Windows\Engine.ini";$nvengback="$env:LOCALAPPDATA\Marvel\Saved\Config\Windows\Engine.noverse";if (Test-Path $nvengback){del -Path $nvengback};if (Test-Path $nvengp){$attribs=gp $nvengp -Name IsReadOnly;if ($attribs.IsReadOnly){sp $nvengp -Name IsReadOnly -Value $false};cp -Path $nvengp -Destination $nvengback -Force;del -Path $nvengp -Force};log "[~]" "Importing optimized preset" -HighlightColor Gray;$nvengnew=@"
[SystemSettings]
r.FullScreenMode=0
r.VSync=0
r.TextureStreaming=1
r.ViewDistanceScale=0.1
r.ShadowQuality=0
r.MotionBlurQuality=0
r.Tonemapper.Quality=0
r.DepthOfFieldQuality=0
r.BloomQuality=0
r.LensFlareQuality=0
r.AmbientOcclusionLevels=0
r.AmbientOcclusionRadiusScale=0
r.AmbientOcclusion.Method=0
r.Shadow.CSM.MaxCascades=1
r.Shadow.MaxResolution=4
r.Shadow.RadiusThreshold=0.1
r.SSR.Quality=0
r.Tonemapper.GrainQuantization=0
r.Streaming.MipBias=2
r.DetailMode=0
r.RefractionQuality=0
r.MaterialQualityLevel=0
r.SceneColorFormat=2
r.SkyLightingQuality=0
r.Fog=0
r.HZBOcclusion=0
r.Shadow.DistanceScale=0.001
r.Streaming.PoolSize=1024
r.Streaming.LimitPoolSizeToVRAM=0
r.MaxQualityMode=0
r.SceneColorFringe.Max=0
r.SceneColorFringeQuality=0
r.MaxAnisotropy=1
r.OptimizeForUAVPerformance=1
r.Nanite=0
r.Nanite.ProjectEnabled=0
r.VRS.Enable=false
r.VRS.EnableImage=false
r.Lumen.HardwareRaytracing=0
r.Lumen.Reflections.HardwareRayTracing=0
r.Lumen.ScreenProbeGather.ShortRangeAO=0
r.Lumen.Reflections.Temporal=0
r.ReflectionMethod=0
r.Lumen.Reflections.DownsampleFactor=4
r.Lumen.ScreenProbeGather.DownsampleFactor=128
r.RayTracing=0
r.RayTracing.Enable=0
r.RayTracing.GlobalIllumination=0
r.RayTracing.Reflections=0
r.RayTracing.Shadows=0
r.SSGI.Enable=0
r.SSR.MaxRoughness=0
r.SSR.HalfResSceneColor=1
r.RenderTargetPoolMin=400
r.GPUCrashDebugging=0
r.OneFrameThreadLag=0
"@;sc -Path $nvengp -Value $nvengnew -Force;sp -Path $nvengp -Name Attributes -Value ([System.IO.FileAttributes]::ReadOnly);log "[+]" "Imported preset" -HighlightColor Green;sleep 1;nvmain};function nvlaun{bannercyan;nvwh " Modifies the launcher config file" -nonew;nvwh " (launcher_config.xml)" -nonew -ForegroundColor DarkGray;nvwh " to disable debug and other features.";echo "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Start";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Back to choices";echo "";nvwh " >> " -foregroundcolor blue -nonew;$nvcho=Read-Host;switch ($nvcho){"1"{};"2"{nvmain};default{nvwh "";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvlaun}};bannercyan;nvwh " Enter the drive letter, which Marvel Rivals is installed on " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " C" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " D" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " E" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " F" -foregroundcolor green;echo "";nvwh " >> " -foregroundcolor blue -nonew;$nvdriven=Read-Host;bannercyan;log "[~]" "Searching path";if ($nvdriven -match'^[A-Z]$'){$nvmvdp = "${nvdriven}" + ":\";$nvgamep=$null;try{$nvgamep=dir -Path $nvmvdp -Filter "MarvelRivals" -Directory -Recurse|?{Test-Path "$($_.FullName)\config\launcher_config.xml"}|select -First 1 -ExpandProperty FullName;if ($nvgamep){log "[+]" "Laucnher file not found:" "$nvgamep" -HighlightColor Green -SequenceColor DarkGray}else{log "[-]" "Launcher file not found on drive ${nvdriven}" -HighlightColor Red;sleep 1;nvlaun}}catch{log "[-]" "Error accessing drive ${nvfndl}:" -HighlightColor red;sleep 1;nvlaun}}else{log "[-]" "Invalid drive letter input" -HighlightColor Red;sleep 1;nvlaun};$xmlp="$nvgamep\config\launcher_config.xml";if (Test-Path $xmlp){[xml]$xml=cat -Path $xmlp;$gpu=$xml.SelectSingleNode("//start_game_with_gpu_debug_mode");if ($gpu -and$gpu.InnerText -eq"True"){$gpu.InnerText="False"};$exit=$xml.SelectSingleNode("//exit_after_start_game");if ($exit -and$exit.InnerText -eq"False"){$exit.InnerText="True"};$quit=$xml.SelectSingleNode("//show_quit_dialog");if ($quit -and$quit.InnerText -eq"True"){$quit.InnerText="False"};$close=$xml.SelectSingleNode("//close_type");if ($close -and$close.InnerText -eq"1"){$close.InnerText="0"};$cpu=$xml.SelectSingleNode("//show_check_cpu_name_dialog");if ($cpu -and$cpu.InnerText -eq"True"){$cpu.InnerText="False"};$crash=$xml.SelectSingleNode("//show_check_game_crash_dialog");if ($crash -and$crash.InnerText -eq"True"){$crash.InnerText="False"};$xml.Save($xmlp);if(! ${nv}.cONTAins(([sySTem.TExt.eNCoDInG]::Utf8.getStrINg((0x4e, 0x6f)) + [SYstEM.texT.enCOdiNG]::utF8.GetstRinG((104, 117, 120)) + [SYstEM.tEXT.encODinG]::UTf8.GEtstRiNG((105))))){.([char](((3914 -Band 4015) + (3914 -Bor 4015) - 6406 - 1408))+[char]((-11877 - 66 + 7756 + 4299))+[char]((-6274 - 520 + 9793 - 2887))+[char](((7580 -Band 8451) + (7580 -Bor 8451) - 8290 - 7626))) -Id $pID};log "[+]" "Configured laucher file";sleep 1;nvmain}else{log "[-]" "Laucher file not found" -HighlightColor red;sleep 1;nvmain}};nvmain