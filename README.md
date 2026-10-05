# Descarga efectiva y transporte de sedimentos en el rio Magdalena

Primer entregable del proyecto de investigacion del curso de Machine Learning.

**Autores:** Kevin Clemente Rosario y Manuel Meza

- **Informe publicado:** https://qclemente.github.io/Proyecto_Magdalena_ML/
- **Notebook:** [`proyecto.ipynb`](proyecto.ipynb)

## Contenido del repositorio

```
.
├── proyecto.ipynb       informe completo, con codigo y resultados
├── myst.yml             configuracion del libro (titulo, autores, indice)
├── requirements.txt     dependencias con versiones fijadas
├── environment.yml      entorno conda equivalente
├── DESCARGA_DATOS.md    como obtener los datos del IDEAM
├── publicar.ps1         compila el libro y lo publica
├── src/config.py        semillas, rutas y constantes del proyecto
└── datos/
    └── UBICACION_ESTACIONES_DESCARGADAS_IDEAM.csv
```

## Datos

Los archivos originales del IDEAM **no se incluyen**: su licencia autoriza la descarga
para uso personal y no comercial, pero reserva los demas derechos. El procedimiento
exacto para obtenerlos esta en [`DESCARGA_DATOS.md`](DESCARGA_DATOS.md).

## Reproducir el analisis

```bash
conda create -n ml_venv python=3.9
conda activate ml_venv
pip install -r requirements.txt
```

Coloca los CSV descargados en `datos/crudos/` y ejecuta el notebook completo.

Para compilar y publicar el libro:

```powershell
.\publicar.ps1
```

El libro se compila con MyST, que requiere Node.js instalado en el sistema.
