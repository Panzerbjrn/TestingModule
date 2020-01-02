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
	Param (
		[Parameter()][string]$Path="D:\Downloads\Torrents\__Downloaded1",
		[Parameter()][switch]$Recurse,
		[Parameter()][switch]$Document,
		[Parameter()][ValidateSet("Size","Name","DateCreated")][string]$SortOrder,
		[Parameter()][switch]$Descending,
		[Parameter()][string]$Item="*",
		[Parameter()][ValidateSet("C:\Dropbox\Scripts\ArchFiles_DEL_.csv","D:\Dropbox\Scripts\ArchFilesInS3.csv")][string]$CSV="C:\Dropbox\Scripts\ArchFiles_DEL_.csv"
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
