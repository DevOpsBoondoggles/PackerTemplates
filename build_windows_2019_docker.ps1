if (Test-Path ./output-hyperv-iso) {
  Remove-Item -Recurse -Force ./output-hyperv-iso
}

packer build --only=hyperv-iso `
             --var iso_url=./iso/en_windows_server_2019_x64_dvd_4cb967d8.iso `
             --var iso_checksum="4C5DD63EFEE50117986A2E38D4B3A3FBAF3C1C15E2E7EA1D23EF9D8AF148DD2D" `
             windows_2019_docker.json
