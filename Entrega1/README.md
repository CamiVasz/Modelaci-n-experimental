# Proyecto 1 Modelación experimental

## Simulación de un proceso de medias móviles

Un proceso MA es un tipo de modelo de series de tiempo que, inicialmente,
permite modelar el comportamiento de modelos lineales sujetos a ciertos parámetros.

La simulación de este proceso se hizo en MATLAB. El archivo 'gen_ma' retorna
un proceso MA con un conjunto de parámetros dados, y se apoya de dos archivos
diferentes para generar el ruido asociado al proceso:

* 'ruido_blanco' genera un ruido con una distribución normal (0,1).
* 'gen_ma_ruido_combinado' genera un ruido con una distribución de suma de dos normales, lo que causa que las propiedades teóricas del proceso no se satisfagan.

Para obtener las gráficas de las simulaciones realizadas en el documento adjunto,
se puede remitir al archivo 'simulacion', y para calcular algunas de sus propiedades
teóricas al archivo 'calculoProcesosMA'.
