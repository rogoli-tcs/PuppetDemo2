#include chocolatey
class test::notepadpp{

	/*notice("This is from Class Test Notepad")
	$var1 = "hello world from var"
	
	$var2=hiera('key1')
	notice($var1)
	notice($var2)*/
	
	#installing an application************
#keys***	
	$path=hiera('path')
	#$app=hiera('npp')
#array***
	#$apps=hiera('softwares')
	#$apps.each|String $app|{
	#	notice($app)
	#}
#hashh***
	#$hashh=hiera('softwaress')
	#notice($hashh[npp])
	#$app=$hashh[npp]

#task***array
	
	$apps=hiera('softwares')
	$apps.each|String $app|
		{
		#notice($app)
	exec{"$app":
	command => "$path\\$app /s",
		}
	}
	
}



	
