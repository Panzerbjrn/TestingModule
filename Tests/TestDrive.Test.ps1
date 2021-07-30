Describe -tag "Testdrive" -Name "TestDrive File Tests" {
	BeforeAll {
		$TestDrive = "TestDrive:\"
		Set-Content $(Join-Path $TestDrive 'File.txt') -Value "My Test File"
	}

	It "Test if Test-Path to File.txt is true" {
		(Test-Path -Path $(Join-Path $TestDrive 'File.txt')) | Should -Be $true
	}
	It "Test if File.txt exist" {
		Join-Path $TestDrive 'File.txt' | Should -Exist
	}
	IT "Test if TestDrive UNC Path Works" {
		(Test-Path -Path "TestDrive:\File.txt") | Should -Be $true
	}
}
