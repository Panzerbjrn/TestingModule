Function Ping-Computer {
		<#
		.SYNOPSIS
			Describe the function here

		.DESCRIPTION
			Describe the function in more detail

		.EXAMPLE
			Give an example of how to use it

	#>
	[CmdletBinding()]
	param($ComputerName)
	Test-Connection -ComputerName $ComputerName -quiet
}