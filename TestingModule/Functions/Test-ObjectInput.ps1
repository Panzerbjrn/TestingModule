Function Test-ObjectInput {
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
		[Parameter(Mandatory)][psobject]$PSObjectInput
	)

	$HashTable = @()
	Write-Verbose "PSObjectInput is: $PSObjectInput"
	[int]$I = 1
<#	ForEach ($Item in $PSObjectInput)
	{
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
#>
	$PSObjectInput
}

