#!/bin/bash
packer build --only=vmware-iso --var iso_url=~/packer_cache/insider/Windows10_InsiderPreview_EnterpriseVL_x64_en-us_19013.iso windows_10_insider.json

# packer build --only=vmware-iso \
#   --var iso_url=~/packer_cache/insider/uupdump_19025.1_PROFESSIONAL_X64_EN-US.iso \
#   --var iso_checksum=d9e98dd9187f2a251e733e3a2ca55354bd12780cb450a4eee41abbb9b1ae1058 \
#   --var autounattend=tmp/10_pro/Autounattend.xml \
#   windows_10_insider.json
