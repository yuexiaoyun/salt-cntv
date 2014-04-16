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
				echo "    $p"
			done
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
