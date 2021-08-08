Function Test-ArrayParam
{
Param (
	[Parameter(Mandatory)][string[]]$TestArray,
	[Parameter(Mandatory)][string]$TestNotArray
	)
		"Test Array is: $TestArray"
		"TestNotArray is: $TestNotArray"
		[int]$I = 1
		ForEach ($Item in $TestArray)
		{
			$I;$I++
			$Item
		}

}