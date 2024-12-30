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