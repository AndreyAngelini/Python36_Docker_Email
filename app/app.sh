#!/bin/sh

pip install --upgrade pip
pip install bottle==0.12.13 
pip install psycopg2
pip install redis
python -u sender.py
