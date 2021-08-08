Function Test-AddFile
{
	[CmdletBinding()]
	Param(
		[Parameter(ValueFromPipeline)]
		[int[]]$Number
	)
	Begin
	{
		Write-Verbose "Beginning $($MyInvocation.Mycommand)"
	}
	Process
	{
		Write-Verbose "Processing $($MyInvocation.Mycommand)"
		$HexNumber = Get-RandomHexNumber
		$NewFile = "$($PSScriptRoot)\CSV\AddedFile$Hexnumber.bak"
		
		Add-content -path $NewFile -Value "File for Testing"
	}
	END
	{
		Write-Verbose "Ending $($MyInvocation.Mycommand)"
		return $newfile
	}
}