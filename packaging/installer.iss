#define Version Trim(FileRead(FileOpen("..\VERSION")))
#define Year GetDateTimeString("yyyy","","")

[Setup]
AppName=CI_CMake_Test
OutputBaseFilename=CI_CMake_Test-{#Version}-Windows
AppCopyright=Copyright (C) {#Year} JUCE
AppPublisher=JUCE
AppVersion={#Version}
DefaultDirName="{commoncf64}\VST3"
DisableStartupPrompt=yes

[Files]
Source: "{src}..\Builds\Pamplejuce_artefacts\Release\VST3\Pamplejuce.vst3\*.*"; DestDir: "{commoncf64}\VST3\Pamplejuce.vst3\"; Check: Is64BitInstallMode; Flags: external overwritereadonly ignoreversion; Attribs: hidden system;
