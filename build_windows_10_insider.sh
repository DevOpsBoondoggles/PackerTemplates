#!/bin/bash
packer build --only=vmware-iso --var iso_url=~/packer_cache/insider/Windows10_InsiderPreview_EnterpriseVL_x64_en-us_18912.iso windows_10_insider.json
