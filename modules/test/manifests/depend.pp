class test::depend{
$ps=hiera("pspath")
exec{"folderpresent":
command => "$ps ; md -path 'D:/folder'",
onlyif => "$ps ; Test-path -path 'D:/folder'",
}

exec{"file1":
command => "$ps ; New-Item D:/folder/file1.txt -type file",
onlyif => "$ps ; Test-path -path 'D:\\folder\\file1.txt'",
#onlyif => "$ps ; -Not(Test-path -path 'D:\\folder')",
}

exec{"file2":
command => "$ps ; New-Item D:/folder/file2.txt -type file",
onlyif => "$ps ; Test-path -path 'D:\\folder\\file2.txt'",
#onlyif => "$ps ; -Not(Test-path -path 'D:\\folder\\file1.txt')",
subscribe => Exec["folderpresent"],
}
}