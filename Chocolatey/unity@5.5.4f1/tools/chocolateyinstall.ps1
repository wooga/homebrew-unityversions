$ErrorActionPreference = 'Stop';

$packageName        = 'unity.5.5.4f1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/8ffd0efd98b1/Windows64EditorInstaller/UnitySetup64-5.5.4f1.exe'
$checksum64         = 'b02c80a6e16b9fc487e98242719e2415cac1b013bc0b040f77263181e0c98011'

$args = '/S'

$pp = Get-PackageParameters
if ($pp.InstallationPath) {
    $args += " /D=$($pp.InstallationPath)"
    Write-Host "Param: Installing to $($pp.InstallationPath)"
}

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'Unity'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = $args
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
