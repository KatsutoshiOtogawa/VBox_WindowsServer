class VMConfig {
    # you input WindowsOS　you wants into variable,if you don't know that,
    # you execute commands `VBoxmanagement list ostypes`,and you use nearest ID in displayed terminal. 
    # ex) $VMOStype = "Windows2019_64"
    [String] $VMOStype = "Windows2019_64"

    # Virtual Machine name. It is easy to understand for you.
    # ex) $VMName = "WindowsServer"
    [String] $VMName = "WindowsServer"

    # you input memory to use Virtual Machine. Unit is M. If you want to GUI, it is necessary at least 4096.
    [int] $VMMemory = 8192

    # you input Virtual Machine Vram. Unit is M. Upper limit for Vram is 256.
    [int] $VMRam = 256

    # Virtual Machine is using Number of Cpu.
    [int] $VMCpus = 4

    # you input Virtual Disk size. Unit is M.
    [int] $VDISize = 80000

    # you input iso path. ex) ~/Download/WindowsServer.iso
    # ex) $isopath = "~/Download/WindowsServer.iso"
    [String] $isopath = "/Volumes/VM_SSD/17763.1158.200413-1759.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_ja-jp.iso"
}

