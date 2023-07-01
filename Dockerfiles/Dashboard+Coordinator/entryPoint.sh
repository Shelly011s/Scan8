#!/bin/bash

#checking if directory exists or not
if [ ! -d "/app/common/Results" ]
then 
    mkdir -p /app/common/Uploads
    mkdir -p /app/common/Results    
fi

#Running Flask Web Server
cd Dashboard
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
export FLASK_APP=app.py 
flask run --host=0.0.0.0 --port=5000 --debug &

#Running Coordinator node 
cd ../Coordinator
python3 app.py &

#Preventing the script from exiting
while true; do sleep 1; done