# Presentacion

Este Jupyter Book contiene el **primer entregable** del proyecto de investigacion del
curso de Machine Learning.

## Tema

Clasificacion de los dias de **descarga efectiva** (transporte dominante de sedimentos)
en el rio Magdalena, a partir de registros hidrologicos diarios del IDEAM.

## Ruta metodologica

Segun la guia del entregable, el proyecto sigue la **Ruta A (clasificacion)** con la
**Seccion 2.6 (componente temporal)** anadida, dado que el dataset tiene variable de fecha.
En consecuencia:

- La particion train/test es **cronologica**, nunca aleatoria.
- La validacion cruzada usa `TimeSeriesSplit` con `gap`.
- Los rezagos y ventanas moviles se construyen **solo con informacion pasada**.

## Estructura del informe

| Seccion | Contenido | Peso |
|---|---|---|
| 1 | Base de datos: seleccion, justificacion, diccionario y calidad | 10 % |
| 2 | Analisis exploratorio de datos, incluido el componente temporal | 60 % |
| 3 | Modelo base: regresion logistica frente a lineas base | 30 % |
| 4 | Conclusiones y limitaciones | — |

## Reproducibilidad

Los tres elementos que exige el entregable -archivo de dependencias, semillas
aleatorias fijadas y acceso a los datos- se documentan integramente en estas paginas.

### Semillas aleatorias

Semilla global **`SEED = 42`**, fijada al inicio del informe sobre `random`, `numpy`
y `PYTHONHASHSEED`, y propagada a todo componente estocastico: `LogisticRegression`,
`DummyClassifier`, `PCA`, `MinCovDet`, `mutual_info_classif`, el remuestreo bootstrap y
las particiones de validacion cruzada.

Parametros de diseno fijados de antemano:

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
