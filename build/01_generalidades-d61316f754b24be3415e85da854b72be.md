# PROYECTO DE INVESTIGACIÓN: DESCARGA EFECTIVA EN EL RÍO MAGDALENA

**Kevin Clemente Rosario y Manuel Meza**

## Pregunta de investigación

> ¿Es posible clasificar, con la información hidrológica disponible hasta el día $t$,
> si el día $t+15$ pertenecerá al rango de **descarga efectiva** del río Magdalena
> en la estación Calamar?

---

# 1. Generalidades

## 1.1 Planteamiento del problema

### 1.1.1 Contexto

Un río no transporta únicamente agua. Arrastra también partículas de suelo y roca
desprendidas de las laderas de su cuenca, material que la hidrología denomina carga
sedimentaria y que viaja en suspensión o rodando por el fondo del cauce. Ese transporte
determina en buena medida la forma del río, porque el sedimento erosiona unos tramos y se
deposita en otros, y condiciona además la vida útil de los embalses, la profundidad
disponible para la navegación y el crecimiento de los deltas.

El río Magdalena constituye un caso destacado en este sentido. Drena cerca de la cuarta
parte del territorio colombiano, atraviesa una cordillera joven y tectónicamente activa, y
recibe precipitaciones intensas, condiciones que en conjunto producen uno de los
rendimientos sedimentarios más altos del mundo por unidad de área drenada (Milliman y
Syvitski, 1992). Sobre su cauce se sostienen el principal corredor fluvial de carga del
país, una cadena de embalses para generación hidroeléctrica y los asentamientos ribereños
del Caribe colombiano.

### 1.1.2 El concepto de descarga efectiva

Una pregunta central en el estudio del transporte de sedimentos consiste en establecer qué
tipo de caudal realiza, a lo largo de los años, la mayor parte de ese trabajo. La respuesta
no es inmediata, porque intervienen dos factores que operan en sentidos opuestos. Por un
lado, cuanto mayor es el caudal, más sedimento consigue arrastrar el río en un solo día.
Por otro, los caudales grandes ocurren con poca frecuencia, de manera que su aporte
acumulado se ve limitado por lo raros que resultan. Las crecidas excepcionales mueven
muchísimo material cada vez que suceden, pero suceden pocas veces por siglo; los caudales
bajos se presentan casi a diario, aunque apenas arrastran partículas.

Al combinar ambos factores aparece un máximo en algún punto intermedio del rango de
caudales. Existe un valor en el que el producto entre la cantidad transportada por evento y
la frecuencia con que ese evento ocurre alcanza su punto más alto. Ese caudal recibe el
nombre de descarga efectiva y se interpreta como el responsable principal de la
configuración geométrica del cauce, dado que es el que acumula el mayor volumen de trabajo
geomorfológico a lo largo del tiempo (Wolman y Miller, 1960).

El método de cálculo consiste en agrupar el registro histórico de caudales en clases,
contar cuántos días cae el río en cada una, estimar cuánto sedimento transporta un día
típico de esa clase y buscar la clase cuyo producto resulte máximo. El procedimiento se
sistematizó a comienzos de los años ochenta y continúa siendo el más difundido (Andrews,
1980). Su resultado depende, sin embargo, de decisiones metodológicas que deben explicitarse,
porque el número de clases empleado y la forma de la curva que relaciona caudal con
sedimento pueden desplazar de manera apreciable la posición del máximo (Nash, 1994). Tampoco
debe asumirse sin verificación que la descarga efectiva coincida con el caudal a cauce lleno,
equivalencia que solo se cumple bajo determinadas condiciones hidráulicas (Emmett y Wolman,
2001).

### 1.1.3 Antecedentes en la cuenca Magdalena-Cauca

La cuenca ha recibido atención sostenida por parte de la comunidad científica. Las
estimaciones de caudal líquido y carga sólida del Magdalena fueron revisadas a partir del
registro instrumental del periodo 1975-1995, trabajo que documentó una variabilidad
interanual considerable asociada a la alternancia entre las fases cálida y fría del
fenómeno ENSO (Restrepo y Kjerfve, 2000). Investigaciones posteriores examinaron qué
controla ese rendimiento y encontraron que, a escala de subcuenca, la pendiente del terreno
y la escorrentía resultan los factores dominantes (Restrepo et al., 2006). Se ha estimado
además que los cambios de uso del suelo habrían incrementado el aporte sedimentario
respecto de las condiciones anteriores a la intervención antrópica, aunque la magnitud de
ese incremento depende del periodo que se adopte como referencia (Restrepo y Syvitski,
2006).

### 1.1.4 Problema

La literatura disponible caracteriza la descarga efectiva como un descriptor del
comportamiento sedimentario de largo plazo y aporta estimaciones consolidadas para la
cuenca. El problema que aborda este trabajo se sitúa en un plano distinto, el de la
anticipación.

