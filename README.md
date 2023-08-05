# RHCE Lab

My lab environment for studying for RHCE on a Windows host. The kickstart files are purposefully left very bare to get maximum practice. The kickstart could easily be edited to automate the environment even more.

- [RHCE Lab](#rhce-lab)
  - [Requirements](#requirements)
  - [Prep](#prep)
  - [Build Lab](#build-lab)
  - [Login](#login)
  - [Roadmap](#roadmap)
  - [License](#license)

## Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [RHEL 9 ISO](https://access.redhat.com)
- [Packer](https://developer.hashicorp.com/packer/downloads)

## Prep

1. Install VirtualBox
2. Clone the repo
3. Place RHEL 9 ISO in the project directory root
4. Download packer zip and extract `packer.exe` to the project directory root

## Build Lab

> NOTE: Ensure you have sufficient CPU/RAM/Storage on your machine to support 3 machines. Edit the packer files accordingly to fit your environment.

```PowerShell
>_ .\packer.exe validate rhel.vbox.pkr.hcl
>_ .\packer.exe build rhel.vbox.pkr.hcl
```

## Login

In VirtualBox, before turning on the machines I set the network adapters to "Bridged" so I can ssh from my host machine to the guests to make life easier. Then I can simply run the VMs in headless mode.

These are the default accounts set in the kickstart files. Change as desired.

| username | password |
| -------- | -------- |
| root     | toor     |
| ladmin   | password |

## Roadmap

This guide covers running in Windows for now. Linux and Mac may come later.

## License

MIT License

See [LICENSE](./LICENSE) to see the full text
