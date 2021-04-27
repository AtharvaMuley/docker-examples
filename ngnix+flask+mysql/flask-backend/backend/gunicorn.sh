#!/bin/sh
gunicorn -w3 --bind 0.0.0.0:8080 wsgi:app