Saber que la descarga efectiva del Magdalena se encuentra alrededor de un determinado valor
describe cómo se ha comportado el río durante las últimas décadas, pero no indica en qué
momento volverá a situarse en ese rango. Quien opera un embalse necesita saber cuándo
esperar la llegada de sedimento para programar las purgas; quien administra el canal
navegable necesita anticipar los periodos de mayor depositación para planificar los
dragados; quien estudia el delta necesita estimar cuándo se producirán los aportes
principales. Todas esas decisiones requieren previsión y no únicamente diagnóstico
retrospectivo.

Resulta pertinente, en consecuencia, evaluar en qué medida el estado hidrológico observado
en un conjunto de estaciones distribuidas sobre el cauce permite anticipar los días en que
el río se situará en el rango de transporte dominante. La hipótesis de trabajo sostiene que
la información de caudal registrada aguas arriba, combinada con el estado reciente de la
estación de interés y con la posición dentro del ciclo anual, contiene señal suficiente para
realizar esa anticipación con un horizonte útil para la gestión.

### 1.1.5 Formulación de la tarea

La tarea se formula como un problema de clasificación binaria. A partir de la información
de caudal disponible hasta el día $t$ en un conjunto de estaciones escalonadas sobre el
cauce, se predice si el caudal del día $t+15$ en la estación objetivo caerá dentro de la
banda de descarga efectiva. El horizonte de quince días responde a un compromiso entre
utilidad operativa y dificultad del problema, cuya justificación empírica se desarrolla en
el capítulo 4.

## 1.2 Delimitación

### 1.2.1 Delimitación espacial

El estudio se circunscribe al cauce principal del río Magdalena y toma como estación
objetivo la de Calamar, situada en el ápice del delta, en el departamento de Bolívar. Las
seis estaciones restantes se distribuyen aguas arriba, desde Guaduas en Cundinamarca hasta
la depresión momposina, y describen el estado del sistema en puntos sucesivos del recorrido.
Quedan fuera del análisis el río Cauca y los demás afluentes, cuyo aporte se manifiesta de
forma indirecta a través del caudal registrado en las estaciones del bajo Magdalena.

### 1.2.2 Delimitación temporal

El registro abarca de 1940 a 2026, con resolución diaria. La partición entre entrenamiento
y evaluación se fija en el año 2010, de modo que el modelo se ajusta con la información
anterior a esa fecha y se evalúa sobre los dieciséis años posteriores. Los resultados
describen el comportamiento del sistema durante ese periodo y su extrapolación a condiciones
futuras está sujeta a las limitaciones que se discuten en el capítulo 5.

### 1.2.3 Delimitación temática

El trabajo se ocupa de anticipar el régimen de caudal asociado al transporte dominante, no
de estimar la cantidad de sedimento transportada. Esa distinción obedece a una restricción
de los datos disponibles que se documenta en el capítulo 3: la serie de transporte publicada
por el IDEAM resulta ser una transformación determinista del caudal y, por tanto, no aporta
información independiente sobre el proceso sedimentario.

El modelo base se restringe además a la regresión logística, según establece la guía del
curso. La exploración de algoritmos capaces de representar fronteras de decisión no
monótonas queda señalada entre las líneas de trabajo pendientes.

## 1.3 Objetivos

### 1.3.1 Objetivo general

Evaluar la capacidad de un modelo de clasificación para anticipar, con quince días de
antelación, los días en que el río Magdalena se situará en el rango de descarga efectiva en
la estación Calamar, a partir del registro hidrológico de siete estaciones del cauce.

### 1.3.2 Objetivos específicos

Caracterizar la calidad del registro hidrológico disponible y establecer el mecanismo que
origina sus valores faltantes.

Estimar la descarga efectiva de la estación Calamar mediante análisis magnitud-frecuencia y
evaluar la sensibilidad del resultado a la curva de gasto sólido empleada.

Cuantificar la dependencia temporal del sistema, incluido el tiempo de tránsito de la onda
de crecida entre estaciones, y contrastar las estimaciones obtenidas con la disposición
geográfica real de los puntos de medición.

Auditar el conjunto de predictores para descartar la presencia de fuga de datos.

Comparar el desempeño del modelo base frente a una línea base trivial y frente a dos
referencias propias del dominio hidrológico.

## 1.4 Organización del informe

El capítulo 2 describe la base de datos, su procedencia y su calidad. El capítulo 3
desarrolla el análisis exploratorio, que incluye la construcción de la variable objetivo a
partir del análisis magnitud-frecuencia, el estudio de la dependencia temporal entre
estaciones y la auditoría de fuga de datos. El capítulo 4 presenta el modelo base y su
evaluación. El capítulo 5 reúne las conclusiones, las limitaciones del diseño y las líneas
de trabajo pendientes.

Los notebooks de los capítulos 2 a 4 deben ejecutarse en orden, dado que cada uno deja en
`datos/procesados/` los resultados intermedios que requiere el siguiente.
