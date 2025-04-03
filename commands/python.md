# Python

&nbsp;
Lista de comandos útiles en [Python](https://www.python.org).

## PIP

&nbsp;
[PIP](https://pypi.org/) es una herramienta para interactuar con el repositorio central de paquetes de Python.

Consultar la versión de pip:
```bash
which pip3
pip3 --version
```

Instalar Pip
```bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
```

## Entorno virtual

&nbsp;
Los entornos virtuales en Python sirven para aislar dependencias y gestionar paquetes de manera independiente para cada proyecto.
Esto evita conflictos entre bibliotecas y versiones cuando trabajas en múltiples proyectos.

&nbsp;
Cuando se trabaja con entornos virtuales, los comandos deben ser ejecutados en una terminal desde el directorio del proyecto.

&nbsp;
Crear un entorno virtual llamado `myenv`:

```
python3 -m venv myenv
```

&nbsp;
Activar el entorno virtual en macOS o Linux:

```
source myenv/bin/activate
```

&nbsp;
Activar el entorno virtual en Windows:

```
myenv\Scripts\activate
```

&nbsp;
Desactivar el entorno virtual:

```bash
deactivate
```

## Seaborn

&nbsp;
[Seaborn](https://seaborn.pydata.org) es una biblioteca de Python basada en Matplotlib que facilita la creación de gráficos estadísticos.
Está integrada con Pandas, lo que la hace ideal para el análisis de datos.

&nbsp;
Para instalar Seaborn, ejecutar:

```
pip install seaborn
```

&nbsp;
Para verificar la instalación de Seaborn, ejecutar:

```
python -c "import seaborn as sns; print(sns.__version__)"
```

## Ejecutar servidor HTTP

&nbsp;
Es posible usar el servidor HTTP integrado para páginas web estáticas renderizadas con JavaScript.

&nbsp;
Para esto, abrir una terminal o línea de comandos, navegar hasta el directorio del proyecto, y ejecutar:

```
python3 -m http.server
```

&nbsp;
Esto iniciará un servidor local en el puerto 8000. Accede a tu proyecto en tu navegador a través de

```bash
http://localhost:8000
```

&nbsp;
Es posible acceder al servidor desde cualquier dispositivo conectado a la misma red WiFi que el servidor reemplazando tu `IP` en el siguiente comando:

```bash
http://IP:8000
```

## Fast API

&nbsp;
Instalar [Fast API](https://fastapi.tiangolo.com/):

```bash
pip install "fastapi[standard]"
```

&nbsp;
Inicializar un servidor en el directorio que se encuentre el archivo `main.py` que define la instancia de Fast API en el objeto `app`:

```bash
uvicorn main:app --reload
```

&nbsp;
Esto debería inicializar un servidor HTTP en la siguiente dirección 127.0.0.1 y puerto 8000:

```
http://127.0.0.1:8000
```