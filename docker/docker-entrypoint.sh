#!/bin/sh

if [ -z $DATAHOST ]; then
    echo "DATAHOST IS NULL"
else
    sed -i "s%${ORI_DATAHOST}%${DATAHOST}%g" `grep "${ORI_DATAHOST}" -rl ./`
fi

if [ -z $FRONT_HOST ]; then
    echo "FRONT_HOST IS NULL"
else
    sed -i "s%${ORI_FRONT_HOST}%${FRONT_HOST}%g" `grep "${ORI_FRONT_HOST}" -rl ./`
fi

exec "$@"
