import os

def listar_estructura_directorio(ruta, archivo, prefijo=''):
    for elemento in os.listdir(ruta):
        ruta_completa = os.path.join(ruta, elemento)
        archivo.write(prefijo + '├── ' + elemento + '\n')
        if os.path.isdir(ruta_completa):
            listar_estructura_directorio(ruta_completa, archivo, prefijo + '│   ')

if __name__ == '__main__':
    ruta_objetivo = './../../'
    with open("estructura.txt", "w", encoding="utf-8") as archivo:
        archivo.write(ruta_objetivo + '\n')
        listar_estructura_directorio(ruta_objetivo, archivo)
