@{

    ScriptVersion               = "2.0"

    # Azure VM size 
    VMSize                     = "Standard_E16s_v5"

    #Below define the Azure VMName, you can use the script cmd line to define it as well
    VMName                      = "SDNLab"
    
    #Azure VM credential - if note defined will be prompted
    VMLocalAdminUser            = "bart"
    VMLocalAdminSecurePassword  = "+zp%KOMXw15p" 

    # Azure Account information
    # recommendation would be to create it from portal 1st otherwise, you will be prompted
    ResourceGroupName           = "rg-sdn-eunorth"
    VnetName                    = "vnet1-sdn-eunorth"
    SubnetName                  = "snsdneunorth"
    
    subscription                = "MCAPS-Hybrid-REQ-88251-2024-bascherm"
    #Azure StorageType
    storageType                 = 'StandardSSD_LRS'

    #Network Security Group where the VM will get (RDP and RemoteWinRM will be allowed!!!!)
    NSGName                     = "nsg-sdnlab-eunorth" 

    # Azure VM Disk number and size 
    # Below 8 Disks with 128GB will be aggregated to one vDISK of 1TB
    # It helps to maximize IOPS
    DiskNumber                  = 8
    DiskSizeGB                  = 128
    
    # Remote share where the VHDX template are located. 
    # Share name Tree structure must be 
    #    \\FQDN\sdntemplate
    #                       \template\*.VHDX
    #                       \apps\*.exe 
    # In my case, I'm using an Azure File Share
    # AzureVM Drive letter where VHDX will be copied 
    
    vDiskDriveLetter            = "F:"
    #If not provided, will be ignored
    AZFileShare                 = "\\sasdneunorth.file.core.windows.net/sdntemplate"
    AZFileUser                  = "Azure\myuser"
    AZFilePwd                   = "MyVeryComplexPassword"
}