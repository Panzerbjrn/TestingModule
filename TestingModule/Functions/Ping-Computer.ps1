Function Ping-Computer
{
	[CmdletBinding()]
	param($ComputerName)
	Test-Connection -ComputerName $ComputerName -quiet
}