#!/bin/bash
cd Worker
clamd &
sleep 3
python3 app.py 