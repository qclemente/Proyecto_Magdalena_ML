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

- Semilla global: **42** (definida en `src/config.py`).
- Dependencias: `requirements.txt` y `environment.yml`.
- Entorno: conda `ml_venv`, Python 3.9.23.

Para reproducir:

```bash
conda activate ml_venv
pip install -r requirements.txt
jupyter-book build .
```
