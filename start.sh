#!/bin/bash

# Start Flask app in background
python /app/app.py &

# Start Nginx in foreground
nginx -g "daemon off;"

