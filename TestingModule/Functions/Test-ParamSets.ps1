Function Test-ParamSets
{
	[CmdletBinding()]
	Param(
		[Parameter(ParameterSetName='Name')]
		[Parameter(ParameterSetName='ID')]
		[String]$Name,

		[Parameter(ParameterSetName='Name')]
		[String]$Surname,

		[Parameter(ParameterSetName='ID')]
		[String]$ID,

		[Parameter(ParameterSetName="ID")]
		[switch]$Hexidecimal,

		[Parameter(ParameterSetName="Name")]
		[switch]$Decimal
	)
	'Set name is: {0}' -f $PSCmdlet.ParameterSetName
	'Name is: [{0}], ID is [{1}]' -f $Name, $ID

	IF ("Name" -eq $PSCmdlet.ParameterSetName) {Write-Verbose "IF detected Name" -Verbose}
	IF ("ID" -eq $PSCmdlet.ParameterSetName) {Write-Verbose "IF detected ID" -Verbose}
}
