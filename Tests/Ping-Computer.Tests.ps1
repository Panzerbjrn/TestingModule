Describe 'Mock Ping-Computer' {
	it 'should return $true when the computer is online' {
		mock 'Test-Connection' -MockWith { $true }
		Ping-Computer -ComputerName 'DOESNOTMATTER'
	}

	it 'should return $false when the computer is offline' {
		mock 'Test-Connection' -MockWith { $false }
		Ping-Computer -ComputerName 'DOESNOTMATTER'
	}
}

describe 'Test Ping-Computer' {
	it 'should  return $true when the computer is online' {
	Ping-Computer -ComputerName $env:COMPUTERNAME | Should -Be $true
	}

	it 'should  return $false when the computer is offline' {
		Ping-Computer -ComputerName 'DOESNOTMATTER' | Should -Be $false
	}
}
