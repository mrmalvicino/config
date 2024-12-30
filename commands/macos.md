# MacOS

## Comandos generales

- Consultar la aceleración del mouse (-1 sin aceleración, 3 aceleración máxima):

```
defaults read -g com.apple.mouse.scaling
```

- Cambiar la aceleración del mouse (a -1):

```
defaults write -g com.apple.mouse.scaling -integer -1
```

## Bug fixes

- Error al guardar archivo .svg en Inkscape.

Solución: Abrir Inkscape con el siguiente comando y luego guardar.

```
sudo /Applications/Inkscape.app/Contents/MacOS/inkscape
```

- Error al guardar archivo en VS Code.

"Failed to save 'filename': Insufficient permissions."

Solución: Navegar en una terminal hasta la carpeta donde se encuentra 'filename' y ejecutar el siguiente comando.

```
sudo chmod -R 777 filename
```

Donde filename es el nombre del archivo, o el nombre de la carpeta donde se encuentra.