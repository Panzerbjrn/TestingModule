describe 'Test-PesterPingComputer' {
	it 'should  return $true when the computer is online' {
		mock  'Test-Connection' -MockWith { $true }
	Ping-Computer -ComputerName 'DOESNOTMATTER' | should be $true
	}

	it 'should  return $false when the computer is offline' {
		mock  'Test-Connection' -MockWith { $false }
		Ping-Computer -ComputerName 'DOESNOTMATTER' | should be $false
	}
}