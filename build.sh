#!/bin/bash

# Terminate execution if any step throws an unhandled exception
set -e

# Upgrade base setup and fetch standard project requirements
python3 -m pip install --upgrade pip
pip install -r requirements.txt

# Execute Django's compilation algorithm to bundle assets cleanly
python3 manage.py collectstatic --noinput --clear
