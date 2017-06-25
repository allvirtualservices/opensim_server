#!/bin/bash
# MyGrid_file_backup.sh
# Version 1.00
# 1st February 2017 

# START

TIME=`date +%b-%d-%y`                    # This Command will add date in Backup File Name.

FILENAME=MyGrid_file_backup_$TIME.tar.gz    # Here i define Backup file name format.

# Define data to backup below

SRC="/home/opensim/opensim/bin/grid /home/opensim/opensim/bin/config-include/osslEnable.ini /home/opensim/opensim/bin/Robust.HG.ini /home/opensim/opensim/bin/config-include/GridCommon.ini /etc/fgms /etc/monit /etc/sudoers /etc/mysql/mysql.conf.d/mysqld.cnf /etc/apache2  /home/user/Server_Backup_Proceedure.txt /home/user/Server_Maintenence_Schedule.txt /home/user/MyGrid_file_backup.sh" 

DESDIR=/home/user/mybackupfolder     # Destination of backup file.
sudo tar czf $DESDIR/$FILENAME $SRC 

# END
