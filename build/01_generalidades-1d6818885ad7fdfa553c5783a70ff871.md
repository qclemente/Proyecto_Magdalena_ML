# PROYECTO DE INVESTIGACIÓN: DESCARGA EFECTIVA EN EL RÍO MAGDALENA

**Kevin Clemente Rosario y Manuel Meza**

## Pregunta de investigación

> ¿Es posible clasificar, con la información hidrológica disponible hasta el día $t$,
> si el día $t+15$ pertenecerá al rango de **descarga efectiva** del río Magdalena
> en la estación Calamar?

---

# 1. Generalidades

## 1.1 Planteamiento del problema

La contribución de un evento al modelado del relieve depende tanto de la magnitud de la
fuerza aplicada como de la frecuencia con que esa fuerza se presenta. Dado que la
capacidad de transporte crece con el caudal mientras que la probabilidad de ocurrencia
decrece, el producto de ambas funciones alcanza un máximo en un valor intermedio del rango
de caudales. Ese caudal, denominado descarga efectiva, transporta la mayor fracción de la
carga sedimentaria cuando se integra a lo largo de periodos extensos, y suele asociarse al
caudal responsable de la configuración geométrica del cauce (Wolman y Miller, 1960).

La formulación original ha sido refinada en las décadas posteriores. El procedimiento de
discretización del registro de caudales en clases de frecuencia, que sigue siendo el
método de cálculo más difundido, se sistematizó a comienzos de los años ochenta (Andrews,
1980). Trabajos posteriores examinaron la sensibilidad del resultado al número de clases
empleado y a la forma de la curva de gasto sólido, y mostraron que una discretización
inadecuada puede desplazar de manera apreciable la posición del máximo (Nash, 1994). La
correspondencia entre la descarga efectiva y el caudal a cauce lleno, que con frecuencia
se asume como equivalencia, se cumple únicamente bajo determinadas condiciones hidráulicas
en ríos de lecho grueso, por lo que requiere verificación en cada caso (Emmett y Wolman,
2001).

En el caso colombiano, la cuenca Magdalena-Cauca ha recibido atención sostenida por su
rendimiento sedimentario. Los ríos andinos figuran entre los principales exportadores de
sedimento hacia el océano por unidad de área drenada, comportamiento que se atribuye a la
combinación de relieve pronunciado, actividad tectónica y régimen de precipitación intenso
(Milliman y Syvitski, 1992). Las estimaciones de caudal líquido y carga sólida del
Magdalena fueron revisadas a partir del registro instrumental del periodo 1975-1995, y
documentan una variabilidad interanual considerable asociada a la alternancia de las fases
del ENSO (Restrepo y Kjerfve, 2000).

Los controles de ese rendimiento se han estudiado con detalle. A escala de subcuenca, la
pendiente y la escorrentía aparecen como los factores dominantes (Restrepo et al., 2006).
Los cambios de uso del suelo habrían incrementado además el aporte sedimentario respecto
de las condiciones previas a la intervención antrópica, aunque la magnitud de ese
incremento depende del periodo de referencia que se adopte (Restrepo y Syvitski, 2006).

La literatura disponible caracteriza, por lo tanto, la descarga efectiva como un descriptor
del comportamiento sedimentario de largo plazo y aporta estimaciones consolidadas para la
cuenca. El problema que aborda este trabajo se sitúa en un plano distinto, el de la
anticipación del estado hidrológico. Conocer el valor de la descarga efectiva describe el
pasado del sistema, pero no indica cuándo volverá a presentarse. Dado que la operación de
embalses, la programación de dragados en el canal navegable y la estimación de aportes al
Caribe requieren previsión y no únicamente diagnóstico, resulta pertinente evaluar en qué
medida el estado hidrológico observado permite anticipar los días en que el río se situará
en el rango de transporte dominante.

La tarea se formula en consecuencia como un problema de clasificación binaria. A partir de
la información de caudal disponible hasta el día $t$ en un conjunto de estaciones
escalonadas sobre el cauce, se predice si el caudal del día $t+15$ en la estación objetivo
caerá dentro de la banda de descarga efectiva. El horizonte de quince días responde a un
compromiso entre utilidad operativa y dificultad del problema, cuya justificación empírica
se desarrolla en el capítulo 4.

## 1.2 Organización del informe

El capítulo 2 describe la base de datos, su procedencia y su calidad. El capítulo 3
desarrolla el análisis exploratorio, que incluye la construcción de la variable objetivo a
partir del análisis magnitud-frecuencia, el estudio de la dependencia temporal entre
estaciones y la auditoría de fuga de datos. El capítulo 4 presenta el modelo base y su
evaluación frente a tres referencias de dificultad creciente. El capítulo 5 reúne las
conclusiones, las limitaciones del diseño y las líneas de trabajo pendientes.

Los notebooks de los capítulos 2 a 4 deben ejecutarse en orden, dado que cada uno deja en
`datos/procesados/` los resultados intermedios que requiere el siguiente.
