#include chocolatey
class test::notepadpp{

	/*notice("This is from Class Test Notepad")
	$var1 = "hello world from var"
	
	$var2=hiera('key1')
	notice($var1)
	notice($var2)*/
	
	#installing an application************
	
	$path=hiera('path')
	$app=hiera('npp')
	package{ 'npp.7.5.3.Installer':
	provider => windows,
		ensure => installed,
		source => "$path\\$app",
		
		install_options => ['/S'],
		
	}
	
	
	
}
#include test::notepadpp