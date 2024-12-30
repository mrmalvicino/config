# Ubuntu

## Comandos generales

- Actualizar SO

```
sudo apt update && sudo apt upgrade
```

- Instalar Git

```
sudo apt install git
```

- Instalar archivos .deb

```
sudo dpkg -i file_name.deb
```

- Descomprimir y pegar archivos tar.xz en /bin

```
sudo tar -xf file_name.tar.xz -C /bin
```

- Snap Store update error

```
killall snap-store
snap refresh
```