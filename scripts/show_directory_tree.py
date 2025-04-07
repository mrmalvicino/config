import os

def listar_estructura_directorio(ruta, prefijo=''):
    for elemento in os.listdir(ruta):
        ruta_completa = os.path.join(ruta, elemento)
        print(prefijo + '├── ' + elemento)
        if os.path.isdir(ruta_completa):
            listar_estructura_directorio(ruta_completa, prefijo + '│   ')

if __name__ == '__main__':
    ruta_objetivo = './../../'
    print(ruta_objetivo)
    listar_estructura_directorio(ruta_objetivo)