Function Test-MyInvocation {
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
		[Parameter()][switch]$OneDrive
	)
	Begin{
		Write-Verbose "Beginning $($MyInvocation.Mycommand)" -Verbose
	}
	Process{
		#Write-Verbose "Processing $($MyInvocation.BoundParameter)"
		Write-Host "Processing $($MyInvocation.Mycommand.Name)"
		Write-Host "Processing $($MyInvocation.ScriptName)"
		Write-Host "PSScriptRoot is $($PSScriptRoot)"
		Write-Host "PSCommandPath is $($PSCommandPath)"
		Write-Host "ScriptLineNumber is $($MyInvocation.ScriptLineNumber)"
		#$MyInvocation | GM
	}
	END{
		Write-Verbose "Ending $($MyInvocation.Mycommand)" -Verbose
	}
}