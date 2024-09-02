Function Test-ExampleCSV {
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
		[Parameter(Mandatory)][string[]]$CSVFile
	)
	$CSVContent = Import-CSV -Path $CSVFile -ErrorAction STOP
	ForEach ($Item in $CSVContent){
		Write-Verbose "$($Item.Hostname)"
		Write-Verbose "$($Item.IPAddress)"
		Test-Connection $Item.IPAddress
	}
}