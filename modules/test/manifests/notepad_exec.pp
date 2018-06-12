class test::notepad_exec{

#installing notepad
#exec{'notepadplusplus':
#command => "C:\\Users\\Administrator.QA-JYOTHI\\Desktop\\npp.7.5.3.Installer.exe /S"
#}

#uninstalling notepad
exec{'notepadplusplus':
command => "uninstall.exe /S",
path => "C:\\Program Files (x86)\\Notepad++",
	}

}