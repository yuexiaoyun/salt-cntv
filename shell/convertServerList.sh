file="../data/serversList.csv"

function convf()
{
	echo "$1:"
	cat $file |grep -v "^#\|^#" |awk -F, '{print $1" "$'$2'}' |while read ip projs
	do
		echo "  {% if grains['id'] == \"$ip\" %}"
		echo $projs |sed "s/\;/ /g" |while read -a proj
		do
			for p in "${proj[@]}"
			do
				if [  "$1" == "roles" ]
				then
					p1=""
					echo $p |sed "s/-/\n/g" |while read line; do p1="$p1-$line"; echo "    - $p1" |sed "s/- -/- /g" >> /tmp/res; done;
				else
					echo "    - $p"
				fi
			done
			if [  "$1" == "roles" ]
			then
				cat /tmp/res |sort |uniq
				rm -f /tmp/res
			fi
		done
		echo -e "  {% endif %}\n"
	done
}

case $1 in
	"roles")
		convf roles 2
		;;
	"ldapAllowGroups")
		convf ldapAllowGroups 7
		;;
	*)
		echo "error!"
		;;
esac
