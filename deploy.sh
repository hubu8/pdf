#!/bin/sh

# If a command fails then the deploy stops
set -e

pushMyBlogHugo(){
	printf "\033[0;32mDeploying updates to GitHub "https://github.com/hubu8/pdf"\033[0m\n"
	git pull
	# Add changes to git.
	git add .

	# Commit changes.
	msg="change MyBlogHugo site $(date)"

	if [ "$#" -gt 1 ]; then
		msg="$2"
	fi
	git commit -m "$msg"

	# Push source and build repos.
	git push origin master
	sleep 10
}



pushMyBlogHugo	$*	

