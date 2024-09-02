Function Test-Switch {
	<#
		.SYNOPSIS
			Describe the function here

		.DESCRIPTION
			Describe the function in more detail

		.EXAMPLE
			Give an example of how to use it

	#>
	[CmdletBinding()]

	param(
		[Parameter(HelpMessage='What path would you like to target?')]
		[Alias('Target')]
		[string[]]$Path,

		[switch]$Recurse
	)
	switch ($Recurse.IsPresent) {
		$True {
			Write-Verbose "Recursing" -Verbose
			Get-ChildItem -Path $Path -File -Recurse
		}
		$False {
			Write-Verbose "NOT Recursing" -Verbose
			Get-ChildItem -Path $Path -File
		}
	}
}