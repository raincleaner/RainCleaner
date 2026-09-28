$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'msi'
  url64bit       = 'https://raincleaner.eu/download/2.12.3/RainCleaner-Setup-2.12.3.msi'
  checksum64     = 'F9222386864EC07BC55904AF7385D5648C4DC231D073CA81A361899C94B7B99B'
  checksumType64 = 'sha256'
  softwareName   = 'Rain Cleaner*'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
