#!/bin/bash

cd /home/node/app

npm --prefix /home/node/app/ run serve &
npm --prefix /home/node/app/ run grab -- --site=telsu.fi --days=7 &
npm --prefix /home/node/app/ run grab -- --site=telsu.fi --cron="48 0,6,12,18 * * *" --days=7 &

wait