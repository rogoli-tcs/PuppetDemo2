class test::notepadpp2{

#uninstalling application*************
	
	#$local_path="C:\\Program Files (x86)\\Notepad++\\uninstall"   #space error
	package{ 'notepadplusplus':
	#provider => windows,
		ensure => absent,
		#source => "$local_path",
		#uninstall_options => ['/S']
	}
}	