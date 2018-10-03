#!/bin/bash
# Insider ISO
packer build \
  --only=vmware-iso \
  --var vhv_enable=true \
  --var iso_url=~/downloads/17763.1.180914-1434.rs5_release_SERVER_EVAL_x64FRE_en-us.iso \
  --var "docker_images=mcr.microsoft.com/nanoserver:sac2019 mcr.microsoft.com/windowsservercore:ltsc2019 mcr.microsoft.com/windows:ltsc2019" \
  windows_2019_docker.json
