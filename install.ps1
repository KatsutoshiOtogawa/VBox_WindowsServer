.config.ps1

VBoxManage createvm --name $VMName --ostype $VMOStype --register

VBoxManage modifyvm $VMName --memory $VMMemory

VBoxManage modifyvm $VMName --vram $VMRam

VBoxManage modifyvm $VMName --cpus $VMCpus

VBoxManage createhd --filename ~/VirtualBox\ VMs/$VMName/$VMName.vdi --size $VDISize --format VDI

VBoxManage storagectl $VMName --name "SATA Controller" --add sata --controller IntelAhci

VBoxManage storageattach $VMName --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium VirtualBox\ VMs/$VMName/$VMName.vdi

VBoxManage storagectl $VMName --name "IDE Controller" --add ide --controller PIIX4

VBoxManage storageattach $VMName --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium $isopath
