
# Sistema Gestor de Ventas 

**Asignatura**: Bases de Datos I (FaCENA-UNNE)

**Integrantes**:
 - Altamirano Adrian Axel  
 - Cardozo Carola Guillermina
 - Czachurski Veronica Camila 
 - Marano Bruno Joel

**Año**: 2024

## CAPÍTULO I: INTRODUCCIÓN

### Caso de estudio: Sistema Gestor de Ventas

El tema de este proyecto es el desarrollo de una base de datos para un sistema gestor de ventas. Este sistema tiene como objetivo optimizar la gestión y el control de las ventas de productos, así como la compra de insumos a proveedores, con la finalidad de mejorar la administración de un negocio. La base de datos está diseñada para manejar la información relacionada con clientes, proveedores, productos, compras, ventas, usuarios, y las transacciones financieras involucradas. De esta manera, el sistema ofrecerá una solución integral para la organización y el manejo eficiente de un negocio dedicado a la venta de productos. 

### Definición o planteamiento del problema

En la actualidad, muchos pequeños y medianos negocios enfrentan dificultades para gestionar de manera eficiente sus procesos de ventas y compras. El control manual o mediante sistemas no integrados genera retrasos en las transacciones, errores en la gestión de inventarios, dificultades para llevar un registro claro de los pagos, y falta de visibilidad en el estado de las ventas y compras. Estos problemas afectan directamente la rentabilidad del negocio y la calidad del servicio al cliente.

Este proyecto busca resolver la ineficiencia en la gestión de ventas y compras en los negocios. La falta de una base de datos estructurada y un sistema que permita administrar de manera centralizada las relaciones con clientes, proveedores, productos, facturación, y métodos de pago, genera un entorno caótico y poco productivo. Para abordar este problema, se propone desarrollar un sistema gestor de ventas que centralice todos estos procesos y facilite el acceso a la información de manera rápida y confiable.

Tomando en consideración estos planteamientos, nos hemos planteado tres interrogantes guías para la construcción de nuestro sistema en cuestión:
- ¿Cuáles son las principales ineficiencias en los procesos de ventas y compras que enfrentan los pequeños y medianos negocios?
- ¿Cómo puede un sistema gestor de ventas mejorar la rentabilidad y la calidad del servicio al cliente?
- ¿Qué características debe incluir un sistema gestor de ventas para ser efectivo en la administración de relaciones con clientes y proveedores?

### Objetivo del Trabajo Práctico

Este trabajo tiene como objetivo general diseñar y desarrollar una base de datos que permita gestionar de manera eficiente las ventas y compras en un negocio, proporcionando un sistema robusto que permita llevar el control de los productos, clientes, proveedores, usuarios, y métodos de pago, así como la emisión de tickets y facturas.

## Objetivo General
El objetivo general de este proyecto es desarrollar una base de datos relacional que integre los procesos de compra y venta de productos (registro de ambas transacciones con informacion relevante para el negocio), optimizando la gestión del negocio mediante un sistema centralizado que permita el control eficiente de los recursos y transacciones.

## Objetivos Específicos
1. Diseñar una base de datos que contenga todas las entidades y relaciones necesarias para gestionar el ciclo de ventas y compras de productos, incluyendo entidades como Cliente, Proveedor, Producto, Venta, Compra, Factura, y Métodos de Pago.
2. Implementar un modelo de datos que permita gestionar de manera eficiente el inventario de productos, con información sobre precios de compra, precios de venta, categorías, y proveedores.
3. Desarrollar un sistema para gestionar las ventas que permita registrar y procesar las transacciones de manera automatizada, generando facturas y tickets para los clientes, y llevando un control claro de los métodos de pago utilizados.
4. Optimizar el control de usuarios y roles dentro del sistema, permitiendo la asignación de diferentes niveles de acceso según el rol del usuario (administrador, vendedor, etc.).
5. Facilitar el seguimiento de compras realizadas a proveedores, con el objetivo de mantener un inventario actualizado y minimizar el riesgo de desabastecimiento.
6. Implementar una solución que permita la emisión de reportes sobre ventas, compras, y otros indicadores clave de rendimiento para el negocio.


### Alcance del proyecto

Este trabajo abarca el diseño, implementación y documentación de una base de datos relacional que permitirá gestionar de manera eficiente las operaciones de ventas y compras de productos. El sistema está diseñado para ser utilizado por usuarios con diferentes roles (administradores, vendedores, supervisor), cada uno con accesos y funcionalidades específicas. La solución proporcionará una interfaz centralizada para gestionar clientes, proveedores, productos, inventarios, métodos de pago y facturación, cubriendo todos los aspectos críticos de la operación de un negocio dedicado a la venta de productos.

## CAPITULO II: MARCO CONCEPTUAL O REFERENCIAL

La realización de un sistema de gestión implica considerar diversos aspectos que son fundamentales para su efectividad y utilidad. Al ser un sistema genérico, es probable que incluya funciones que, aunque consideradas relevantes por el grupo de desarrolladores, no resulten efectivas o necesarias para ciertos potenciales clientes. Esta variabilidad en las necesidades de los usuarios subraya la importancia de un diseño flexible y adaptable que se ajuste a las particularidades de cada negocio.

El registro de cada una de las acciones dentro de un negocio es crucial no solo para cumplir con requisitos legales, sino también para facilitar la toma de decisiones informadas. Un sistema de gestión que integre eficientemente todas las operaciones de ventas y compras permite mantener un historial detallado de las transacciones, lo cual es vital para auditar y evaluar el rendimiento del negocio. Este tipo de información es esencial para identificar áreas de mejora y para la planificación estratégica a largo plazo.

