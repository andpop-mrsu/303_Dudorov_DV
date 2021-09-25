#!/bin/bash
python3 main.py
sqlite3 movies_rating.db < db_init.sql