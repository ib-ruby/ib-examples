#!/bin/bash

BASEDIR=~
EXAMPLES_DIR=$BASEDIR/ib-examples
git_archives=(ib-api ib-symbols ib-extensions)

clone_git(){ 
if [ ` ls | grep $1 | wc -l`  -eq 0 ] ; then
	git clone https://github.com/ib-ruby/$1 
else
	echo "skipping  cloning $1, already present"
	echo "delete Gemfile (and Gemfile.lock) and rerun this setup"
fi
}


make_gemfile(){
	echo "

# frozen_string_literal: true

 source \"https://rubygems.org\"

 #git_source(:github) {|repo_name| \"https://github.com/#{repo_name}\" }
 gem \"ib-api\" , path: \"${BASEDIR}/ib-api/\"
 gem \"ib-symbols\", path: \"${BASEDIR}/ib-symbols/\"
 gem \"ib-extensions\", path: \"${BASEDIR}/ib-extensions/\"
 gem \"getopt\"
 gem \"pastel\"
 gem \"dry-core\"
 gem \"rspec\"
 gem \"rspec-its\"
 gem \"rspec-collection_matchers\"
 gem \"guard\"
 gem \"guard-rspec\"
]

" > Gemfile
}
cd $BASEDIR
for archive in ${git_archives[*]} ; do 
	clone_git ${archive}
done

cd $EXAMPLES_DIR
if [ ` ls | grep Gemfile | wc -l`  -eq 0 ] ; then
	make_gemfile

	bundle install
	bundle update

	echo "-----------------------------------------"
	echo " setup finished                          "
	echo ""
	echo " you may now use the ib-ruby suite       "
else
	bundle update
	echo "-----------------------------------------"
	echo " setup updated                           "
	echo ""
fi


