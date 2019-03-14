#!/bin/bash

# Initialize basic vars and helpers
source blueprint-lib/init.sh

##
# Add dependencies here
##

# source blueprint-lib/docker.sh

##
# ADD BLUEPRINT CODE BELOW HERE
#
# BASE_PATH is the full path to the project root
# APP_NAME is the name of the Django app that will be modified
##

# Copy blk static files
mkdir -p $BASE_PATH/static/vendor/blk/
cp -R blk/ $BASE_PATH/static/vendor/blk/

# Copy base, landing and authentication templates
cp -R templates/ $BASE_PATH/home/templates
