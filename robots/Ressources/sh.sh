
ok () {
	cd $1
	for f in *;do
		if [ -d "${f}" ]; then
			ok "$f"
		else
			echo "README: " `cat README`
		fi
	done
	cd ..
}

ok "$1"
