# VBox_install_iso
you install isofile into Virtual Box from terminal.

## How to use

In advance, you are preparing iso file.

[Kali Linux](https://www.kali.org/)

[Manjaro Linux](https://manjaro.org/)

[Gentoo Linux](https://www.gentoo.org/)

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
$ git clone https://github.com/KatsutoshiOtogawa/VBox_install_iso.git
$ cd VBox_install_iso
```
you config config.ps1, and you execute.

```
$ ./install.ps1
```

you want to use VM is setupping.

You type and execute below commands.
```
$ VBoxManage startvm you_naming_virtualmachine
```
You are launching you_naming_virtualmachine!

## How to use Share Folder

In advance, you configged $VMShareName.

If Using Guest OS is Windows,
```
net use x: \\vboxsvr\share
```
If System error 53 had occured,you dont install Virtualbox Guest Addition Tools yet.

you click
Menu > Deviceis > Insert Guest Guest Additions CD Image...

and, Guest OS is mounting Guest Addtion.
you execute comannd in Guest os.
```
$ Get-Volume
```

Drive letter is appeard on display, and Guest 

## How to destroy 
```
$ VBoxManage unregistervm you_naming_virtualmachine
```
and, delete Virtual Machine directory.



