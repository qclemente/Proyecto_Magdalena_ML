# Como obtener los datos

Los archivos originales **no se redistribuyen en este repositorio**. La licencia del
portal DHIME del IDEAM autoriza la descarga de los datos hidrometeorologicos para uso
personal y privado sin fines comerciales, pero establece que "cualquier otro derecho
sobre este sitio o el material publicado en el NO ESTA AUTORIZADO". La republicacion
excede ese permiso, por lo que se documenta el procedimiento de descarga en su lugar.

## Fuente

**IDEAM - Sistema de Informacion Ambiental de Colombia**
Portal DHIME: http://dhime.ideam.gov.co

## Series necesarias

Descargar en formato **CSV**, periodo **completo disponible**, sin filtrar ni rellenar.

### Caudal medio diario (`Q_MEDIA_D`, m3/s)

| Estacion | Codigo | Periodo obtenido | Registros |
|---|---|---|---|
| ARRANCAPLUMAS - AUT | 21237020 | 1934-01-01 a 2014-12-31 | 27.855 |
| PUERTO SALGAR - AUT | 23037010 | 1937-01-01 a 2026-09-28 | 28.745 |
| CALAMAR | 29037020 | 1940-07-23 a 2026-09-24 | 30.968 |
| EL BANCO - AUT | 25027020 | 1972-10-01 a 2026-09-27 | 19.019 |
| SAN ROQUE | 25027320 | 1972-10-01 a 2025-09-13 | 18.751 |
| TRES CRUCES | 25027640 | 1974-10-01 a 2026-08-31 | 16.789 |
| COYONGAL | 25027930 | 1975-03-01 a 2026-09-04 | 16.409 |

### Transporte medio diario de sedimentos (`TR_KT_D_QS_D`, kt/dia)

Las mismas siete estaciones. **Nota:** el analisis de la seccion 2.1.1 demuestra que
esta serie no es una medicion independiente sino el caudal transformado por una curva
de gasto solido; se conserva unicamente con fines de auditoria.

## Donde colocarlos

Los CSV descargados van en `datos/crudos/`. El notebook los detecta automaticamente
por el campo `NombreEstacion` de cada archivo; los nombres de archivo no importan.

```
datos/crudos/
├── CAUDAL_MEDIO_DIARIO_CALAMAR_29037020_....csv
├── CAUDAL_MEDIO_DIARIO_EL_BANCO_AUT_25027020_....csv
└── ...
```

## Formato de los archivos

Verificado en la descarga de septiembre de 2026:

- separador de coma, punto decimal, fechas ISO (`yyyy-mm-dd`)
- BOM al inicio del archivo (leer con `encoding="utf-8-sig"`)
- formato largo, con columnas de metadatos constantes repetidas en cada fila
- columnas: `CodigoEstacion, NombreEstacion, Variable, Parametro, Fecha, Unidad,
  <columna de valor>, NivelAprobacion`

---

## Reproducibilidad

Los tres elementos que exige el entregable -archivo de dependencias, semillas
aleatorias fijadas y acceso a los datos- se documentan integramente en estas paginas.

### Semillas aleatorias

Semilla global **`SEED = 42`**, fijada al inicio del informe sobre `random`, `numpy`
y `PYTHONHASHSEED`, y propagada a todo componente estocastico: `LogisticRegression`,
`DummyClassifier`, `PCA`, `MinCovDet`, `mutual_info_classif`, el remuestreo bootstrap y
las particiones de validacion cruzada.

Parametros de diseño fijados de antemano:

| Parametro | Valor |
|---|---|
| Semilla global | 42 |
| Fecha de corte train/test | 2010-01-01 |
| Separacion (*gap*) entre particiones | 30 dias |
| Horizonte de prediccion | 15 dias |
| Tolerancia de la banda de descarga efectiva | ±15 % |

### Entorno

Entorno conda `ml_venv` sobre **Python 3.9.23**. El libro se compila con **MyST**
(Jupyter Book 2), que requiere **Node.js** instalado en el sistema (probado con v24.14.1).

### Archivo de dependencias

Contenido de `requirements.txt`, con versiones fijadas:

```text
# analisis de datos
numpy==1.25.2
pandas==2.1.1
scipy==1.11.2

# modelado y estadistica
scikit-learn==1.3.0
statsmodels==0.14.1

# visualizacion
matplotlib==3.7.2
seaborn==0.12.2
missingno==0.5.2

# notebook y publicacion
ipykernel==6.25.1
nbformat==5.9.2
mystmd==1.11.0
```

La primera celda del informe imprime las versiones efectivamente utilizadas en la
ejecucion, de modo que el registro de versiones queda incorporado a la salida.

### Reproducir el analisis

```bash
conda create -n ml_venv python=3.9
conda activate ml_venv
pip install -r requirements.txt
myst build --html
```

Los datos se obtienen segun el procedimiento descrito en **Obtencion de los datos**.