Las innovaciones tecnológicas juegan un papel fundamental en la creación de sistemas de gestión efectivos, especialmente en el ámbito empresarial. La incorporación de herramientas digitales en los procesos de gestión permite a los negocios optimizar su funcionamiento y mejorar la eficiencia operativa. Estas tecnologías no solo facilitan la automatización de tareas repetitivas, sino que también mejoran la precisión y la velocidad en la recopilación y el análisis de datos, lo cual es indispensable en un entorno empresarial en constante cambio y creciente competitividad.

En el contexto de la realización de un sistema motor de base de datos, es esencial incluir una serie de características que garanticen un funcionamiento óptimo y una gestión eficaz de la información. Una de estas características son los procedimientos almacenados, que permiten la ejecución de operaciones complejas en el servidor de forma eficiente. Al integrar estos procedimientos, se reduce significativamente la posibilidad de cometer errores en la incorporación de la información, garantizando que los datos sean introducidos de manera consistente y precisa. Esto no solo optimiza la gestión de las transacciones, sino que también asegura la integridad y fiabilidad de la información, aspectos críticos para la toma de decisiones informadas en el ámbito empresarial.

Otra consideración clave es el manejo de permisos a nivel de usuarios de base de datos. Implementar un sistema de gestión de accesos es fundamental para asegurar que solo el personal autorizado pueda acceder y manipular información sensible. Esto no solo protege los datos críticos de la empresa, sino que también contribuye a la creación de un entorno de trabajo más seguro y confiable, donde se minimizan los riesgos de fraudes o errores por parte de usuarios no autorizados.

La optimización de consultas a través de índices es otra característica vital en un sistema de gestión de base de datos. Los índices permiten acelerar las búsquedas y el acceso a datos específicos, mejorando considerablemente el rendimiento del sistema. Esto es particularmente importante en negocios que manejan grandes volúmenes de información, donde el tiempo de respuesta puede afectar directamente la satisfacción del cliente y la eficiencia operativa.

Además, la implementación de mecanismos de respaldo y restauración (backup y restore) es crucial para garantizar la protección de la información ante posibles pérdidas. Los sistemas de gestión de base de datos deben incluir procedimientos robustos que permitan realizar copias de seguridad periódicas de toda la información almacenada, así como la posibilidad de restaurar rápidamente los datos en caso de fallos técnicos, pérdidas de datos o ataques cibernéticos. Esta capacidad de recuperación no solo asegura la continuidad del negocio, sino que también proporciona tranquilidad a los gestores, sabiendo que la información crítica está protegida y puede ser recuperada cuando sea necesario.

Por último, un sistema de gestión de base de datos bien diseñado también debe considerar la escalabilidad y la adaptabilidad a futuro. A medida que el negocio crece y evoluciona, la base de datos debe ser capaz de adaptarse a nuevos requerimientos y manejar mayores volúmenes de información sin comprometer el rendimiento. Esto implica la necesidad de una planificación cuidadosa en la fase de diseño y la elección de tecnologías que permitan integrar nuevas funcionalidades con facilidad.

En conclusión, la implementación de un sistema gestor de base de datos efectivo es una inversión estratégica para cualquier negocio. Al incorporar innovaciones tecnológicas y considerar aspectos clave como procedimientos almacenados, manejo de permisos, optimización de consultas, y mecanismos de respaldo, las empresas pueden mejorar significativamente su eficiencia operativa, proteger su información crítica y tomar decisiones informadas que impulsen su crecimiento y competitividad en el mercado.

![creacion de usuarios](https://github.com/user-attachments/assets/98ccf5a9-eb17-45e7-a03c-fd4f85c88d11)


## CAPÍTULO III: METODOLOGÍA SEGUIDA 

Donec lobortis tincidunt erat, non egestas mi volutpat in. Cras ante purus, luctus sed fringilla non, ullamcorper at eros.

 **a) Cómo se realizó el Trabajo Práctico**
Vestibulum rutrum feugiat molestie. Nunc id varius augue. Ut augue mauris, venenatis et lacus ut, mattis blandit urna. Fusce lobortis, quam non vehicula scelerisque, nisi enim ultrices diam, ac tristique libero ex nec orci.

 **b) Herramientas (Instrumentos y procedimientos)**
Donec lobortis tincidunt erat, non egestas mi volutpat in. Cras ante purus, luctus sed fringilla non, ullamcorper at eros. Integer interdum id orci id rutrum. Curabitur facilisis lorem sed metus interdum accumsan. 


## CAPÍTULO IV: DESARROLLO DEL TEMA / PRESENTACIÓN DE RESULTADOS 

Maecenas molestie lacus tincidunt, placerat dolor et, ullamcorper erat. Mauris tortor nisl, ultricies ac scelerisque nec, feugiat in nibh. Pellentesque interdum aliquam magna sit amet rutrum. 



### Diagrama relacional
![diagrama_relacional](https://github.com/carolacodes/basesdatos_proyecto_estudio/blob/main/doc/Esquema_Relacion.jpeg)

### Diccionario de datos

Acceso al documento [PDF](doc/Diccionarios_Datos.pdf) del diccionario de datos.


## CAPÍTULO V: CONCLUSIONES

Nunc sollicitudin purus quis ante sodales luctus. Proin a scelerisque libero, vitae pharetra lacus. Nunc finibus, tellus et dictum semper, nisi sem accumsan ligula, et euismod quam ex a tellus. 



## BIBLIOGRAFÍA DE CONSULTA



