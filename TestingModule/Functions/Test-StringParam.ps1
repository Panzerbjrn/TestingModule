Function Test-StringParam {
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
	"Test Array is:: $TestArray"
	"TestNotArray is: $TestNotArray"
	[int]$I = 1
	ForEach ($Item in $TestArray)
	{
		$I;$I++
		$Item
	}
}