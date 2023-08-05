source "virtualbox-iso" "stigged" {
    guest_os_type = "RedHat_64"
    guest_additions_mode = "disable"

    iso_url = "rhel-9.2-x86_64-dvd.iso"
    iso_checksum = "sha256:A18BF014E2CB5B6B9CEE3EA09CCFD7BC2A84E68E09487BB119A98AA0E3563AC2"

    cpus = 2
    memory = 4000
    disk_size = 51200

    http_directory = "http"
    boot_command = [
        "<up><wait><tab><wait>",
        " inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/stigged.ks.cfg<enter> fips=1"
    ]

    # headless = true
    keep_registered = true
    skip_export = true
    disable_shutdown = true
    shutdown_timeout = "20m"

    communicator = "none"
    virtualbox_version_file = ""
}

build {
    sources = [
        "sources.virtualbox-iso.stigged",
    ]
}