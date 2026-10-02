# Proyecto: Descarga efectiva y sedimentos del rio Magdalena

Primer entregable del proyecto de investigacion - curso de Machine Learning.

## Estructura

```
proyecto_magdalena/
├── _config.yml          configuracion del Jupyter Book
├── _toc.yml             tabla de contenidos del libro
├── intro.md             pagina de presentacion
├── proyecto.ipynb       NOTEBOOK PRINCIPAL (el entregable)
├── requirements.txt     dependencias con versiones fijadas
├── environment.yml      entorno conda equivalente
├── referencias.bib      bibliografia
├── src/config.py        semillas, rutas y estilo de graficos
├── datos/
│   ├── crudos/          <-- AQUI van los CSV descargados de DHIME
│   └── procesados/      datos intermedios generados por el notebook
└── figuras/             figuras exportadas
```

## Como trabajar

```bash
conda activate ml_venv          # SIEMPRE primero
jupyter notebook proyecto.ipynb # editar el informe
```

## Como compilar el Jupyter Book

```bash
conda activate ml_venv
myst build --html
```

El resultado queda en `_build/html/`. Usa `.\publicar.ps1` para
compilar y publicar en un solo paso.

Para publicarlo y obtener el enlace (GitHub Pages):

```bash
ghp-import -n -p -f _build/html
```

## Pendientes

- [ ] Descargar los datos de DHIME y ponerlos en `datos/crudos/`
- [ ] Ajustar `cargar_ideam()` a los nombres de columna reales
- [ ] Ajustar `FECHA_CORTE_TEST` en `src/config.py` al periodo real
- [ ] Completar las secciones marcadas con *Completar*
- [ ] Rellenar el diccionario de variables y la licencia
