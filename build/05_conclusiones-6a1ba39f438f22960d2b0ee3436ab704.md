# 5. Conclusiones y limitaciones

## 5.1 Hallazgos principales del análisis exploratorio

La serie de transporte de sedimentos publicada por el IDEAM resultó ser el caudal
transformado mediante una curva de gasto sólido, con un coeficiente de determinación igual
a la unidad dentro de cada bloque quinquenal del registro. La ecuación aplicada cambió al
menos cuatro veces a lo largo del periodo analizado, lo que explica que el ajuste global
sea inferior al ajuste por bloques. La persistencia del residuo y la ausencia de
histéresis entre las ramas de ascenso y descenso del hidrograma confirman esa
interpretación, dado que todo proceso de transporte medido en campo presenta histéresis.
La serie quedó en consecuencia excluida del modelo, y la curva oficial se empleó
únicamente para localizar la descarga efectiva.

La descarga efectiva de la estación Calamar se estimó en aproximadamente 9.954 m³/s,
equivalente a 1,38 veces el caudal medio del periodo de entrenamiento. El resultado se
mantiene estable frente a la elección de la curva de gasto sólido: las cuatro ecuaciones
históricas conducen a la misma clase modal, lo que indica que la posición del máximo
depende principalmente de la distribución de frecuencias de caudal y no de la escala de la
curva.

El sistema se comporta como dos conjuntos débilmente acoplados. Las estaciones del alto
Magdalena correlacionan fuertemente entre sí pero de forma débil con la estación objetivo,
mientras que las del bajo Magdalena lo hacen con Calamar. El análisis de componentes
principales confirma esa estructura, puesto que la segunda componente opone ambos grupos
con pesos de signo contrario. La explicación es geomorfológica y remite a los aportes del
Cauca y el Cesar y a la amortiguación que introduce la depresión momposina, lo que permite
tratar la multicolinealidad observada como un resultado físico antes que como un defecto
del conjunto de datos.

El tiempo de tránsito de la onda de crecida, estimado por correlación cruzada entre series
de caudal, crece de forma monótona con la distancia al mar, desde siete días en Coyongal
hasta veintiún días en Puerto Salgar. La correlación con la estación objetivo aumenta al
aplicar el desfase correspondiente. Dado que ese procedimiento no incorporó información
geográfica, su concordancia con la altitud y la latitud de las estaciones constituye una
verificación externa del resultado y respalda el uso de esos rezagos como predictores.

El caudal en Calamar presenta una distribución casi simétrica, con una asimetría cercana a
0,26, a diferencia de las estaciones situadas aguas arriba. La transformación logarítmica,
habitual en el tratamiento de registros de caudal, quedó descartada sobre esa evidencia.

## 5.2 Desempeño del modelo base

Los resultados completos, con sus intervalos de confianza bootstrap, figuran en el capítulo
4. La comparación que determina el valor del modelo es la que lo enfrenta a la
persistencia, dado que la elevada autocorrelación de las series fluviales permite alcanzar
un acierto considerable limitándose a repetir el estado actual del sistema.

## 5.3 Limitaciones

La serie de transporte es inhomogénea. El cambio de ecuación entre periodos invalida
cualquier análisis de tendencia sedimentaria de largo plazo que se apoye en esos datos.

El 89,6 % del registro figura con nivel de aprobación preliminar. Restringir el análisis a
los datos definitivos dejaría alrededor de 3.200 observaciones, cifra insuficiente para el
análisis magnitud-frecuencia.

La autocorrelación de primer orden alcanza 0,999, de modo que las 31.475 filas disponibles
equivalen a un número de observaciones independientes considerablemente menor. Esa
circunstancia se atendió mediante partición cronológica y validación cruzada temporal con
intervalo de separación, pero sigue limitando la precisión de cualquier estimación de
incertidumbre.

La cobertura temporal es desigual. El periodo 1940-1972 cuenta únicamente con dos
estaciones, y la estación Arrancaplumas quedó fuera del conjunto de predictores porque su
registro termina en 2014 y cubre apenas el 28,6 % del periodo de prueba.

El conjunto de predictores carece de variables meteorológicas. Sin precipitación, el modelo
no dispone de información sobre la causa del caudal, lo que degrada su desempeño a
horizontes largos según muestra el análisis de sensibilidad del capítulo 4.

