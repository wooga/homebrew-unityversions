$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@5.5.2f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/3829d7f588f3/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.5.2f1.exe'
$checksum64     = 'd7bc103fc57d2724f27758f2f1ccbce93acce18a2bd40892bbce8ea89bdd06e6'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
