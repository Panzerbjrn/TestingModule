Function Test-ExampleCSV
{
	[CmdletBinding()]
	Param (
	[Parameter(Mandatory)][string[]]$CSVFile
	)
	$CSVContent = Import-CSV -Path $CSVFile -ErrorAction STOP
	ForEach ($Item in $CSVContent)
	{
		Write-Verbose "$($Item.Hostname)"
		Write-Verbose "$($Item.IPAddress)"
		Test-Connection $Item.IPAddress
	}
}