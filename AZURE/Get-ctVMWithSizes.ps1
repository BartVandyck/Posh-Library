
Function Get-ctVMWithSizes()
{
    <#
    .SYNOPSIS
     Utlity function to easely export VM machines and there sizes.
    
    .DESCRIPTION
    Utlity function to easely export VM machines and there sizes.
    
    .EXAMPLE
    Get-ctVMWithSizes | Out-File d:\temp\export-AzureVMs.csv -Append
    
    .NOTES
    Support function
    #>
    $VMs = Get-AzVM
    Foreach ($vm in $VMs)
    {
        "{0};{1};{2};{3}" -f $vm.ResourceGroupName, $vm.Name, $vm.HardwareProfile.VmSize, $vm.Location
    }



}


## Test Run(s)
Get-ctVMWithSizes | Out-File d:\temp\export-AzureVMs.csv -Append