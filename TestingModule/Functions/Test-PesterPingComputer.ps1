Function Ping-Computer{
	param($ComputerName)
	Test-Connection -ComputerName $ComputerName -quiet
}