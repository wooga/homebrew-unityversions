$ErrorActionPreference = 'Stop';

$packageName        = 'unity@5.6.3f1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/d3101c3b8468/Windows64EditorInstaller/UnitySetup64-5.6.3f1.exe'
$checksum64         = 'dc139eb3e0b9d714b7a54f8e0e478f2eebfcbb0221b1eea40182f35080c1eb37'

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
