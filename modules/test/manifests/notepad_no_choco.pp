class test::notepad_no_choco{
/*exec{'notepadplusplus':
command => "C:\\Users\\Administrator.QA-JYOTHI\\Desktop\\npp.7.5.3.Installer.exe /S"
}*/

exec{'notepadplusplus':
command => 'C:/Program Files (x86)/Notepad\2B\2B/uninstall.exe /S'
#space error
}
}