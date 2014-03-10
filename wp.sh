#!/bin/bash

CURRENT_DIR=$(pwd)
IP=$(ipconfig getifaddr en0)

if [ -z "$IP" ]; then
    IP="localhost"
fi

wget http://wordpress.org/latest.zip

unzip latest.zip

rm -fr latest.zip
rm -fr wordpress/readme.html

rm -fr wordpress/wp-content/plugins/akismet wp-content/plugins/hello.php

cd wordpress/wp-content/themes

rm -fr twenty*/

git clone git@github.com:tkjaergaard/wordpress-starter-template.git theme-rename

subl ..

cd "$CURRENT_DIR/wordpress"

clear

/usr/bin/open -a "/Applications/Google Chrome.app" "http://$IP:8000"

php -S "$IP:8000"
