class test::zip_extract{
$path=hiera('zippath')


exec{'extract zip':
command => "C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe ; expand-archive -path '$path\\data.zip' -destinationpath '$path\\extract'",
unless => "C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe ; Test-path $path\\extract",
path => "C:\\Users\\Administrator.QA-JYOTHI\\Desktop\\puppet\\modules\\test\\files",
}
}