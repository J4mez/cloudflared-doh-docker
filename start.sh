#!/bin/bash -e

cron -f &

/usr/bin/supervisord -n -c /etc/supervisor/conf.d/supervisord.conf # Run supervisord

echo "Starting cloudflared"