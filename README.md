# ¿Que puedo hacer?
Hay 3 scripts
- 'launch_server' que levanta un servidor de mysql usando docker.
- 'load_data' encuentra un container de creado con el script anterior y le importa datos.
- 'dump_data' extrae los datos del server y deja un script sql que despues permite importarlas.

# ¿Donde funciona?
Teoricamente en cualquier lado... TEORICAMENTE, pero esta pensado para funcionar en el lab de famaf.

# ¿Docker te pide sudo y caga todo el script?
Necesitas agregarlo al sudogroup \
es asi de fácil---->[how can i use docker without sudo](https://askubuntu.com/questions/477551/how-can-i-use-docker-without-sudo)

# ¿Si encuentro un bug?
Abrí un issue y si me apiado de tu alma lo mirare.
En general el script es una estupidez, seguramente puedas resolver cualquier problema solo
Y si lo resolves solo también podes poner el issue y la solución que encontraste.
