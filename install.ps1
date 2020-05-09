# you read config.
. ./config.ps1

$config = [VMConfig]::new()

VBoxManage createvm --name $config.VMName --ostype $config.VMOStype --register

VBoxManage modifyvm $config.VMName --memory $config.VMMemory

VBoxManage modifyvm $config.VMName --vram $config.VMRam

VBoxManage modifyvm $config.VMName --cpus $config.VMCpus

VBoxManage createhd --filename "~/VirtualBox VMs/$($config.VMName)/$($config.VMName).vdi" --size $config.VDISize --format VDI

VBoxManage storagectl $config.VMName --name "SATA Controller" --add sata --controller IntelAhci

VBoxManage storageattach $config.VMName --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium "~/VirtualBox VMs/$($config.VMName)/$($config.VMName).vdi"

VBoxManage storagectl $config.VMName --name "IDE Controller" --add ide --controller PIIX4

VBoxManage storageattach $config.VMName --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium $config.isopath

VBoxManage sharedfolder add $config.VMName --name $config.VMShareName --hostpath "./share"
