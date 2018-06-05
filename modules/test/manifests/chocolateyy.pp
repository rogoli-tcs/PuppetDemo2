include chocolatey
class test::chocolateyy{
	
	package{'vlc':
		ensure => installed,
		provider => chocolatey,
	}
}