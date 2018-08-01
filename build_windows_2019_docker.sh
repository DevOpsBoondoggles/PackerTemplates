#!/bin/bash
# Insider ISO
packer build \
  --only=vmware-iso \
  --var vhv_enable=true \
  --var iso_url=~/packer_cache/insider/Windows_InsiderPreview_Server_vNext_en-us_17723.iso \
  --var iso_checksum=b3deca38ed2bd8f85ee05ed340b05357ac51fb2a2c2f6d467853f62d2cb93a17 \
  --var "docker_images=mcr.microsoft.com/nanoserver-insider:10.0.17723.1000 mcr.microsoft.com/windowsservercore-insider:10.0.17723.1000 mcr.microsoft.com/windows-insider:10.0.17723.1000" \
  windows_2019_docker.json
