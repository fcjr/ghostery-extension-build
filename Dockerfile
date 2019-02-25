ARG version=1809
FROM mcr.microsoft.com/windows/servercore:$version

RUN powershell -ExecutionPolicy unrestricted -Command "Invoke-Expression ((New-Object Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
RUN choco install --confirm --limit-output --no-progress --ignore-checksums yarn googlechrome opera windows-sdk-10.1

