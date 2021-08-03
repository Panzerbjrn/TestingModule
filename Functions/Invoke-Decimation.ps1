Function Invoke-Decimation {
<#
	.SYNOPSIS
		This will delete 1 in 10 files from the path provided!!!

	.DESCRIPTION
		This will delete 1 in 10 files from the path provided!!!

	.PARAMETER Path
		This is the path files will be deleted from

	.PARAMETER Recurse
		Whether to delete files recursively

	.INPUTS
		Command line

	.OUTPUTS
		None

	.NOTES
		This is a super dangerous function, and is written **purely** to show that it can be done and how!

	.EXAMPLE
		Invoke-Decimation -Path C:\Temp

	.LINK
		https://github.com/Panzerbjrn/TestingModule
#>

	[CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'High')] # Step 1
	param(
		[Parameter(Position = 0)]
		[ValidateNotNullOrEmpty()]
		[string]$Path,

		[switch]
		$Recurse
	)
	BEGIN{
		Write-Verbose "#################################################################"
		Write-Verbose "Beginning $($MyInvocation.MyCommand.Name) on $($ENV:ComputerName) @ $(Get-Date -Format "yyyy.MM.dd HH:mm:ss")"
		Write-Verbose "#################################################################"

		Write-Verbose "Checking to see if the file provided already exists"
		$FileExists = Test-Path -Path $FilePath
	}

	PROCESS{
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
					Get-ChildItem -Path $Path\* -File |
						Where-Object { (Get-Random -Min 1 -Max 11) % 10 -eq 0 } |
						Remove-Item -Confirm:$false
				}
			}
		}
	}
}