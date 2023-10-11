Function Test-HashTableInput {
	[CmdletBinding()]
	Param(
		[Parameter(Mandatory)][hashtable]$HashTable
	)

	Write-Verbose "HashTable is: $HashTable"
	[int]$I = 1
	$HashTable
}

