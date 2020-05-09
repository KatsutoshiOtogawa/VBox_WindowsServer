# VBox_WindowsServer
This script job is to Install Windows Server to Virtual Box.

## How to use

In advance, you are preparing iso file.

[Kali Linux](https://www.kali.org/)

[Manjaro Linux](https://manjaro.org/)

[Windows Server trial version](https://www.microsoft.com/en-US/cloud-platform/windows-server-trial)

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
