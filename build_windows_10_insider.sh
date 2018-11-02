#!/bin/bash
packer build --only=vmware-iso --var iso_url=~/Downloads/Windows10_InsiderPreview_Client_x64_en-us_18272.iso windows_10_insider.json

