Function Test-StringParam
{
Param (
	[Parameter(Mandatory)][string[]]$TestArray,
	[Parameter(Mandatory)][string]$TestNotArray
	)

		"Tesst Array iss:: $TestArray"
		"TestNotArray is: $TestNotArray"
		[int]$I = 1
		ForEach ($Item in $TestArray)
		{
			$I;$I++
			$Item
		}

}