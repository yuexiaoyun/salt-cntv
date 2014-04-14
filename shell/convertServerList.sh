echo "  roles:"
cat ../data/serversList.csv |grep -v "^#\|^#" |awk -F, '{print $1" "$2}' |while read ip projs
do
	echo "  {% if grains['id'] == \"$ip\" %}"
	echo $projs |sed "s/\;/ /g" |while read -a proj
	do
		for p in "${proj[@]}"
		do
			echo "    - $p"
		done
	done
	echo -e "  {% endif %}\n"
done
