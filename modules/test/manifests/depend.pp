class test::depend{
$ps=hiera("pspath")
exec{"folder":
command => "$ps ; md D:/folder",
returns => ["1","0"],
}

file{"file1":
ensure => present,
path => "D:/folder/file1.txt",
content => "this is content",
}

exec{"file2":
command => "$ps ; New-Item D:/folder/file2.txt -type file",
returns => ["1","0"],
subscribe => File["file1"],
refreshonly => true,
}

}