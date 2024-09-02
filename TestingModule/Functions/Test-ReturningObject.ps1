Function Test-ReturningObject {
	<#
		.SYNOPSIS
			Describe the function here

		.DESCRIPTION
			Describe the function in more detail

		.EXAMPLE
			Give an example of how to use it

	#>
	[CmdletBinding()]

	Param (
		[Parameter(Mandatory)][string[]]$TestArray,
		[Parameter(Mandatory)][string]$TestNotArray
	)

	$HashTable = @()
	Write-Verbose "Test Array is: $TestArray"
	Write-Verbose "TestNotArray is: $TestNotArray"
	[int]$I = 1
	ForEach ($Item in $TestArray){
		Write-Verbose "$I"
		$I++
		Write-Verbose "$Item"
		$HashTable += @(
			[pscustomobject]@{
				ArrayItem = $Item
				ItemNumber = $I
			}
		)
	}
	$HashTable
}

