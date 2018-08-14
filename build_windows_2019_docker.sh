#!/bin/bash
# Insider ISO
packer build \
  --only=vmware-iso \
  --var vhv_enable=true \
  --var iso_url=~/packer_cache/insider/Windows_InsiderPreview_Server_vNext_en-us_17733.iso \
  --var iso_checksum=a26740774eb9787c8363deac08c301317268d2bf8444e4d48540181eac112bbc \
  --var "docker_images=mcr.microsoft.com/nanoserver-insider:10.0.17733.1000 mcr.microsoft.com/windowsservercore-insider:10.0.17733.1000 mcr.microsoft.com/windows-insider:10.0.17733.1000" \
  windows_2019_docker.json
