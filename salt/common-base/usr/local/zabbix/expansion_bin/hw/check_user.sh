#!/bin/sh
#%ops    ALL=(ALL)       ALL
#%appops ALL=(ALL)       ALL
##sudo("/usr/sbin/useradd -g appops huyong", pty=True, user="root")
#sudo("/usr/sbin/usermod -p '$1$ixchWEUQ$az25YEwyd11WXNvsWRZ8X.' huyong",pty=True,user="root")
dir='/usr/local/zabbix/expansion_bin/hw'
#####################add-user
cat $dir/adduser.list |grep -v '^#'|while read line
do 
	name=`echo $line|awk '{print $1}'`
	passwd=`echo $line|awk '{print $2}'`
	/usr/bin/id $name >/dev/null 2>&1 
	if(($?>0))
	then
		echo "no $name id...."
		/usr/sbin/useradd -g appops $name
		/usr/sbin/usermod -p $passwd $name
	else
		cat /etc/shadow |grep $passwd >/dev/null 2>&1
		if (($?>0))
		then
			echo $name 'user passwd is change....'
			/usr/sbin/usermod -p '$passwd' $name
		else
			echo $name 'user passwd is okay....'
		fi
	fi
done
#####################del-user
cat $dir/deluser.list |grep -v '^#'|while read line
do
	 /usr/bin/id $line >/dev/null 2>&1
        if(($?>0))
        then
		echo "no $line id...."
	else
		echo "delete user  $line id from system...."
		/usr/sbin/userdel $line
	fi
done
