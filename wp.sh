#!/bin/bash

CURRENT_DIR=$(pwd)
IP=$(ipconfig getifaddr en0)

if [ -z "$IP" ]; then
    IP="localhost"
fi

mkdir wordpress && cd $_

wget http://wordpress.org/latest.zip

unzip latest.zip

mv wordpress/* .

rm -fr wordpress/
rm -fr latest.zip
rm -fr readme.html

rm -fr wp-content/plugins/akismet wp-content/plugins/hello.php

cd wp-content/themes

rm -fr twenty*/

git clone git@github.com:tkjaergaard/wordpress-starter-template.git theme-rename

subl ..

cd "$CURRENT_DIR/wordpress"

clear

/usr/bin/open -a "/Applications/Google Chrome.app" "http://$IP:8000"

php -S "$IP:8000"