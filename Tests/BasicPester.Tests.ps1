Describe 'Basic Pester Tests' {
	BeforeAll {
		$VarA = "Test"
		$VerB = "Test"
	}

	It 'A test that should be true' {
		$True | Should -Be $True
	}
	It 'A test that should fail' {
		$Fail | Should -Be $null
	}
	It 'A test that should be true' {
		$VarA | Should -match $VarB
	}
	It 'A test that should Pass' {
		$VarA | Should -Be "Test"
	}
	It "true is never false" {
		$true | Should -not -Be $false
	}
}

Describe 'Grouping using Context' {
	BeforeAll {
		$TestValue = 'ArcaneCode'
		$MyArray = 'ArcaneCode', 'http://arcanecode.red', 'http://arcanecode.me'
	}
	Context 'Test Group 1 Boolean Tests' {	
		It 'Should be true' { $True | Should -Be $True }
		It 'Should be true' { $True | Should -BeTrue }
		It 'Should be false' { $False | Should -Be $False }		
		It 'Should be false' { $False | Should -BeFalse }		
	}
	Context 'Test Group 2 - Negative Assertions' {	
		It 'Should not be true' { $False | Should -Not -BeTrue }
		It 'Should be false' { $True | Should -Not -Be $False }
	}
	Context 'Test Group 3 - Calculations' {	
		It '$X Should be 42' {
		$X = 42 * 1 
		$X | Should -Be 42
		}
		
		It 'Should be greater than or equal to 33' {
		$Y = 3 * 11
		$Y | Should -BeGreaterOrEqual 33
		}		
		It 'Should with a calculated value' {
		$Y = 3
		($Y * 11) | Should -BeGreaterThan 30
		}		
	}
	Context 'Test Group 4 - String tests' {
		It "Testing to see if <TestValue> matches arcane" {
			$TestValue | Should -match "arcane"
		}
		It "Testing to see if <TestValue> is case sensitive like Arcane*" {
			$TestValue | Should -BeLikeExactly "Arcane*"
		}
		It "Testing to see if <TestValue> is case sensitive not like Arcane*" {
			$TestValue | Should -not -BeLikeExactly "arcane"
		}
		It "Testing to see if <TestValue> is like Arcane*" {
			$TestValue | Should -BeLike "Arcane*"
		}
	}
	Context 'Test Group 5 - Array Tests' {
		It "MyArray Should contain ArcaneCode" {
			$MyArray | Should -Contain 'ArcaneCode'
		}
		It "<MyArray> Should contain ArcaneCode" {
			$MyArray | Should -Contain 'ArcaneCode'
		}
		It "MyArray Should have 3 items" {
			$MyArray | Should -HaveCount 3
		}
	}
}