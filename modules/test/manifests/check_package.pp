class test::check_package{
	#if $package_notepad_exist=='true'{
	#	notice("yes")
		exec{'uninstall':
			command => 'C:\\Program Files (x86)\\Notepad++\\uninstall.exe',
			onlyif=> 
		}
	#}
}