Function Test-LoopFunction {
	<#
	.SYNOPSIS
		This function will loop through a job and return to the console when the job is done.

	.DESCRIPTION
		This function will loop through a job and return to the console when the job is done.

	.PARAMETER JobID
		This should be the ID of the job to monitor.

	.INPUTS
		None

	.OUTPUTS
		This Outputs a simple Done when it is done.

	.NOTES
		Version:			1.0
		Author:			Lars Petersson
		Creation Date:	2019.072.09
		Purpose/Change:	Initial script development

	.EXAMPLE
		Test-LoopFunction -JobID 3

	.EXAMPLE
		Test-LoopFunction -JobID $StartJob.id
	#>
	[CmdletBinding()]
	Param(
		[Parameter(Mandatory,ValueFrompipeline=$True)][string]$JobID
	)

	DO {
		$JobLoop = Get-Job -ID $JobID
		Write-Verbose "$($JobLoop)"
		IF($JobLoop.State -eq "Running") {"Cogitating";Sleep 5}
	}
	While ($JobLoop.State -eq "Running")
	Write-OutPut "Done"
	$JobLoop
}