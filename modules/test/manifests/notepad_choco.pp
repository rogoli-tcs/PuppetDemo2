class test::notepad_choco{
exec{'notepadplusplus':
command => 'choco install vlc --force -y',
#command => "C:\\Users\\Administrator.QA-JYOTHI\\Desktop\\puppet\\modules\\test\\manifests\\npinstall.bat",
path => "C:\\ProgramData",
}
}