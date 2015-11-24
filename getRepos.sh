#!/bin/bash
#Script to get all repositories under a user from bitbucket
#Usage: getRepos.sh [username] [filename]

mkdir projects;
cp ${2} projects/${2}
cd projects;
for repo_name in $(cat ${2})
do
	git clone https://bitbucket.org/${1}/$repo_name.git;
  cd $repo_name;
  bower install;
  cd ..
done