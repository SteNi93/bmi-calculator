#!/bin/sh
nginx -g 'daemon off;' &

exec /bin/bash -c "source $NVM_DIR/nvm.sh && nvm use 16 && yarn start"
