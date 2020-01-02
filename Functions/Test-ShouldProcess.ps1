Function Test-ShouldProcess {
	[CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
	param()

	Begin {
		if (-not $PSBoundParameters.ContainsKey('Confirm'))
		{
			$ConfirmPreference = $PSCmdlet.SessionState.PSVariable.GetValue('ConfirmPreference')
		}
		if (-not $PSBoundParameters.ContainsKey('WhatIf'))
		{
			$WhatIfPreference = $PSCmdlet.SessionState.PSVariable.GetValue('WhatIfPreference')
		}
	}

	Process
	{
		# Preparation

		if ($PSCmdlet.ShouldProcess("ShouldProcess?"))
		{
			# Critical code
		}

		# Cleanup
	}
}