Function Test-HashTableInput {
	<#
		.SYNOPSIS
			Describe the function here

		.DESCRIPTION
			Describe the function in more detail

		.EXAMPLE
			Give an example of how to use it

	#>
	[CmdletBinding()]

	Param(
		[Parameter(Mandatory)][hashtable]$HashTable
	)

	Write-Verbose "HashTable is: $HashTable"
	[int]$I = 1
	$HashTable
}

