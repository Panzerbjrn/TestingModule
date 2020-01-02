Function Invoke-Decimation {
	[CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')] # Step 1
	param(
		[Parameter(Position = 0)]
		[ValidateNotNullOrEmpty()]
		[string]
		$Path,

		[switch]
		$Recurse
	)
	switch ($Recurse.IsPresent) {
		$True {
			# Step 2
			IF ($PSCmdlet.ShouldContinue($Path, 'Decimate every file including subdirectories.')) {
				Get-ChildItem -Path $Path -File -Recurse |
					Where-Object { (Get-Random -Min 1 -Max 11) % 10 -eq 0 } |
					Remove-Item -Confirm:$false
			}
		}
		$false {
			# Step 2
			IF ($PSCmdlet.ShouldProcess($Path, 'Decimate the contained files.')) {
				Get-ChildItem -Path $Path -File |
					Where-Object { (Get-Random -Min 1 -Max 11) % 10 -eq 0 } |
					Remove-Item -Confirm:$false
			}
		}
	}
}