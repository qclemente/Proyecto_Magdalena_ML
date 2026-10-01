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

Entorno conda `ml_venv` sobre **Python 3.9.23**.

### Archivo de dependencias

Contenido literal de `requirements.txt`, con versiones fijadas:

```text
numpy==1.25.2
pandas==2.1.1
scipy==1.11.2
scikit-learn==1.3.0
statsmodels==0.14.1
matplotlib==3.7.2
seaborn==0.12.2
missingno==0.5.2
jupyter-book==0.15.1
```

Equivalente como `environment.yml`:

```yaml
name: ml_venv
channels: [conda-forge, defaults]
dependencies:
  - python=3.9
  - pip
  - pip:
      - numpy==1.25.2
      - pandas==2.1.1
      - scipy==1.11.2
      - scikit-learn==1.3.0
      - statsmodels==0.14.1
      - matplotlib==3.7.2
      - seaborn==0.12.2
      - missingno==0.5.2
      - jupyter-book==0.15.1
```

La primera celda del informe imprime las versiones efectivamente utilizadas en la
ejecucion, de modo que el registro de versiones queda incorporado a la salida.

### Reproducir el analisis

```bash
conda create -n ml_venv python=3.9
conda activate ml_venv
pip install -r requirements.txt
jupyter-book build .
```

Los datos se obtienen segun el procedimiento descrito en **Obtencion de los datos**.
