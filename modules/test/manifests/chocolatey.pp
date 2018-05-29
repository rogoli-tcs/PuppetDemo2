include chocolatey 
 
class test::chocolatey{

	package {'chocolatey':
		ensure => installed,
		#provider => 'chocolatey'
  }
  }