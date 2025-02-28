# Python

## Instalar el paquete Seaborn en un entorno virtual

0. Navegar en la terminal integrada de VS Code a la carpeta del proyecto.

1. Crear el entorno virtual:

```
python3 -m venv myenv
```

2. Activar el entorno virtual (en macOS y Linux)

```
source myenv/bin/activate
```

3. Activar el entorno virtual (en Windows)

```
myenv\Scripts\activate
```

4. Instalar seaborn

```
pip install seaborn
```

5. Verificar la instalación de seaborn

```
python -c "import seaborn as sns; print(sns.__version__)"
```

## Ejecutar servidor HTTP

Es posible usar el servidor HTTP integrado para páginas web estáticas que carguen archivos desde `config.json` con JavaScript.

1. Abrir una terminal o línea de comandos.

2. Navegar hasta el directorio del proyecto.

3. Ejecutar el siguiente comando (de Python 3):

```
python3 -m http.server
```

4. Esto iniciará un servidor local en el puerto 8000. Accede a tu proyecto en tu navegador a través de `http://localhost:8000`. También es posible acceder a través de `http://IP:8000` desde un dispositivo conectado a la misma red WiFi que el servidor.