VBoxManage createvm --name WindowsServer --ostype Windows2019_64 --register
VBoxManage modifyvm "WindowsServer" --memory 8192
VBoxManage modifyvm "WindowsServer" --vram 256
VBoxManage modifyvm "WindowsServer" --cpus 4
VBoxManage createhd --filename ~/VirtualBox\ VMs/WindowsServer/WindowsServer.vdi --size 80000 --format VDI
VBoxManage storagectl WindowsServer --name "SATA Controller" --add sata --controller IntelAhci
VBoxManage storageattach WindowsServer --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium VirtualBox\ VMs/WindowsServer/WindowsServer.vdi
VBoxManage storagectl WindowsServer --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach WindowsServer --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium /Volumes/VM_SSD/17763.1158.200413-1759.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_ja-jp.iso
