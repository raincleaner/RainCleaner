$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'msi'
  url64bit       = 'https://raincleaner.eu/download/2.18.0/RainCleaner-Setup-2.18.0.msi'
  checksum64     = 'D7681A200EAEEB1784AE26B42A3AC58B3C90D3A7D0A335D430989DED646A2A09'
  checksumType64 = 'sha256'
  softwareName   = 'Rain Cleaner*'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
