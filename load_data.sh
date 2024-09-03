#!/bin/bash


if [ -z "${1}" ]; then
    echo "Usage: 'sh ./load_data.sh /path/to/data.sql'"
    exit 1
fi

if !(docker ps --filter status=running | grep mysql | cut --delimiter=' ' -f 1);then
    echo "No se encontró un container corriendo"
fi

container_name=$(docker ps | grep mysql | cut --delimiter=' ' -f 1)


echo
echo
echo
echo "Introduzca la contraseña"
echo "Solo presionar enter si es vacia"
echo ""
echo ">>>"; read root_password


docker exec -i $container_name sh -c "exec mysql -v -uroot --password='${root_password}' "< $1
