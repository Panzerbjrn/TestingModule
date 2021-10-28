Function Test-ShouldProcess {
<#
	.SYNOPSIS
		This will test Should Process.

	.DESCRIPTION
		This will test Should Process.

	.INPUTS
		Command line

	.OUTPUTS
		None

	.NOTES
		Just a basic test of how Should Process works

	.EXAMPLE
		Test-ShouldProcess -Confirm

	.EXAMPLE
		Test-ShouldProcess -WhatIf

	.LINK
		https://github.com/Panzerbjrn/TestingModule
#>
	[CmdletBinding(SupportsShouldProcess,ConfirmImpact='Medium')]
	param()

	Begin {
		Write-Verbose "Beginning $($MyInvocation.Mycommand)"
		if (-not $PSBoundParameters.ContainsKey('Confirm')){
			$ConfirmPreference = $PSCmdlet.SessionState.PSVariable.GetValue('ConfirmPreference')
		}
		if (-not $PSBoundParameters.ContainsKey('WhatIf')){
			$WhatIfPreference = $PSCmdlet.SessionState.PSVariable.GetValue('WhatIfPreference')
		}
	}

	Process
	{
		# Preparation
		if ($PSCmdlet.ShouldProcess("ShouldProcess?")){
			# Critical code
		}
		# Cleanup
	}
}