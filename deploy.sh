#!/bin/sh

if [ ! -f ./deploy.sh ]; then
    echo "You're probably in the wrong directory."
else
    s3cmd sync --acl-public --guess-mime-type --exclude .git\* ./ s3://www.cereal-and-code.com/
fi

