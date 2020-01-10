Function Test-MyInvocation
{
	[CmdletBinding()]
	Param (
		[Parameter()][switch]$OneDrive
	)
	Begin
	{
		Write-Verbose "Beginning $($MyInvocation.Mycommand)"
	}
	Process
	{
		Write-Host "Processing $($MyInvocation.Mycommand)"
		#Write-Verbose "Processing $($MyInvocation.BoundParameter)"
		Write-Host "Processing $($MyInvocation.ScriptName)"
		Write-Host "Processing $($MyInvocation.PSScriptRoot)"
		Write-Host "Processing $($MyInvocation.PSCommandPath)"
		Write-Host "Processing $($MyInvocation.ScriptLineNumber)"
		#$MyInvocation | GM
	}
	END
	{
		Write-Verbose "Ending $($MyInvocation.Mycommand)"
	}
}