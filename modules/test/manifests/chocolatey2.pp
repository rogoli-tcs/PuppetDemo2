include chocolatey
class test::chocolatey2{
	
	package{'vlc':	
		ensure => absent,
		#provider => chocolatey
	}
	
}