# React

## Instalación

1. Descargar [Node.js](https://nodejs.org).

2. Crear un proyecto:

    ```bash
    npm create vite@latest
    ```

3. (Opcional) Si no anda la última versión:

    ```bash
    npm uninstall react react-dom
    npm install react@18 react-dom@18
    ```

## Desarrollo

1. Instalar dependencias:

    ```bash
    npm install
    ```

2. (Opcional) Consultar versión instalada:

    ```bash
    npm list react react-dom
    ```

3. Inicializar servidor:

    ```bash
    npm run dev
    ```

## Implementación

1. Abrir `vite.config.js` y agregar la opción `base` con el nombre del repositorio:

    ```json
    import { defineConfig } from 'vite';
    import react from '@vitejs/plugin-react';

    export default defineConfig({
    plugins: [react()],
    base: '/nombre-del-repo/', // Reemplazar por el nombre del repositorio
    });
    ```

2. Compilar el proyecto:

    ```bash
    npm run build
    ```

3.  Subir la carpeta `dist/` a GitHub Pages:

    ```bash
    npm install gh-pages --save-dev
    ```

4. Agregar estos scripts en `package.json`:

    ```json
    "scripts": {
    "predeploy": "npm run build",
    "deploy": "gh-pages -d dist"
    }
    ```

5. Publicar el sitio:

    ```bash
    npm run deploy
    ```