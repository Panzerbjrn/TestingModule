#region Script Header
#	Thought for the day: It is a rough road that leads to the heights of greatness. - Lucius Annaeus Seneca
#	NAME: TestModule.psm1
#	AUTHOR: Lars Petersson
#	CONTACT: lpetersson@hotmail.com / GitHub: Panzerbjrn / Twitter: LPetersson
#	DATE: 2019.01.18
#	VERSION: 1.0 - 2019.01.18 - Manifest and Module files created
#
#	SYNOPSIS:
#	Module for testing constructs.
#
#	#DESCRIPTION:
#	Module for testing constructs.
#
#	REQUIREMENTS:
#
#endregion Script Header

#Requires -Version 3.0

[cmdletbinding()]
param()

Write-Verbose $PSScriptRoot

#Get public and private function definition files.
$Functions  = @( Get-ChildItem -Path $PSScriptRoot\Functions\*.ps1 -ErrorAction SilentlyContinue )
$Helpers = @( Get-ChildItem -Path $PSScriptRoot\Helpers\*.ps1 -ErrorAction SilentlyContinue )

#Dot source the files
Foreach ($Import in @($Functions + $Helpers))
{
	Try
	{
		Write-Verbose "Processing $($Import.Fullname)"
		. $Import.Fullname
	}
	Catch
	{
		Write-Error -Message "Failed to Import function $($Import.Fullname): $_"
	}
}

Export-ModuleMember -Function $Functions.Basename
