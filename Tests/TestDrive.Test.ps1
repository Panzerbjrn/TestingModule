Describe -tag "Testdrive Variable test" -Name "TestDrive Variable Test" {

	New-Item (Join-Path $TestDrive 'File1.txt')

	IT "Test if TestDrive Variable Works" {
		(test-path -path (Join-Path $TestDrive 'File1.txt')	) | Should -Be $true
	}
}

Describe -tag "Testdrive UNC test" -Name "TestDrive UNC Test" {

	New-Item "TestDrive:\File2.txt"

	IT "Test if TestDrive UNC Path Works" {
		(test-path -path "TestDrive:\File2.txt") | Should -Be $true
	}
}

