$VarA = "Test"
$VerB = "Test"
Describe 'Basic Pester Tests' {
	It 'A test that should be true' {
		$True | Should Be $True
	}
	It 'A test that should fail' {
		$Fail | Should Be $null
	}
}

Describe 'Another Basic Pester Tests' {
	It 'A test that should be true' {
		$VarA | Should Be $VarB
	}
	It 'A test that should fail' {
		$VarA | Should Be "Test"
	}
}

Describe "test" {
	It "true is never false" {
		$true | Should -not -Be $false
	}
}

Describe "test" {

	new-item (Join-Path $TestDrive 'File.txt') 

	It "Test if File.txt exist" {
		(test-path -path (Join-Path $TestDrive 'File.txt')	) | Should -Be $true
	}
}


Describe 'should exist test' {
	It 'Should exist' {
		'C:\Dropbox\Scripts\PowerShell.Modules\TestingModule\Tests\BasicPester.Tests.ps1' | Should Exist
	}
}

Describe 'should exist with variables test' {
	$SomeFile = 'C:\Dropbox\Scripts\PowerShell.Modules\TestingModule\Tests\BasicPester.Tests.ps1'
	It "$SomeFile should exist" {
		$SomeFile | Should Exist
	}
}

Describe 'Grouping using Context' {
	Context 'Test Group 1 Boolean Tests' {	
		It 'Should be true' { $True | Should Be $True }
		It 'Should be true' { $True | Should BeTrue }
		It 'Should be false' { $False | Should Be $False }		
		It 'Should be false' { $False | Should BeFalse }		
	}
	Context 'Test Group 2 - Negative Assertions' {	
		It 'Should not be true' { $False | Should Not BeTrue }
		It 'Should be false' { $True | Should Not Be $False }
	}
	Context 'Test Group 3 - Calculations' {	
		It '$X Should be 42' {
		$X = 42 * 1 
		$X | Should Be 42
		}
		
		It 'Should be greater than or equal to 33' {
		$Y = 3 * 11
		$Y | Should BeGreaterOrEqual 33
		}		
		It 'Should with a calculated value' {
		$Y = 3
		($Y * 11) | Should BeGreaterThan 30
		}		
	}
	Context 'Test Group 4 - String tests' {
		$TestValue = 'ArcaneCode'
		# Test using a Like (not case senstive)
		It "Testing to see if $TestValue has arcane" {
		$TestValue | Should BeLike "arcane*"
		}
	
		# Test using cLike (case sensitive)
		It "Testing to see if $TestValue has Arcane" {
		$TestValue | Should BeLikeExactly "Arcane*"
		}
	}
	Context 'Test Group 5 - Array Tests' {
		$MyArray = 'ArcaneCode', 'http://arcanecode.red', 'http://arcanecode.me'
		It 'Should contain ArcaneCode' {
		$MyArray | Should Contain 'ArcaneCode'
		}
		It 'Should have 3 items' {
		$MyArray | Should HaveCount 3
		}
	}
}