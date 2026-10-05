"""
Configuracion central del proyecto: semillas, rutas y estilo de graficos.
Importar al inicio del notebook con:  from src.config import *
"""
import os
import random
from pathlib import Path

import numpy as np

# ---------------------------------------------------------------
# SEMILLAS  (requisito de reproducibilidad del entregable)
# ---------------------------------------------------------------
SEED = 42

def fijar_semillas(seed: int = SEED) -> None:
    """Fija todas las fuentes de aleatoriedad del proyecto."""
    random.seed(seed)
    np.random.seed(seed)
    os.environ["PYTHONHASHSEED"] = str(seed)

# ---------------------------------------------------------------
# RUTAS
# ---------------------------------------------------------------
RAIZ = Path(__file__).resolve().parent.parent
DATOS_CRUDOS = RAIZ / "datos" / "crudos"
DATOS_PROC = RAIZ / "datos" / "procesados"
FIGURAS = RAIZ / "figuras"

for _d in (DATOS_CRUDOS, DATOS_PROC, FIGURAS):
    _d.mkdir(parents=True, exist_ok=True)

# ---------------------------------------------------------------
# PARTICION TEMPORAL
# Se define UNA sola vez y no se toca. El conjunto de prueba
# queda reservado antes de cualquier decision basada en datos.
# ---------------------------------------------------------------
AUTORES = "Kevin Clemente y Manuel Meza"
FECHA_CORTE_TEST = "2010-01-01"   # ajustar segun el periodo real descargado
GAP_DIAS = 30                      # separacion entre train y test (dependencia de corto plazo)

# ---------------------------------------------------------------
# HORIZONTE DE PREDICCION (dias hacia adelante)
# El caudal diario es muy persistente: con h=1 el problema es casi
# trivial. Se recomienda h >= 7 para que tenga contenido predictivo.
# ---------------------------------------------------------------
HORIZONTE = 15

# ---------------------------------------------------------------
# DESCARGA EFECTIVA de Calamar (29037020)
# Calculada con la curva oficial vigente de IDEAM sobre el conjunto
# de ENTRENAMIENTO unicamente (1940-2009). Robusta: las cuatro curvas
# historicas de IDEAM dan el mismo resultado.
# ---------------------------------------------------------------
Q_EF = 9954.0           # m3/s
Q_EF_CLASE = (9486.0, 10446.0)   # clase modal del analisis magnitud-frecuencia
TOLERANCIA = 0.15       # banda +/-15% -> prevalencia ~26%

# ---------------------------------------------------------------
# ESTILO DE GRAFICOS
# ---------------------------------------------------------------
def estilo_graficos():
    import matplotlib.pyplot as plt
    import seaborn as sns
    sns.set_theme(style="whitegrid", palette="deep")
    plt.rcParams.update({
        "figure.figsize": (10, 4.5),
        "figure.dpi": 110,
        "axes.titlesize": 12,
        "axes.labelsize": 10,
        "savefig.bbox": "tight",
    })

# ---------------------------------------------------------------
# ESTACIONES
# ---------------------------------------------------------------
ESTACION_OBJETIVO = "calamar"

# Excluida de los PREDICTORES del modelo: su registro termina en
# 2014-12-31 y solo cubre el 28.6% del periodo de prueba.
# Se conserva en el EDA (correlaciones, transito, PCA).
EXCLUIR_MODELO = ["arrancaplumas"]
