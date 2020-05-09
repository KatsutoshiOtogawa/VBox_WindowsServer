# VBox_install_iso
you install isofile into Virtual Box from terminal.

## How to use

In advance, you are preparing iso file.

[Kali Linux](https://www.kali.org/)

[Manjaro Linux](https://manjaro.org/)

[Calculate Linux](https://www.calculate-linux.org/)

[Windows Server trial version](https://www.microsoft.com/en-US/cloud-platform/windows-server-trial)

If you use GUI, you need VirtualBox Guest Aditions.

[Oracle Docs](https://www.oracle.com/virtualization/technologies/vm/downloads/virtualbox-downloads.html)

if you dont use Windows os, you need to install powreshell.

Mac user is need to homebrew. if you installed homebrew, you type and execute below command.
```
$ brew cask install powershell
```

Linux user is reffering to below link.

[Microsoft Docks](https://docs.microsoft.com/en-US/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7)

```
$ git clone https://github.com/KatsutoshiOtogawa/VBox_WindowsServer.git
$ cd VBox_WindowsServer
```
you config config.ps1, and you execute.

```
$ install.ps1
```

you want to use VM is setupping.

You type and execute below commands.
```
$ VBoxManage startvm you_naming_virtualmachine
```
You are launching you_naming_virtualmachine!

## How to destroy 
```
$ VBoxManage unregistervm you_naming_virtualmachine
```