Las diferencias de comportamiento entre estaciones podrían reflejar contrastes de suelo y
cobertura vegetal en sus cuencas aportantes. Este diseño no permite separar ese efecto del
que introduce la posición de cada estación sobre el cauce.

La regulación por embalses y los cambios de uso del suelo implican que el pasado puede no
representar adecuadamente el futuro, supuesto sobre el que descansa la evaluación en un
periodo posterior al de entrenamiento.

Los resultados aplican a la estación Calamar y a las estaciones analizadas, y su
extrapolación al conjunto de la cuenca Magdalena-Cauca requeriría verificación.

## 5.4 Líneas de trabajo pendientes

La incorporación de precipitación y del índice oceánico de El Niño como predictores de
causa debería concentrar su aporte en los horizontes largos, que son los que el conjunto
actual resuelve con mayor dificultad.

La evaluación de algoritmos capaces de trazar fronteras no monótonas, entre ellos k-NN,
los árboles de decisión y las máquinas de vectores de soporte con núcleo radial, responde
a la limitación de forma funcional que documenta el capítulo 4.

La aplicación de técnicas de regularización permitiría estabilizar los coeficientes ante la
multicolinealidad documentada en el capítulo 3.

Queda por explorar si la deforestación de la cuenca alta modifica la respuesta
lluvia-caudal y, con ella, el régimen de transporte sedimentario.

---

## Referencias

Andrews, E. D. (1980). Effective and bankfull discharges of streams in the Yampa River
basin, Colorado and Wyoming. *Journal of Hydrology*, 46(3-4), 311-330.

Emmett, W. W., y Wolman, M. G. (2001). Effective discharge and gravel-bed rivers. *Earth
Surface Processes and Landforms*, 26(13), 1369-1380.

IDEAM. (2026). *Sistema de Información Ambiental de Colombia. Consulta y descarga de datos
hidrometeorológicos (DHIME)*. http://dhime.ideam.gov.co

Little, R. J. A. (1988). A test of missing completely at random for multivariate data with
missing values. *Journal of the American Statistical Association*, 83(404), 1198-1202.

Milliman, J. D., y Syvitski, J. P. M. (1992). Geomorphic/tectonic control of sediment
discharge to the ocean: the importance of small mountainous rivers. *The Journal of
Geology*, 100(5), 525-544.

Müller, A. C., y Guido, S. (2016). *Introduction to Machine Learning with Python: A Guide
for Data Scientists*. O'Reilly Media.

Nash, D. B. (1994). Effective sediment-transporting discharge from magnitude-frequency
analysis. *The Journal of Geology*, 102(1), 79-95.

Pedregosa, F., Varoquaux, G., Gramfort, A., Michel, V., Thirion, B., Grisel, O., Blondel,
M., Prettenhofer, P., Weiss, R., Dubourg, V., Vanderplas, J., Passos, A., Cournapeau, D.,
Brucher, M., Perrot, M., y Duchesnay, É. (2011). Scikit-learn: Machine Learning in Python.
*Journal of Machine Learning Research*, 12, 2825-2830.

Restrepo, J. D., y Kjerfve, B. (2000). Magdalena river: interannual variability (1975-1995)
and revised water discharge and sediment load estimates. *Journal of Hydrology*, 235(1-2),
137-149.

Restrepo, J. D., Kjerfve, B., Hermelin, M., y Restrepo, J. C. (2006). Factors controlling
sediment yield in a major South American drainage basin: the Magdalena River, Colombia.
*Journal of Hydrology*, 316(1-4), 213-232.

Restrepo, J. D., y Syvitski, J. P. M. (2006). Assessing the effect of natural controls and
land use change on sediment yield in a major Andean river: the Magdalena drainage basin,
Colombia. *AMBIO*, 35(2), 65-74.

Rousseeuw, P. J., y Van Driessen, K. (1999). A fast algorithm for the minimum covariance
determinant estimator. *Technometrics*, 41(3), 212-223.

Seabold, S., y Perktold, J. (2010). Statsmodels: Econometric and statistical modeling with
Python. *Proceedings of the 9th Python in Science Conference*, 92-96.

Wolman, M. G., y Miller, J. P. (1960). Magnitude and frequency of forces in geomorphic
processes. *The Journal of Geology*, 68(1), 54-74.
