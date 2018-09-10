#!/bin/bash
# Insider ISO
packer build \
  --only=vmware-iso \
  --var vhv_enable=true \
  --var iso_url=~/packer_cache/insider/Windows_InsiderPreview_Server_vNext_en-us_17744.iso \
  --var "docker_images=mcr.microsoft.com/nanoserver-insider:10.0.17744.1001 mcr.microsoft.com/windowsservercore-insider:10.0.17744.1001 mcr.microsoft.com/windows-insider:10.0.17744.1001" \
  windows_2019_docker.json
