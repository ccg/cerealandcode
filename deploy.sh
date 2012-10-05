#!/bin/bash

function upload
{
    s3cmd put --acl-public --guess-mime-type "$1" "s3://www.cereal-and-code.com/$1"
}

for file in $(ls *.html *.css *.js)
do
    upload "${file}"
done
