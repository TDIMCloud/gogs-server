#!/bin/bash
set -ex
/etc/init.d/ssh start
/etc/init.d/ssh status
supervisord -c /system/gogs/assests/supervisord.conf
