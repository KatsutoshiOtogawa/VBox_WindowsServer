class VMConfig {
    # you input ostype you wants into variable,if you don't know that,
    # you execute commands `VBoxmanagement list ostypes`,and you use nearest ID in displayed terminal. 
    # ex) $VMOStype = "Windows2019_64"
    [String] $VMOStype = 

    # Virtual Machine name. It is easy to understand for you.
    # ex) $VMName = "WindowsServer"
    [String] $VMName = 

    # you input memory to use Virtual Machine. Unit is M. If you want to GUI, it is necessary at least 4096.
    # ex) [int] $VMMemory = 8192
    [int] $VMMemory = 

    # you input Virtual Machine Vram. Unit is M. Upper limit for Vram is 256.
    # ex) [int] $VMRam = 256
    [int] $VMRam = 

    # Virtual Machine is using Number of Cpu.
    # ex) [int] $VMCpus = 4
    [int] $VMCpus = 

    # you input Virtual Disk size. Unit is M.
    # ex) [int] 8192
    [int] $VDISize =  

    # you input iso path. ex) ~/Download/WindowsServer.iso
    # ex) $isopath = "~/Download/WindowsServer.iso"
    [String] $isopath = 
}

