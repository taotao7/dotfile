#!/usr/bin/env bash
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

#wrapper script for running weather on interval

fahrenheit=$1
location=$2

LOCKFILE=/tmp/.gruvbox-tmux-weather.lock

ensure_single_process()
{
	# check for another running instance of this script and terminate it if found
	[ -f $LOCKFILE ] && ps -p "$(cat $LOCKFILE)" -o cmd= | grep -F " ${BASH_SOURCE[0]}" && kill "$(cat $LOCKFILE)"
	echo $$ > $LOCKFILE
}

main()
{
	local current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    local datafile=/tmp/weather.txt

	if [ ! -f $datafile ]; then
		printf "Loading..." > $datafile
	fi

	$current_dir/weather.sh > $datafile

	while tmux has-session &> /dev/null
	do
		$current_dir/weather.sh $fahrenheit $location > $datafile
		if tmux has-session &> /dev/null
		then
			sleep 1200
		else
			break
		fi
	done

	rm $LOCKFILE
}

#run main driver function
main
