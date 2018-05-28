class test::notepadpp{

	notice("This is from Class Test Notepad")
	$var1 = "hello world from var"
	
	$var2=hiera('key1')
	notice($var1)
	notice($var2)
}
##include test::notepadpp