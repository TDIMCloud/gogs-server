#!/bin/bash
if [[ ! $PORT ]]; then
  PORT=3000
fi
/system/gogs/assests/gogs/gogs web --port $PORT
