
class test::javainstall{
	
#	package{'java':
#		ensure => installed,
#		provider => windows,
#		source => "C:\\Users\\Administrator.QA-JYOTHI\\Downloads\\jdk-10.0.1_windows-x64_bin.exe",
#		reinstall_on_refresh => true,
#		#install_options => ['/s', { 'INSTALLDIR' => 'C:\Program Files\java\jdk-10.0.1' } ],
#	}
	$path=hiera('path')
	$app=hiera('java')
	exec{'install java':
	command => "$path\\$app /s",
	}
	exec{'setting path':
	#** all are working **
	command => "cmd.exe ; PATH '%PATH%;C:\\Program Files\\Java\\jdk-10.0.1\\bin'",
	#command => "cmd.exe ; setx -m JAVA_HOME 'C:\\Program Files\\Java\\jdk-10.0.1' ; setx -m PATH '%PATH%;%JAVA_HOME%\\bin'",
	#command => 'powershell.exe ; &{$path=C:\\Program Files\\Java\\jdk10.0.1\\bin}',
	#provider => 'powershell',
	path => "C:\\Windows\\System32\\",
	} 
	
	#windows_env{'Path=C:\\Program Files\\Java\\jdk-10.0.1\\bin':
	#mergemode => append, 
	#}
#	package{'java':               ; cmd.exe ; PATH '%PATH%;C:\\Program Files\\Java\\jdk-10.0.1\\bin'
#	ensure => absent, 
#	}/
}