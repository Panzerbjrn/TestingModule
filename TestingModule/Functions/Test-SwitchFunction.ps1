Function Test-SwitchFunction
{
<#
	.SYNOPSIS
		Test Synopsis

	.DESCRIPTION
		Test DESCRIPTION

	.PARAMETER Path
		Test Parameter

	.INPUTS
		Test INPUTS

	.OUTPUTS
		Test OUTPUTS

	.NOTES
		Test NOTES

	.EXAMPLE
		Test Example

	.LINK
		https://github.com/Panzerbjrn/ADtoolsModule
#>
	[CmdletBinding()]
	Param (
		[Parameter()][ValidateSet("Size","Name","DateCreated")][string]$SortOrder,
		[Parameter()][switch]$Descending
	)

	Switch ($SortOrder)
	{
		{($_ -eq "Size") -AND ($Descending)}{"Size $ Desscending";Break}
		{($_ -eq "Size") -AND (!($Descending))}{"Size $ not Desscending";Break}
		{($_ -eq "Name") -AND ($Descending)}{"Size $ Desscending";Break}
		{($_ -eq "Name") -AND (!($Descending))}{"Size $ not Desscending";Break}
		{($_ -eq "DateCreated") -AND ($Descending)}{"Size $ Desscending";Break}
		{($_ -eq "DateCreated") -AND (!($Descending))}{"Size $ not Desscending";Break}
	}
}
