@{

    ScriptVersion        = "2.0"

    # Credentials for Local Admin account you created in the sysprepped (generalized) vhd image
    VMSize                     = "Standard_E8_v3"
    VMName                     = "SDN-11132019"
    VMLocalAdminUser           = "vidou"
    VMLocalAdminSecurePassword = "Azertyuiop!01" 
    ## Azure Account
    LocationName               = "FranceCentral"
    ResourceGroupName          = "RG-AZ-FRANCE"
    VnetName                   = "VNET1-AZ-FRANCE"
    SubnetName                 = "SUB-ARM-SRV-WIN"
    #SecurityGroupName          = "$($VMName)_NetSecurityGroup"
    #PublicIPAddressName        = "$($VMName)_PIP1"
    subscription               = "Microsoft Azure Internal Consumption"
    #NICName                    = "$($VMName)_NIC1"
    #DNSNameLabel               = $VMName
    storageType                = 'StandardSSD_LRS'

    NSGName                    = "NSG-AZ-FRANCE" 

    DiskNumber                 = 8
    DiskSizeGB                 = 128
    vDiskDriveLetter            = 'Z'
    AZFileShare     = "\\microrgsrvnewv092310260.file.core.windows.net\sdntemplate"
    AZFileUser      = "Azure\microrgsrvnewv092310260"
    AZFilePwd       = "w78qJNa3j46hmXpDY+D6DL0286n/5s+ePP3swCvNNX3KR28gDZCA3OBadKb3XUX+whNkP3m2mEmVV+FQ9HEThA=="
}


