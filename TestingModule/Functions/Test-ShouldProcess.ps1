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

	BEGIN{
		Write-Verbose "Beginning $($MyInvocation.Mycommand)"
		IF(-not $PSBoundParameters.ContainsKey('Confirm')){
			$ConfirmPreference = $PSCmdlet.SessionState.PSVariable.GetValue('ConfirmPreference')
		}
		IF(-not $PSBoundParameters.ContainsKey('WhatIf')){
			$WhatIfPreference = $PSCmdlet.SessionState.PSVariable.GetValue('WhatIfPreference')
		}
	}

	PROCESS{
		# Preparation
		IF($PSCmdlet.ShouldProcess("ShouldProcess?")){
			# Critical code
		}
		# Cleanup
	}
}
