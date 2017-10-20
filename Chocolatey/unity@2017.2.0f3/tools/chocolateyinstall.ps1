$ErrorActionPreference = 'Stop';

$packageName        = 'unity.2017.2.0f3'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/46dda1414e51/Windows64EditorInstaller/UnitySetup64-2017.2.0f3.exe'
$checksum64         = 'df48bdc3e204c510e5a1fe257694a8b52f8bef477aaca975723936cec7bc91da'

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
