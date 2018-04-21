#!/bin/bash
## Start or stop postgres docker container
## Usage: ./postgres.sh
## Author: Diego Andre Poli <diegoandrepoli@gmail.com>

# Start container
dstart(){
   echo "Starting Postgres container..."
   docker-compose up -d
   echo
}

# Stop container
dstop(){
   echo "Stop Postgres container..."
   echo
   docker-compose down 
   echo
}

# Exit on option
dexit(){
  echo "Bye :)"
  echo 
}

# Invalid option
invalid(){
   echo "Invalid option :("
   echo
}

clear
echo 
echo "To continue select an option:"
echo "1 - Start Postgres container"
echo "2 - Stop Postgres container"
echo "3 - Exit"
echo

# Get option
read option

# Check is selected option
if [ "$option" = 1 ];then
  dstart
elif [ "$option" = 2 ];then
  dstop
elif [ "$option" = 3 ];then
  dexit
else
  invalid
fi
