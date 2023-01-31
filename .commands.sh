#!/bin/bash

function new() {
  if [ -z ${1+x} ]
  then
    echo "Enter template name. (new \${template-name} \${directory-name})"
    return
  fi
  if [ -z ${2+x} ]
  then
    echo "Enter directory name. (new \${template-name} \${directory-name})"
    return
  fi
  name=$1
  dir=$2
  echo "Creating $name project."
  if git clone -b $name https://github.com/Purposelessness/Templates.git
  then
    mkdir $dir
    cp -rf Templates/* $dir/
    cp -rf Templates/.* $dir/
    rm -rf Templates/
    cd $dir
    rm -rf .git/
  else
    echo "Cannot clone repo. Is everything valid?"
    return
  fi
  echo "Project successfully created! ^_^"
}
