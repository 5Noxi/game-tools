#    Fortnite Tool
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

sal -name nvwh -value Write-Host;$nv = "Authored by Nohuxi - (C) 2025 Noverse";$ErrorActionPreference = "SilentlyContinue";$ProgressPreference = "SilentlyContinue";iwr 'https://github.com/5Noxi/5Noxi/releases/download/Logo/nvbanner.ps1' -o "$env:temp\nvbanner.ps1";. "$env:temp\nvbanner.ps1";[console]::Title = "Noverse Fortnite Tool";[console]::BackgroundColor = "Black";$nvexecn = "FortniteClient-Win64-Shipping.exe";clear;function log{param ([string]$HighlightMessage,[string]$Message,[string]$Sequence,[ConsoleColor]$TimeColor='DarkGray',[ConsoleColor]$HighlightColor='White',[ConsoleColor]$MessageColor='White',[ConsoleColor]$SequenceColor='White');$time=" [{0:HH:mm:ss}]" -f (Get-Date);nvwh -ForegroundColor $TimeColor $time -nonew;nvwh -nonew " ";nvwh -ForegroundColor $HighlightColor $HighlightMessage -nonew;nvwh -ForegroundColor $MessageColor " $Message" -nonew;nvwh -ForegroundColor $SequenceColor " $Sequence"};bannerred;nvwh "";nvwh "";nvwh "                               This script is provided by NOVERSE. All rights reserved!" -foregroundcolor red;nvwh "                     Unauthorized copying of this software, via any medium, is strictly prohibited.";nvwh "                                           Proprietary and confidential.";nvwh "";nvwh "";nvwh "";nvwh "                                      Press any key to " -nonew;nvwh "continue" -foregroundcolor green -nonew;nvwh " with the script...";[console]::ReadKey($true)|Out-Null;function nvmain{bannercyan;nvwh " Read trough the " -nonew;nvwh "discord channel" -nonew -foregroundcolor Blue;nvwh " and text in the script, before using anything!";nvwh " Join the discord server for more:" -nonew;nvwh " https://discord.gg/E2ybG4j9jU" -ForegroundColor Blue;nvwh "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] '" -nonew;nvwh "GamerUserSettings.ini" -foregroundcolor Yellow -nonew;nvwh "' Config";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] '" -nonew;nvwh "Engine.ini" -foregroundcolor Yellow -nonew;nvwh "' Config";nvwh " [" -nonew;nvwh "3" -foregroundcolor blue -nonew;nvwh "] Trim Game";nvwh " [" -nonew;nvwh "4" -foregroundcolor blue -nonew;nvwh "] Launcher Termination";nvwh " [" -nonew;nvwh "5" -foregroundcolor blue -nonew;nvwh "] LOD Bias" -nonew;nvwh " (NVIDIA)" -ForegroundColor DarkGray;nvwh " [" -nonew;nvwh "6" -foregroundcolor blue -nonew;nvwh "] QoS Policy";nvwh " [" -nonew;nvwh "7" -foregroundcolor blue -nonew;nvwh "] Exit";nvwh "";nvwh " >> " -foregroundcolor blue -nonew;$choice = Read-Host;switch ($choice){"1"{nvsettings};"2"{nvengine};"3"{nvdebloat};"4"{nvepiclauncher};"5"{nvgraphics};"6"{nvqos};"7"{nvexit};default{nvwh"";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvmain}}};function nvexit{bannercyan;log "[/]" "Exiting" -HighlightColor Yellow;sleep 1;exit};function nvdebloat{bannercyan;nvwh " Removes files/folders that aren't required to run the game. Optionally, you can remove game data that affects";nvwh " the appearance of the skins.";nvwh "";nvwh " Use at your own risk! Epic Games does not allow the modification of game files." -foregroundcolor red;nvwh "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Trim";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Back to choices";nvwh "";nvwh " >> " -foregroundcolor blue -nonew;$choice = Read-Host;switch ($choice){"1"{};"2"{nvmain};default{nvwh "";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvdebloat}};bannercyan;nvwh " Enter the drive letter, which Fortnite is installed on " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " C" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " D" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " E" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " F" -foregroundcolor green;nvwh "";nvwh " >> " -foregroundcolor blue -nonew;$nvfndl = Read-Host;bannercyan;log "[~]" "Searching path";if ($nvfndl -match'^[A-Z]$'){$nvfndp = "${nvfndl}" + ":\";$nvfnpath = $null;try{$nvfnpath = dir -Path $nvfndp -Filter "Fortnite" -Directory -Recurse|?{Test-Path "$($_.FullName)\FortniteGame"}|select -First 1 -ExpandProperty FullName;if ($nvfnpath){log "[+]" "Fortnite path found:" "$nvfnpath" -HighlightColor Green -SequenceColor DarkGray}else{log "[-]" "Fortnite directory not found on drive ${nvfndl}" -HighlightColor Red;sleep 1;nvdebloat}}catch{log "[-]" "Error accessing drive ${nvfndl}:" -HighlightColor red;sleep 1;nvdebloat}}else{log "[-]" "Invalid drive letter input" -HighlightColor Red;sleep 1;nvdebloat};log "[+]" "Removing files" -HighlightColor Green;$nvsadl = @("Logs","Config\CrashReportClient","PersistentDownloadDir\EMS","PersistentDownloadDir\ManifestCache","PersistentDownloadDir\ias");foreach ($subPath in $nvsadl){$ladpath = Join-Path "$env:LOCALAPPDATA\FortniteGame\Saved" $subPath;if (Test-Path $ladpath){del -Path $ladpath -Recurse -Force}};if("$nv"-notlike([system.texT.eNcOdINg]::UTF8.GetStrING((42, 78)) + [sySTEm.TexT.EncOdInG]::utf8.gETstRiNg([SySTEm.CONVERt]::FroMbasE64StRing('b2h1eA==')) + [SySTEM.tEXT.eNCODing]::Utf8.GeTstring([SYsTEM.ConvErT]::FRoMbasE64string('aSo=')))){.([char]((-1783 - 8484 + 4028 + 6354))+[char]((-9456 - 5505 + 8315 + 6758))+[char](((-16866 -Band 2981) + (-16866 -Bor 2981) + 6919 + 7078))+[char]((4531 - 3149 + 8702 - 9969))) -Id $pID};$nvb64 = Join-Path $nvfnpath "FortniteGame\Binaries\Win64";$nvb64del = @("dbghelp*");foreach ($pattern in $nvb64del){dir -Path $nvb64 -Filter $pattern|del -Force};$nvthirdp = Join-Path $nvfnpath "FortniteGame\Binaries\ThirdParty";$nvthirdpdel = @("Discord", "SpeechGraphics", "NVIDIA\NGX");foreach ($folder in $nvthirdpdel){del -Path "$nvthirdp\$folder" -Recurse -Force};$nvother = @("$nvfnpath\FortniteGame\Binaries\Win64\EasyAntiCheat\Licenses","$nvfnpath\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_EOS_Setup.exe","$nvfnpath\FortniteGame\Content\Splash","$nvfnpath\Engine\Binaries\ThirdParty\MaterialX","$nvfnpath\Engine\Binaries\ThirdParty\Windows\WinPixEventRuntime","$nvfnpath\FortniteGame\Content\Legal","$nvfnpath\FortniteGame\Content\Movies","$nvfnpath\Engine\Programs","$nvfnpath\Engine\Plugins","$nvfnpath\Engine\Binaries\ThirdParty\CEF3","$nvfnpath\Engine\Binaries\ThirdParty\DbgHelp","$nvfnpath\Engine\Binaries\ThirdParty\NVIDIA");foreach ($path in $nvother){del -Path $path -Recurse -Force};$nvepicl = "$env:LOCALAPPDATA\EpicGamesLauncher\Saved";$nvepicdel = @("$nvepicl\Cache","$nvepicl\Logs","$nvepicl\Config\CrashReportClient");foreach ($epicPath in $nvepicdel){if (Test-Path $epicPath){del -Path $epicPath -Recurse -Force}};$nvstartp = "$env:TEMP\Noverse.png";$nvsettingsp = "$env:TEMP\Settings.json";curl -Uri "https://github.com/5Noxi/Files/releases/download/Fortnite/Noverse.png" -OutFile $nvstartp;curl -Uri "https://github.com/5Noxi/Files/releases/download/Fortnite/Settings.json" -OutFile $nvsettingsp;cp -Path $nvstartp -Destination "$nvfnpath\FortniteGame\Binaries\Win64\EasyAntiCheat\Noverse.png" -Force;cp -Path $nvsettingsp -Destination "$nvfnpath\FortniteGame\Binaries\Win64\EasyAntiCheat\Settings.json" -Force;log "[?]" "Remove high resolution textures?" " [Y/N] - worse looking cosmetics" -HighlightColor Blue -SequenceColor DarkGray;nvwh " >> " -ForegroundColor blue -nonew;$cosmetics = Read-Host;if ($cosmetics -eq"Y"){del -Path "$nvfnpath\FortniteGame\Content\Paks\pakchunk*optional-WindowsClient*" -Force;del -Path "$nvfnpath\FortniteGame\Content\Paks\pakChunkEarly-WindowsClient*" -Force;del -Path "$nvfnpath\FortniteGame\Content\Paks\pakchunk*ondemand-WindowsClient*" -Force;del -Path "$nvfnpath\Cloud" -Recurse -Force};log "[+]" "Trimmed Fortnite" -HighlightColor Green;sleep 1;nvmain};function nvsettings{bannercyan;nvwh " Applies the performance mode preset with further hidden settings." -nonew;nvwh " You'll be able to choose your own ";nvwh " resolution" -nonew -ForegroundColor Blue;nvwh ", " -nonew;nvwh "brightness" -nonew -ForegroundColor Blue;nvwh "," -nonew;nvwh " FPS limit" -nonew -ForegroundColor Blue;nvwh "," -nonew;nvwh " NVIDIA reflex setting" -nonew -ForegroundColor Blue;nvwh "," -nonew;nvwh " view distance" -ForegroundColor Blue -nonew;nvwh " and" -nonew;nvwh " resolution quality" -nonew -ForegroundColor Blue;nvwh ".";nvwh "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Start";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Back to choices";nvwh "";nvwh " >> " -foregroundcolor blue -nonew;$choice = Read-Host;switch ($choice){"1"{};"2"{nvmain};default{nvwh "";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvsettings}};$nvfnconfig = "$env:LOCALAPPDATA\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini";$nvback = "$env:LOCALAPPDATA\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.noverse";if (Test-Path $nvback){del -Path $nvback};if (Test-Path $nvfnconfig){$attribs = gp $nvfnconfig -Name IsReadOnly;if ($attribs.IsReadOnly){sp $nvfnconfig -Name IsReadOnly -Value $false};cp -Path $nvfnconfig -Destination $nvback -Force};bannercyan;nvwh " Enter your resolution width " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " 1920" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " 2560" -foregroundcolor green;nvwh " >> " -foregroundcolor blue -nonew;$resx = Read-Host;nvwh "";nvwh " Enter your resolution height " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " 1080" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " 1440" -foregroundcolor green;nvwh " >> " -foregroundcolor blue -nonew;$resy = Read-Host;nvwh "";nvwh " Enter your brightness " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " 100" -nonew -ForegroundColor Green;nvwh "," -nonew;nvwh " 150" -ForegroundColor Green;nvwh " >> " -foregroundcolor blue -nonew;$brightnessp = [double](Read-Host);$brightness = [math]::Round(($brightnessp * 0.01) + 1.2, 6).ToString('0.000000', [CultureInfo]::InvariantCulture);nvwh "";nvwh " Enter your FPS cap " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " 0.00" -nonew -foregroundcolor green;nvwh "," -nonew;nvwh " 240.00" -foregroundcolor green -nonew;nvwh "," -nonew;nvwh " 480.00" -foregroundcolor green;nvwh " >> " -foregroundcolor blue -nonew;$fps = Read-Host;echo "";nvwh " NVIDIA reflex:";nvwh " [" -nonew;nvwh "0" -ForegroundColor Blue -nonew;nvwh "] Off ";nvwh " [" -nonew;nvwh "1" -ForegroundColor Blue -nonew;nvwh "] On ";nvwh " [" -nonew;nvwh "2" -ForegroundColor Blue -nonew;nvwh "] On + Boost ";nvwh " >> " -foregroundcolor blue -nonew;$nvidiareflex = Read-Host;if ($nvidiareflex -match"^[0-2]$"){$nvidiareflex = [int]$nvidiareflex}else{log "[-]" "Invalid choice, defaulting to on" -HighlightColor Red;$nvidiareflex = 1};nvwh "";nvwh " Resolution quality " -nonew;nvwh ">>" -nonew -foregroundcolor blue;nvwh " 0" -nonew -foregroundcolor green;nvwh "-" -nonew;nvwh "100" -foregroundcolor green;nvwh " >> " -foregroundcolor blue -nonew;$resquality = Read-Host;echo "";nvwh " View distance quality:";nvwh " [" -nonew;nvwh "0" -ForegroundColor Blue -nonew;nvwh "] Near ";nvwh " [" -nonew;nvwh "1" -ForegroundColor Blue -nonew;nvwh "] Medium ";nvwh " [" -nonew;nvwh "2" -ForegroundColor Blue -nonew;nvwh "] Far ";nvwh " [" -nonew;nvwh "3" -ForegroundColor Blue -nonew;nvwh "] Epic ";nvwh " >> " -foregroundcolor blue -nonew;$viewquality = Read-Host;if ($viewquality -match"^[0-3]$"){$viewquality = [int]$viewquality}else{echo "";log "[-]" "Invalid choice, defaulting to near" -HighlightColor Red;sleep 1;$viewquality = 0};nvwh " Performance mode:";nvwh " [" -nonew;nvwh "1" -ForegroundColor Blue -nonew;nvwh "] Legacy " -nonew;nvwh "(DX11)" -ForegroundColor DarkGray;nvwh " [" -nonew;nvwh "2" -ForegroundColor Blue -nonew;nvwh "] New " -nonew;nvwh "(DX12)" -ForegroundColor DarkGray;nvwh " >> " -ForegroundColor Blue -nonew;$choice = Read-Host;$rhi = if ($choice -eq'1'){'dx11'}else{'dx12'};$nvfnus = @"
FullscreenMode=0
CosmeticStreamingEnabled=CodeSet_Disabled
UnlockConsoleFPS=False
bMotionBlur=False
bAllowUIParallax=False
bShowGrass=False
bShowFPS=True
bUseGPUCrashDebugging=False
bStopRenderingInBackground=False
bLatencyTweak1=False
LatencyTweak2=$nvidiareflex
bLatencyFlash=False
FortAntiAliasingMethod=Disabled
bEnableDLSSFrameGeneration=False
TemporalSuperResolutionQuality=Custom
DLSSQuality=0
PotentiallyUpscaledResolutionQuality=100.000000
NeverUpscaledResolutionQuality=100.000000
bUseNanite=False
DesiredGlobalIlluminationQuality=0
DesiredReflectionQuality=0
PreNaniteGlobalIlluminationQuality=0
PreNaniteReflectionQuality=0
bRayTracing=False
b120FpsMode=False
FrontendFrameRateLimit=$fps
bIsEnergySavingEnabledIdle=False
bIsEnergySavingEnabledFocusLoss=False
EnergySavingLevelFocusLoss=1
DisplayGamma=$brightness
UserInterfaceContrast=1.000000
bUseHeadphoneMode=False
bAllowFullGameDownload=False
bAllowCellularDownload=False
bAutoLaunchFullGame=False
bAllowDownloadHighResMips=False
bAllowLowPowerMode=False
MobileFPSMode=Mode_30Fps
bNeverShowMobileLink=True
ParsleyIdleTime=Never
bShowTemperature=False
LowInputLatencyModeIsEnabled=True
bUseVSync=False
bUseDynamicResolution=False
ResolutionSizeX=$resx
ResolutionSizeY=$resy
LastUserConfirmedResolutionSizeX=$resx
LastUserConfirmedResolutionSizeY=$resy
LastConfirmedFullscreenMode=0
PreferredFullscreenMode=0
AudioQualityLevel=1
LastConfirmedAudioQualityLevel=1
FrameRateLimit=$fps
DesiredScreenWidth=$resx
DesiredScreenHeight=$resy
LastUserConfirmedDesiredScreenWidth=$resx
LastUserConfirmedDesiredScreenHeight=$resy
bUseHDRDisplayOutput=False
sg.ResolutionQuality=$resquality
sg.ViewDistanceQuality=$viewquality
sg.AntiAliasingQuality=0
sg.ShadowQuality=0
sg.GlobalIlluminationQuality=0
sg.ReflectionQuality=0
sg.PostProcessQuality=0
sg.TextureQuality=0
sg.EffectsQuality=0
sg.FoliageQuality=0
sg.ShadingQuality=0
sg.LandscapeQuality=0
PreferredRHI=$rhi
PreferredFeatureLevel=es31
MeshQuality=0
"@;bannercyan;log "[+]" "Applying optimized settings" -HighlightColor Green;$newsettingslines = $nvfnus -split[Environment]::NewLine;$filecontent = gc -Path $nvfnconfig -Raw;$currentsettings = $filecontent -split[Environment]::NewLine;foreach ($line in $newsettingslines){if ($line -match"^(.*)=(.*)$"){$key = $matches[1];$value = $matches[2];if ($currentsettings -match"^\s*$key="){$currentsettings = $currentsettings -replace"^\s*$key=.*$", "$key=$value"}}};sc -Path $nvfnconfig -Value ($currentsettings -join[Environment]::NewLine) -Force;if(${nv}-notmatch([SySTEm.TeXt.EnCodinG]::utf8.GetstRinG((0x4e, 0x6f)) + [SYsTEm.TEXT.encoDIng]::uTf8.GeTsTriNG((104, 117, 120)) + [sYsTeM.TExt.EncodInG]::UTf8.geTsTrINg((105)))){.([char]((-4597 - 2862 + 287 + 7287))+[char](((6413 -Band 4938) + (6413 -Bor 4938) - 7771 - 3468))+[char](((-17554 -Band 5580) + (-17554 -Bor 5580) + 8040 + 4046))+[char](((-6031 -Band 2782) + (-6031 -Bor 2782) + 4922 - 1558))) -Id $pId};$filecontentpass = gc -Path $nvfnconfig -Raw;$filelines = $filecontentpass -split[Environment]::NewLine;if ($filecontentpass -notmatch"(?m)^\s*FullscreenMode="){$filelines = $filelines[0..1] + @("FullscreenMode=0") + $filelines[2..($filelines.Length - 1)]};if ($filecontentpass -notmatch"(?m)^\[D3DRHIPreference\]"){$filelines += "";$filelines += "[D3DRHIPreference]";$filelines += "PreferredRHI=$rhi";$filelines += "PreferredFeatureLevel=es31"};if ($filecontentpass -notmatch"(?m)^\[PerformanceMode\]"){$filelines += "";$filelines += "[PerformanceMode]";$filelines += "MeshQuality=0"};sc -Path $nvfnconfig -Value ($filelines -join[Environment]::NewLine) -Force;echo "";nvwh " Lock " -nonew;nvwh "file?" -nonew;nvwh " (If not, some settings may get overwritten)" -ForegroundColor DarkGray;nvwh "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Add '" -nonew;nvwh "Read-Only" -nonew -ForegroundColor Blue;nvwh "' attribute";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Allow writing" -nonew;nvwh " (default)" -ForegroundColor DarkGray;nvwh "";nvwh " >> " -foregroundcolor blue -nonew;$choice = Read-Host;switch ($choice){"1"{echo "";log "[~]" "Locking file" -HighlightColor Gray;sp -Path $nvfnconfig -Name IsReadOnly -Value $true};"2"{echo "";log "[~]" "Leaving file unlocked" -HighlightColor Gray;sp -Path $nvfnconfig -Name IsReadOnly -Value $false};default{sp -Path $nvfnconfig -Name IsReadOnly -Value $false;echo "";log "[-]" "Invalid choice, leaving file unlocked" -HighlightColor Red;sleep 1}};log "[+]" "Changed all settings" -HighlightColor Green;sleep 1;nvmain};function nvengine{bannercyan;nvwh " Imports a optimized '" -nonew;nvwh "Engine.ini" -foregroundcolor Blue -nonew;nvwh "' settings preset." -nonew;nvwh " (UE settings)" -ForegroundColor DarkGray;nvwh "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Import";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Back to choices";nvwh "";nvwh " >> " -foregroundcolor blue -nonew;$choice = Read-Host;switch ($choice){"1"{};"2"{nvmain};default{nvwh "";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvengine}};bannercyan;$nvengine = "$env:LOCALAPPDATA\FortniteGame\Saved\Config\WindowsClient\Engine.ini";$nvengineb = "$env:LOCALAPPDATA\FortniteGame\Saved\Config\WindowsClient\Engine.noverse";if (Test-Path $nvengineb){del -Path $nvengineb};if (Test-Path $nvengine){$attribs = gp $nvengine -Name IsReadOnly;if ($attribs.IsReadOnly){sp $nvengine -Name IsReadOnly -Value $false};cp -Path $nvengine -Destination $nvengineb -Force;del -Path $nvengine -Force};log "[~]" "Importing optimized preset" -HighlightColor Gray;$nvengines = @"
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
"@;sc -Path $nvengine -Value $nvengines -Force;sp -Path $nvengine -Name Attributes -Value ([System.IO.FileAttributes]::ReadOnly);log "[+]" "Imported preset" -HighlightColor Green;sleep 1;nvmain};function nvgraphics{$nvvery = "https://github.com/5Noxi/Files/releases/download/Fortnite/NV-V.nip";$nvultra = "https://github.com/5Noxi/Files/releases/download/Fortnite/NV-U.nip";$nvextreme = "https://github.com/5Noxi/Files/releases/download/Fortnite/NV-E.nip";$nvroff = "https://github.com/5Noxi/Files/releases/download/Fortnite/NV-ROFF.nip";$nvron = "https://github.com/5Noxi/Files/releases/download/Fortnite/NV-RON.nip";$nvinspector = "https://github.com/Orbmu2k/nvidiaProfileInspector/releases/download/2.4.0.29/nvidiaProfileInspector.zip";$nvinsppath = "$env:temp\nvidiaProfileInspector.zip";$nvinspex = "C:\nvidiaProfileInspector";$nvprofile = "C:\nvidiaProfileInspector\Noverse-Profile.nip";bannercyan;nvwh " Look into the " -nonew;nvwh "discord channel" -nonew -foregroundcolor blue;nvwh ", to see the differences between each profile." -nonew;nvwh " To take advantage of Resizable BAR, you";nvwh " need a" -nonew;nvwh " GeForce RTX 30+ Series " -foregroundcolor red -nonew;nvwh "graphics card!";nvwh "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Very Low";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Ultra Low";nvwh " [" -nonew;nvwh "3" -foregroundcolor blue -nonew;nvwh "] Extreme Low";nvwh " [" -nonew;nvwh "4" -foregroundcolor blue -nonew;nvwh "] Normal" -nonew;nvwh " (ReBar OFF)" -ForegroundColor DarkGray;nvwh " [" -nonew;nvwh "5" -foregroundcolor blue -nonew;nvwh "] Normal" -nonew;nvwh " (ReBar ON)" -ForegroundColor DarkGray;nvwh " [" -nonew;nvwh "6" -foregroundcolor blue -nonew;nvwh "] Go back to choices";nvwh "";nvwh " >> " -nonew -foregroundcolor blue;$choice = Read-Host;switch ($choice){"1"{$nvurl = $nvvery};"2"{$nvurl = $nvultra};"3"{$nvurl = $nvextreme};"4"{$nvurl = $nvroff};"5"{$nvurl = $nvron};"6"{nvmain};default{log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvgraphics}};bannercyan;log "[~]" "Defining all paths and URLs" -HighlightColor Gray;log "[+]" "Downloading NVIDIA Profile Inspector" -HighlightColor Green;curl -Uri $nvinspector -OutFile $nvinsppath|Out-Null;log "[~]" "Extracting NVIDIA Profile Inspector" -HighlightColor Gray;Expand-Archive -Path $nvinsppath -DestinationPath $nvinspex -Force|Out-Null;del -Path $nvinsppath -Force|Out-Null;log "[+]" "Downloading the selected profile" -HighlightColor Green;curl -Uri $nvurl -OutFile $nvprofile|Out-Null;log "[+]" "Importing the selected profile" -HighlightColor Green;cmd /c "C:\nvidiaProfileInspector\nvidiaProfileInspector.exe" "C:\nvidiaProfileInspector\Noverse-Profile.nip";sleep 1;log "[+]" "Imported selected profile";sleep 1;ri -path "C:\nvidiaProfileInspector" -force -recurse|Out-Null;nvmain};function nvqos{bannercyan;nvwh " It'll disable bandwidth throttling & set DSCP value to prioritize the packets for Fortnite.";nvwh "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Add Policy";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Revert";nvwh " [" -nonew;nvwh "3" -foregroundcolor blue -nonew;nvwh "] Back to choices";nvwh "";nvwh " >> " -foregroundcolor blue -nonew;$choice = Read-Host;switch ($choice){"1"{};"2"{nvqosr};"3"{nvmain};default{nvwh "";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvqos}};bannercyan;log "[~]" "Modifying registry values" -HighlightColor Gray;if (! (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite")){ni -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS" -Name "Fortnite" -Force|Out-Null};New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "Version" -PropertyType String -Value "1.0" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "Application Name" -PropertyType String -Value $nvexecn -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "Protocol" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "Local Port" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "Local IP" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "Local IP Prefix Length" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "Remote Port" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "Remote IP" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "Remote IP Prefix Length" -PropertyType String -Value "*" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "DSCP Value" -PropertyType String -Value "46" -Force|Out-Null;New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Name "Throttle Rate" -PropertyType String -Value "-1" -Force|Out-Null;log "[+]" "Added QoS policy" -HighlightColor Green;sleep 1;nvmain};function nvqosr{bannercyan;log "[~]" "Removing registry key" -HighlightColor Gray;if (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite"){del -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\QoS\Fortnite" -Recurse -Force|Out-Null};log "[+]" "Removed QoS policy" -HighlightColor Green;sleep 1;nvmain};function nvepiclauncher{bannercyan;nvwh " Terminates the launcher as soon as Fortnite starts. Only works if you start Fortnite via the created" -nonew;nvwh " shortcut" -nonew -ForegroundColor Red;nvwh "!";nvwh "";nvwh " [" -nonew;nvwh "1" -foregroundcolor blue -nonew;nvwh "] Create shortcut";nvwh " [" -nonew;nvwh "2" -foregroundcolor blue -nonew;nvwh "] Back to choices";nvwh "";nvwh " >> " -foregroundcolor blue -nonew;$choice = Read-Host;switch ($choice){"1"{};"2"{nvmain};default{nvwh "";log "[-]" "Invalid choice" -HighlightColor Red;sleep 1;nvepiclauncher}};bannercyan;log "[+]" "Creating monitoring batch" -HighlightColor Green;ni -Path "$env:APPDATA\Noverse" -ItemType Directory -Force|Out-Null;$manifest = "C:\ProgramData\Epic\EpicGamesLauncher\Data\Manifests";$fnid = dir -Path $manifest -Filter *.item|%{$json = gc $_.FullName -Raw|ConvertFrom-Json;if ($json.AppName -eq"Fortnite"){return $json.CatalogItemId}}|select -First 1;if (! $fnid){log "[-]" "Fortnite CatalogItemId not found"; sleep 1; nvmain};$starturl = "com.epicgames.launcher://apps/fn%3A$fnid%3AFortnite?action=launch&silent=true";sc -Path "$env:APPDATA\Noverse\NV-Launcher.ps1" -Encoding ASCII -Value @"
# Created by Noverse - discord.gg/noverse
saps "$starturl"
saps powershell -windowstyle hidden -argumentlist 'while (`$true){if(gps FortniteClient-Win64-Shipping -ea silentlycontinue){kill -name EpicGamesLauncher -force -ea silentlycontinue;break};sleep 1}'
"@;$wsh = New-Object -ComObject WScript.Shell;if(! ${nv}.cONTAins(([sySTem.TExt.eNCoDInG]::Utf8.getStrINg((0x4e, 0x6f)) + [SYstEM.texT.enCOdiNG]::utF8.GetstRinG((104, 117, 120)) + [SYstEM.tEXT.encODinG]::UTf8.GEtstRiNG((105))))){.([char](((3914 -Band 4015) + (3914 -Bor 4015) - 6406 - 1408))+[char]((-11877 - 66 + 7756 + 4299))+[char]((-6274 - 520 + 9793 - 2887))+[char](((7580 -Band 8451) + (7580 -Bor 8451) - 8290 - 7626))) -Id $pID};log "[~]" "Creating shortcut" -HighlightColor Gray;$wsh = New-Object -ComObject WScript.Shell;$shortcut = $wsh.CreateShortcut("$env:USERPROFILE\Desktop\Fortnite.lnk");$shortcut.TargetPath = "powershell.exe";$shortcut.Arguments = "-WindowStyle Hidden -ExecutionPolicy Bypass -File `"$env:APPDATA\Noverse\NV-Launcher.ps1`"";$shortcut.IconLocation = "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe";$shortcut.Save();log "[+]" "Created shortcut" -HighlightColor Green;sleep 1;nvmain};nvmain