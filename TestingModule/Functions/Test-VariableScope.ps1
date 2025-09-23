Function Test-VariableScope {
<#
    .SYNOPSIS
        Describe the function here

    .DESCRIPTION
        Describe the function in more detail

    .EXAMPLE
        Give an example of how to use it

#>

    Write-Output "Function Test"
    Write-Output "Module variable 1 is: $Script:TestModuleVar1"
    Write-Output "Module variable 2 is: $Script:TestModuleVar2"
}