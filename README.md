# Wordpress Quick Starter

Simple quick starter script for local Wordpress development.


## Installation

clone this repository

    git clone git@github.com:tkjaergaard/wordpress-starter-template.git

Move the wp.sh file to you `/bin/` or `/usr/local/bin` directory and make it executable:
	
	sudo mv wp.sh /bin/wp
	sudo chmod +x /bin/wp

## Usage

Change directory to where you wanna install Wordpress and run the wp command.

	cd ~/Wordpress-dir/
	wp



## Boilerplate

The script clones my [wordpress-starter-template](https://github.com/tkjaergaard/wordpress-starter-template) into the themes directory to you to get started.

## Clean up

The script cleans up the default Wordpress installation. It removes all default themes and plugins and the readme.html file.

## Notice

The command is adjusted for my current setup at my OSX machine, and you might wanna change some things in the script if you intend to use it yourself. But it might be a good boilerplate to automate your wordpress installation workflow.

## Author
Thomas Kjaergaard   
*Denmark*

[Twitter](http://twitter.com/t_kjaergaard)
