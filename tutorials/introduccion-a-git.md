# Introducción a Git

- [Introducción a Git](#introducción-a-git)
  - [Conceptos básicos](#conceptos-básicos)
    - [¿Qué es Git y por qué usarlo?](#qué-es-git-y-por-qué-usarlo)
    - [¿Cuál es la diferencia entre Git y GitHub?](#cuál-es-la-diferencia-entre-git-y-github)
    - [Contribuir a un proyecto](#contribuir-a-un-proyecto)
    - [Otras características de GitHub](#otras-características-de-github)
  - [Glosario de comandos](#glosario-de-comandos)
  - [Instalación y configuración](#instalación-y-configuración)
  - [Crear un repositorio vacío](#crear-un-repositorio-vacío)
  - [Clonar un repositorio remoto](#clonar-un-repositorio-remoto)
  - [Sincronizar cambios por terminal](#sincronizar-cambios-por-terminal)
  - [Git LFS](#git-lfs)
    - [Configuración e instalación de Git LFS](#configuración-e-instalación-de-git-lfs)
    - [Ejemplos de uso](#ejemplos-de-uso)
  - [Trabajar con ramas](#trabajar-con-ramas)
    - [¿Qué es una rama?](#qué-es-una-rama)
    - [Git Workflow](#git-workflow)
    - [Comandos básicos](#comandos-básicos)
    - [Agregar cambios de una rama en un solo commit](#agregar-cambios-de-una-rama-en-un-solo-commit)
  - [Comandos peligrosos](#comandos-peligrosos)
    - [Borrrar el último commit sin dejar rastro](#borrrar-el-último-commit-sin-dejar-rastro)
    - [Cambiar el mensaje del último commit](#cambiar-el-mensaje-del-último-commit)
    - [Combinar los últimos dos commits](#combinar-los-últimos-dos-commits)

## Conceptos básicos

### ¿Qué es Git y por qué usarlo?

&nbsp;
Git es un sistema de **control de versiones** que permite llevar un registro de los cambios en el código fuente de un proyecto.

- Permite **colaborar** con otros desarrolladores sin sobrescribir cambios.

- Facilita **recuperar versiones** anteriores del código.

- Permite la **distribución de tareas** entre los desarrolladores.

### ¿Cuál es la diferencia entre Git y GitHub?

&nbsp;
El espacio donde se almacenan los archivos del proyecto junto con su historial de cambios se llama **repositorio**. Podríamos tener un repositorio **local** en una única computadora o en una red sin conexión a internet, y aún así usar Git para que uno o más desarrolladores gestionen las versiones de un programa.

&nbsp;
Github es una plataforma que permite alojar repositorios **remotos** en sus servidores, los cuales eventualmente pueden estar vinculados a repositorios locales.

### Contribuir a un proyecto

&nbsp;
Varios desarrolladores pueden tener **clones** locales de un mismo repositorio remoto para **realizar cambios** en un entorno controlado. De esta forma, si es necesario, es posible **revertir** cambios sin afectar los demás clones, o bien **incorporarlos** al repositorio remoto. Así, otros desarrolladores pueden **obtener** los cambios publicados en el repositorio remoto sin que se vean afectados los cambios sobre los que trabajaban en sus respectivos repositorios locales.

&nbsp;
Hay dos formas de realizar cambios en un repositorio de GitHub. Por un lado, el creador de un proyecto puede nombrar **colaboradores** o **contribuidores** para que estos puedan realizar cambios como si el respositorio fuese propio. Y por otro lado, cualquier persona puede descargar un clon de cualquier repositorio, realizar cambios, y **solicitar** al creador que los incorpore.

### Otras características de GitHub

&nbsp;
GitHub también ofrece herramientas para gestionar las **tareas** de los distintos desarrolladores, reportar **errores**, proponer y **revisar** aportes de terceros, **automatizar** pruebas e implementaciones y **documentar** los proyectos. Además, proporciona **alojamiento** gratuito para sitios web estáticos y funciona como **red social**, ya que cada cuenta puede tener seguidores y hay un feed donde es posible visualizar las interacciones.

## Glosario de comandos

&nbsp;
Existen comandos para realizar las acciones que se mencionaron anteriormente. Los siguientes son los más importantes:

| Comando | Explicación |
|-|-|
| `init` | Inicializa el versionado de un repositorio. |
| `clone` | Crea una copia local de un repositorio remoto. |
| `add` | Agrega los cambios hechos al próximo commit. |
| `commit` | Guarda un registro del estado actual del proyecto. |
| `pull` | Obtiene los commits del repositorio remoto, incorporándolos localmente. |
| `push` | Publica en el repositorio remoto los commits incorporados localmente. |
| `status` | Consulta el estado de cambios de los archivos del repositorio. |
| `log` | Consulta la lista de commits del repositorio. |

## Instalación y configuración

&nbsp;
Por única vez, es necesario instalar y configurar Git vinculando una cuenta de Github localmente.

1. Descargar e instalar [Git](https://git-scm.com/).

2. Crear una cuenta en [GitHub](https://github.com/).

3. Iniciar sesión en GitHub y en configuraciones dirigirse a la sección [Developer Settings](https://github.com/settings/tokens) para generar un Token clásico con todos los permisos tildados.

    > [!WARNING]
    &nbsp;Una vez creado, el token no se puede volver a consultar, por lo que es necesario guardarlo para futura referencia.

4. Crear una carpeta llamada `repos` que va a ser utilizada para almacenar clones locales de repositorios.

5. Inicializar una terminal en la carpeta `repos`. Para esto, hacer click derecho con la carpeta abierta y seleccionar `Abrir en Terminal` o abrir una terminal y navegar con el comando `cd` hasta la ruta donde esté ubicada la carpeta.

6. Configurar el nombre de usuario, mail y Token:
    ```
    git config --global user.name TU_NOMBRE_DE_USUARIO
    git config --global user.email TU_DIRECCION_DE@MAIL.COM
    git config --global user.password TU_TOKEN
    ```

    > [!NOTE]
    &nbsp;
    Con el comando `git config -l` es posible verificar la lista de configuraciones.

## Crear un repositorio vacío

1. Iniciar sesión en GitHub y crear un repositorio remoto vacío que tenga el `NOMBRE_DEL_PROYECTO`.

2. Dentro de la carpeta `repos` hecha durante la [instalación y configuración](#instalación-y-configuración), crear una carpeta con el mismo `NOMBRE_DEL_PROYECTO` que el repositorio remoto.

3. Abrir una terminal en la carpeta del proyecto e inicializar el versionado:
    ```
    git init
    ```

4. Luego de agregar los archivos iniciales del proyecto, hacer un primer commit:
    ```
    git add .
    git commit -m "Primer commit"
    ```

5. Finalmente, vincular el repositorio local con el remoto y publicar los cambios reemplazando `TU_NOMBRE_DE_USUARIO` y el `NOMBRE_DEL_PROYECTO`:
    ```
    git remote add origin www.github.com/TU_NOMBRE_DE_USUARIO/NOMBRE_DEL_PROYECTO.git
    git branch -M main
    git push -u origin main
    ```

6. Si llega a haber un error, usar los comandos `git remote -v` y `git remote remove origin` para ver y quitar la URL configurada respectivamente. Luego, intentar nuevamente con:
    ```
    git remote set-url origin https://github.com/TU_NOMBRE_DE_USUARIO/NOMBRE_DEL_PROYECTO.git
    git branch -M main
    git push -u origin main
    ```

## Clonar un repositorio remoto

1. Abrir una terminal en la carpeta `repos` hecha durante la [instalación y configuración](#instalación-y-configuración). Para esto, hacer click derecho con la carpeta abierta y seleccionar `Abrir en Terminal` o abrir una terminal y navegar con el comando `cd` hasta la ruta donde esté ubicada la carpeta.

2. Crear una copia local de un repositorio remoto, reemplazando el `NOMBRE_DE_USUARIO` y `NOMBRE_DEL_PROYECTO`:
    ```
    git clone www.github.com/NOMBRE_DE_USUARIO/NOMBRE_DEL_PROYECTO.git
    ```

    > [!NOTE]
    &nbsp;
    Con el comando `git log --oneline` es posible consultar un resumen de todos los commits hechos.

## Sincronizar cambios por terminal

1. Abrir una terminal en la carpeta `NOMBRE_DEL_PROYECTO`.

2. Obtener posibles cambios que pueda tener el repositorio remoto:
    ```
    git pull
    ```

3. (Opcional) Consultar los cambios realizados en el repositorio local del proyecto:
    ```
    git status
    ```

4. Agregar los archivos que están preparados para ser comiteados.
   - Para agregar un solo archivo que tenga cambios:
        ```
        git add NOMBRE_DEL_ARCHIVO
        ```

   - Para agregar todos los archivos que tengan cambios:
        ```
        git add .
        ```

5. Para guardar una nueva versión del repositorio, hacer un commit especificando los cambios incorporados:
    ```
    git commit -m "Detallar acá los cambios incorporados"
    ```

6. Publicar los commits hechos en la rama `main` del repositorio remoto alojado en GitHub:
    ```
    git push
    ```

## Git LFS

&nbsp;
Git LFS o Large Files Storage es una biblioteca de Git que permite gestionar, como su nombre lo indica, archivos pesados.
No solo optimiza la capacidad de almacenamiento, reduciendo el tamaño de los repositorios, sino que además permite que Git funcione más rápidamente, por ejemplo a la hora de hacer `pull` o `commit`.

&nbsp;
Git LFS es muy útil para versionar archivos binarios.
Cuando versionamos un archivo con Git, no solo estamos guardando el estado actual del último commit sino que Git lleva un registro de los cambios.
Con los archivos de texto plano, con código, Git no guarda una copia de un archivo por cada cambio que haya sufrido sino que gestiona muy eficientemente el espacio.
Pero cuando se trata de archivos binarios, al cambiar el color de fondo de un logo PNG, o al agregar unos pocos píxeles en un gráfico, el repositorio guarda una copia de las viejas versiones de la imagen, ya que después de todo tiene que eventualmente poder recuperarlas.
Esas copias no son visibles, y probablemente no vuelvan a ser utilizadas, pero ocupan espacio y son descargadas sucesivamente.

&nbsp;
Para sortear esta cuestión, Git LFS genera punteros en los repositorios locales, de manera que solo haya que descargar las versiones antiguas de los archivos binarios en caso de que sea necesario.
En cualquier otra situación, basta con tener un puntero para saber dónde está el archivo real almacenado.

### Configuración e instalación de Git LFS

&nbsp;
Luego de [descargar Git LFS](https://git-lfs.github.com/), basta con inicializarlo en cada repositorio que se requiera:

```
git lfs install
```

### Ejemplos de uso

- Guardar con Git LFS todos los archivos con extensión "png":

    ```
    git lfs track '*.png'
    ```

- Guardar con Git LFS todos los archivos con extensión "png" de la carpeta "images":

    ```
    git lfs track 'images/*.png'
    ```

- Guardar con Git LFS todos los archivos de la carpeta "images":

    ```
    git lfs track 'images/'
    ```

- Consultar una lista de lo que se está guardando con Git LFS:

    ```
    git lfs track
    ```

- Consultar el detalle de todos los archivos guardados con Git LFS:

    ```
    git lfs ls-files
    ```

## Trabajar con ramas

### ¿Qué es una rama?

&nbsp;
Una rama en Git es una línea de tiempo paralela del proyecto.
Diferentes ramas pueden tener diferentes commits independientes los unos de los otros.
Una rama sirve para trabajar en una nueva funcionalidad o corrección sin afectar el código principal (de la rama `main`).
Las ramas pueden converger, de manera que la receptora pase a tener los commits de la rama que se está fusionando.
Tras una fusión, la cronología de los commits se mantiene intacta, ya que ambas ramas respetan el momento en que se realizaron los commits y el estado del repositorio en cada commit.
Por este motivo, al unir dos ramas se pueden generar conflictos si hay commits contradictorios.

### Git Workflow

&nbsp;
El Workflow o flujo de trabajo en Git se define como la forma en la que un equipo se organiza para realizar commits.
Si se trata de un proyecto individual o de un equipo chico sin experiencia en Git, se puede usar solo la rama `main`.
Hay varios enfoques para trabajar con ramas.
El más simple es *GitHub Flow*: cada cambio se desarrolla en una rama, se revisa mediante un pull request y luego se fusiona a `main` para su despliegue.

### Comandos básicos

- Mostrar todas las ramas creadas e identificar la actual:

    ```
    git branch
    ```

- Crear la rama `feature/nuevarama` a partir de la rama `main` del repositorio remoto, y publicarla en el repositorio remoto:

    ```
    git checkout -b feature/nuevarama origin/main
    git push -u origin feature/nuevarama
    ```

- Moverse a `feature/algunarama`:

    ```
    git checkout feature/algunarama
    ```

- Anadir a la rama `main` los cambios de `feature/otrarama`:

    ```
    git checkout main
    git merge feature/otrarama
    ```

- Eliminar rama `feature/algunarama` del repositorio remoto:

    ```
    git push origin --delete feature/algunarama
    ```

### Agregar cambios de una rama en un solo commit

&nbsp;
Es posible combinar todos los cambios de una rama en un solo commit, en lugar de traer todos los commits individuales de esa rama:

```
git checkout main
git merge --squash feature/algunarama
```

&nbsp;
Luego, solo es necesario aclarar con un mensaje descriptivo cuáles son los cambios que se están incorporando en la rapa principal:

```
git commit -m "Incorpora algunarama"
```

## Comandos peligrosos

&nbsp;
Algunos comandos son útiles y hay algunas situaciones que solo se pueden resolver haciendo uso de estos. Pero pueden hacer que se pierda trabajo, por eso solo se usan con cuidado, o en ramas personales.

- `--hard` borra cambios y commits sin posibilidad de recuperarlos fácilmente.

- `--force` sobrescribe la historia remota, pudiendo borrar commits de otros colaboradores si ya habían hecho pull.

- `rebase` reescribe el historial para que los commits parezcan hechos después de otros, reescribiendo los códigos hash de los commits.

### Borrrar el último commit sin dejar rastro

&nbsp;
Elimina por completo el último commit (y sus cambios) del historial local.
Luego, se fuerza que el remoto quede igual.

```
git reset --hard HEAD~1
git push -f origin main
```

### Cambiar el mensaje del último commit

&nbsp;
Permite editar el último commit y actualiza el remoto con la nueva versión.

```
git commit --amend -m 'Nuevo mensaje'
git push --force
```

### Combinar los últimos dos commits

1. Asegurarse de estar en la rama correcta:

    ```
    git checkout nombre_de_la_rama
    ```

2. Iniciar un rebase interactivo:

    ```
    git rebase -i HEAD~2
    ```

   - Se abrirá un editor de texto mostrando los últimos dos commits:

       ```
       pick abc123 Mensaje del primer commit
       pick def456 Mensaje del segundo commit
       ```

   - Cambiar el segundo pick por squash

       ```
       pick abc123 Mensaje del primer commit
       squash def456 Mensaje del segundo commit
       ```

   - Guardar y salir del editor:

       ```
       :wq
       ```

   - Editar el mensaje del commit resultante de la misma forma.

3. Si ya se había hecho push, cambiar el historial de la rama:

    ```
    git push origin nombre_de_la_rama --force
    ```
