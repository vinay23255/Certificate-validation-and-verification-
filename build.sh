#!/bin/bash

# Upgrade pip and install required dependencies
python3 -m pip install --upgrade pip
pip install -r requirements.txt

# Gather all static folder CSS assets into the /staticfiles directory
python3 manage.py collectstatic --noinput --clear
