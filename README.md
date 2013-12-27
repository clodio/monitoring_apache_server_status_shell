# Description:

The project aims to get apâche server-status in a shell

It is usefull when network or configuration does not enable you to do it from your browser

# Usage:

## Setup a sample project

    git clone https://github.com/clodio/monitoring_apache_server_status_shell.git
    cd monitoring_apache_server_status_shell
	chmod +x monitoring_apache_server_status_shell.sh
	
## Launch

	./monitoring_apache_server_status_shell.sh

## Tips

- curl must be installed
- apache plugin mod_status must be installed, activated and accessible from localhost
- Extended status should be enabled for more information

	<IfModule mod_status.c>
	
		<Location /server-status>
	
		SetHandler server-status
	
		Order deny,allow
	
		Deny from all
	
		Allow from 127.0.0.1 ::1
	
		</Location>

		# Keep track of extended status information for each request
		ExtendedStatus On

	</IfModule>

# Technology used

## Apache

- Homepage: <http://httpd.apache.org>

# Don't forget

Always have fun :)


