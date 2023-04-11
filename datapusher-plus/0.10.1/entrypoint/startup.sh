#!/bin/bash
  
# turn on bash's job control
set -m
  
# Start the primary process and put it in the background
${VENV}/bin/uwsgi --socket=/tmp/uwsgi.sock --enable-threads -i ${CFG_DIR}/uwsgi.ini --wsgi-file=${SRC_DIR}/datapusher-plus/wsgi.py &
  
# Start the helper process
cd ${SRC_DIR}/testing-datapusher-plus && ${VENV}/bin/python test.py
  
# the my_helper_process might need to know how to wait on the
# primary process to start before it does its work and returns
  
  
# now we bring the primary process back into the foreground
# and leave it there
fg %1
