Algoritmo de k vecinos más cercanos

    Definición del algoritmo y objetivo.

        El algoritmo de k vecinos más cercanos, también conocido como KNN o k-NN, es un clasificador de aprendizaje supervisado no 
        paramétrico, que utiliza la proximidad para hacer clasificaciones o predicciones sobre la agrupación de un punto de datos 
        individual. Si bien se puede usar para problemas de regresión o clasificación, generalmente se usa como un algoritmo de 
        clasificación, partiendo de la suposición de que se pueden encontrar puntos similares cerca uno del otro.
    
        Para los problemas de clasificación, se asigna una etiqueta de clase sobre la base de un voto mayoritario, es decir, se 
        utiliza la etiqueta que se representa con más frecuencia alrededor de un punto de datos determinado. 

        image.png

        El valor k en el algoritmo k-NN define cuántos vecinos se verificarán para determinar la clasificación de un punto de 
        consulta específico. Por ejemplo, si k=1, la instancia se asignará a la misma clase que su vecino más cercano. Definir
        k puede ser un acto de equilibrio ya que diferentes valores pueden llevar a un ajuste excesivo o insuficiente. Los valores 
        más bajos de k pueden tener una varianza alta, pero un sesgo bajo, y los valores más grandes de k pueden generar un sesgo 
        alto y una varianza más baja. La elección de k dependerá en gran medida de los datos de entrada, ya que los datos con más 
        valores atípicos o ruido probablemente funcionarán mejor con valores más altos de k. En general, se recomienda tener un 
        número impar para k para evitar empates en la clasificación, y las tácticas de validación cruzada pueden ayudarlo a elegir 
        la k óptima para su conjunto de datos.

    Aplicaciones del algoritmo.

        Preprocesamiento de datos: 
            Los conjuntos de datos suelen tener valores faltantes, pero el algoritmo KNN puede estimar esos valores en un proceso
            conocido como imputación de datos faltantes.

        Motores de recomendación: 
            utilizando datos de flujo de clics de sitios web, el algoritmo KNN se ha utilizado para proporcionar recomendaciones 
            automáticas a los usuarios sobre contenido adicional. Estainvestigación  (enlace externo a ibm.com) muestra que un 
            usuario está asignado a un grupo en particular y, en función del comportamiento del usuario de ese grupo, se le da 
            una recomendación. Sin embargo, dados los problemas de escala con KNN, este enfoque puede no ser óptimo para conjuntos 
            de datos más grandes.

        Finanzas: 
            También se ha utilizado en una variedad de casos de uso económico y financiero. Por ejemplo, un artículo (PDF, 439 KB) 
            (enlace externo a ibm.com)  muestra cómo el uso de KNN en datos crediticios puede ayudar a los bancos a evaluar el 
            riesgo de un préstamo para una organización o individuo. Se utiliza para determinar la solvencia crediticia de un 
            solicitante de préstamo. Otro periódico  (PDF, 447 KB) (enlace externo ibm.com)  destaca su uso en la previsión del 
            mercado de valores, valores de cambio de divisas, comercio de futuros y análisis de lavado de dinero.

        Cuidado de la salud: 
            KNN se ha aplicado dentro de la industria de la salud, haciendo predicciones sobre el riesgo de ataques cardíacos y 
            cáncer de próstata. El algoritmo funciona calculando las expresiones genéticas más probables.

        Reconocimiento de patrones: 
            KNN también ha ayudado a identificar patrones, como en texto y clasificación de dígitos  (enlace externo a ibm.com). 
            Esto ha sido particularmente útil para identificar números escritos a mano que puede encontrar en formularios o sobres 
            de correo. 

    Ventajas y desventajas.

        Ventajas
            
            Fácil de implementar: 
            Dada la simplicidad y precisión del algoritmo, es uno de los primeros clasificadores que aprenderá un nuevo científico de 
            datos.
            
            Se adapta fácilmente: 
            A medida que se agregan nuevas muestras de entrenamiento, el algoritmo se ajusta para tener en cuenta cualquier dato nuevo, 
            ya que todos los datos de entrenamiento se almacenan en la memoria.

            Pocos hiperparámetros: 
            KNN solo requiere un valor k y una métrica de distancia, que es baja en comparación con otros algoritmos de machine learning.


        Desventajas
            No escala bien: 
            Dado que KNN es un algoritmo perezoso, ocupa más memoria y almacenamiento de datos en comparación con otros clasificadores. 
            Esto puede ser costoso desde una perspectiva de tiempo y dinero. Más memoria y almacenamiento aumentarán los gastos comerciales
             y más datos pueden tardar más en procesarse. Si bien se han creado diferentes estructuras de datos, como Ball-Tree, para abordar las ineficiencias computacionales, un clasificador diferente puede ser ideal según el problema comercial.

            La maldición de la dimensionalidad: 
            El algoritmo KNN tiende a ser víctima de la maldición de la dimensionalidad, lo que significa que no funciona bien con 
            entradas de datos de alta dimensión. Esto a veces también se conoce como fenómeno de pico  (PDF, 340 MB)  
            (enlace externo a ibm.com), donde después de que el algoritmo alcanza la cantidad óptima de funciones, las funciones adicionales
             aumentan la cantidad de errores de clasificación, especialmente cuando el tamaño de la muestra es más pequeño.

            Propenso al sobreajuste: 
            Debido a la "maldición de la dimensionalidad", KNN también es más propenso al sobreajuste. Si bien se aprovechan las 
            técnicas de selección de características y reducción de dimensionalidad para evitar que esto ocurra, el valor de k también puede
             afectar el comportamiento del modelo. Los valores más bajos de k pueden sobreajustar los datos, mientras que los valores más
              altos de k tienden a "suavizar" los valores de predicción, ya que están promediando los valores en un área o vecindario más 
              grande. Sin embargo, si el valor de k es demasiado alto, entonces puede ajustarse mal a los datos. 

    Cálculos necesarios para su funcionamiento.

        Para determinar qué puntos de datos están más cerca de un punto de consulta determinado, será necesario calcular la
        distancia entre el punto de consulta y los otros puntos de datos. Estas métricas de distancia ayudan a formar límites 
        de decisión, que dividen los puntos de consulta en diferentes regiones

            Distancia euclidiana (p=2):  
                Esta es la medida de distancia más utilizada y está limitada a vectores de valor real. Usando la fórmula a 
                continuación, mide una línea recta entre el punto de consulta y el otro punto que se mide.
            Distancia Manhattan (p=1): 
                Esta es también otra métrica de distancia popular, que mide el valor absoluto entre dos puntos. También se 
                conoce como distancia de taxi o distancia de cuadra de la ciudad, ya que comúnmente se visualiza con una 
                cuadrícula, que ilustra cómo se puede navegar de una dirección a otra a través de las calles de la ciudad.
            Distancia minkowski:
                 Esta medida de distancia es la forma generalizada de las métricas de distancia Euclidiana y Manhattan. 
                 El parámetro, p, en la fórmula a continuación, permite la creación de otras métricas de distancia. La distancia 
                 euclidiana se representa mediante esta fórmula cuando p es igual a dos, y la distancia de Manhattan se denota 
                 con p igual a uno.
            Distancia de hamming: 
                Esta técnica se usa típicamente con vectores booleanos o de cadena, identificando los puntos donde los vectores no 
                coinciden. Como resultado, también se la conoce como la métrica de superposición.



    Tipos variantes del algoritmo.
    
    Definición del problema a implementar.
    Dataset utilizado (adjuntar) o definir código de generación.
    Código comentado y explicado
    Gráficas.
    Pruebas y ejemplos con modificaciones de parámetros  o data set, al menos uno.
    El archivo MarkDown debe exportarse como HTML (incluir menu).