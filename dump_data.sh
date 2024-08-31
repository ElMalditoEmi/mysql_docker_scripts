#!/bin/bash
container_name=$(docker ps | grep mysql | cut --delimiter=' ' -f 1)

if [ -z "${1}" ]; then
    echo "Usage: 'sh ./dump_data.sh <database_to_dump>' dump specific db"
         "Usage: 'sh ./dump_data.sh --all' dumps every database"
    exit 1:
fi
echo
echo
echo
echo "Introduzca la contraseña"
echo "Solo presionar enter si es vacía"
echo ""
echo ">>>"; read root_password

if [ "$1" = "--all" ]; then
    echo "Dumping all databases..."
    docker exec $container_name sh -c "exec mysqldump --all-databases -uroot -p'$root_password'" > ./${container_name}_data.sql
else
    echo "Dumping database: $1"
    docker exec $container_name sh -c "exec mysqldump $1 -uroot -p'$root_password'" > ./$1_data.sql
fi

