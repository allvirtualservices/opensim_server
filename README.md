# opensim_server
opensim server v 1.00
02/07/2017

Who is this code repository suitable for?:

This code repository is aimed squarely at those who are interested in running their own OpenSim server, 
it is assumed that a basic knowledge of installing, configuring and maintaining a (Debian or Ubuntu based) 
Linux server, (wether that be a vps or a conventional server) is already in place. 

Additionally, prior knowledge of installing, configuring and running OpenSim software is also assumed.

However, all comands and procedures are explained, which include:

01) Updating server software
02) Installing firewall and intrusion prevention software. Configuring firewall to allow incoming SSH connections
03) Creating a user account to run opensim
04) Creating RSA keys for SSH authentication. Testing SSH connectivity using RSA keys, disabling SSH password authentication on the server
05) Installing and configuring apache2, php, mysql and phpmyadmin, adding a firewall rule to allow incoming http connections
06) Installing nant
07) Creating an opensim database in mysql. Adding opensim user to mysql, configuring mysql to allow opensim user access to the database
08) Installing opensim source code using git. Compiling opensim from source code using nant
09) Installing opensim_server scripts and configuration files using git & configuring opensim & /etc/sudoers
10) Add additional firewall rules to allow incoming opensim connections
11) Copying default user helper scripts and documents into the correct place, editing the mysql config file, restarting mysql
12) Installing and configuring monit, adding firewall rule to allow incoming connections to monit
13) Adding an avatar account to opensim, testing opensim connectivity

Server setup guide is in opensim_server/home/opensim/docs/SERVER_SETUP_GUIDE.TXT

Any and all feedback welcomed & encouraged
