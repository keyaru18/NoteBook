# Class02 : 30 de Abrl

## Comando de Linux
- pwd : Lugar actual
- touch readme.md : para crear archivos

## **Comando de vscode**
- WINDOW: CTRL + SHIFT + P
- WINDOW: CTRL + P
- WINDOW: CTRL + B
- WINDOW: SHIFT + ALT + UP OR touch SHIFT + ALT + DOWN 

## **Observaciones**
- Luego de dar click en un archivo se puede cambiar el nombre con "F2".

# Class03: 1 de May
- **git**
- markdown

```java 
public class Hola {
    public static void main (String[] args) {
        System.out.println():
    }     
}
```

|Columna 1|Columna 2|
|---------|---------|
|    A    |    B    |
|    C    |    D    |

Link
[buscador google](https://google.com)

![Captura de Imagen](img01.png)

# Class04: 6 de May
## Origen de Java:
 - Scott y Patrick se reunieron y crearon una nueva forma de resolver un proyecto al escribir algo diferente y ahi fue que surgió el compilador de Java.
 - El compilador y el interprete generan el código de máquina que esta diseñado para correr en el sistema operativo.
 - Ellos dejaron un código intermedio, es decir se utiliza el mismo compilador pero deja un **bytecode** (en java es un punto class). Sobre los sistemas operativos se instala el famoso SDK (hay para cada versión) y Las compilaciones generan un .class que se empaquetan. Luego con toma el código de máquina para distribuirlo a cada sistema operativo.
 - Ese mismo principio se utilizó para los dispositivos móviles.
### **¿Cómo funciona Java?**
1. **Código**: Escrito por los programadores.
2. **Compilación**: Esta compilación devuelve un Bytecode.
3. **BYTECODE**: Sn instrucciones para la Java Virtual Machine.
4. **JVM***: La Java Virtual Machine interpreta el bytecode.
5. **Multiplataforma**: Se ejecuta en diferentes sistemas operativos.

### **Tipos de lenguaje**
 - *Compilado*: Convierte el Código a binarios que lee el sistema operativo. 
 - *Interpretado*: Requiere de un programa que lea la instrucción del código en tiempo real y lo ejecute.
 - *Intermedio*: Se compila el código fuente a un lenguaje intermedio y este último se ejecuta en una máquina virtual.

### **Sabores de JAVA**
Es usado para: 
 - Mobile applications (specialis Android apps)
 - Desktop applications
 - Web applications
 - Web Server and application servers
 - Games
 - Database connection
 - And much , much more!

El trabajo multiplataforma, gracias al Java Virtual Machine, además que es uno de los lenguajes más utilizados en el mundo.
Es fácil de aprender y tienes otras varias características. 
Es el padre de los lenguajes CC, esta bien estructurado y se deriva del entorno de trabajo. 
###**Sintaxis de JAVA**

```java 
//Package pertenece a un paquete
package team.ed.course;

//Importa los paquetes para el proyecto
import Java.lang.*;

//Java usa clases para ejecutar el código
public class Person {

//Se debe indicar el tipo de dato
 private String name;

//Modificadores de acceso: private, public, protector o por defecto ninguno
//El método principal en Java es el método main
 private static void main(String algo[]) {

//La palabra reservada new crea un objeto del tipo de dato especificado
  Person friend = New Person () ;

  friend.name = "Peter";
  System.out.println(" Hola " + friend.name) ;
  //Se utilizan ; para cada sentencia.
  // Se usan {} para identificar el bloque de código.
 }
}
```
### **Estructurado vs O.O.**
**La programación estructurada** es un paradigma de programación que se enfoca en mejorar la claridad, calidad y tiempo de desarrollo de un programa de computadora. Se caracteriza por el uso de subrutinas y tres estructuras de control básicas: secuencia, selección (if y switch) e iteración (bucles for y while). Este enfoque permite a los programadores escribir código que es más fácil de entender, depurar y mantener.
![Captura de Imagen](i2.png)

**La Programación Orientada a Objetos (POO)** es un paradigma de programación que utiliza “objetos” como elementos centrales para diseñar y programar aplicaciones de software1. En POO, cada objeto es una instancia de una clase, que define los atributos (datos) y métodos (funciones) del objeto. Los objetos pueden interactuar entre sí, lo que permite crear sistemas complejos y modulares.
![Captura de Imagen](i3.png)

### **Algoritmia**
- **Diagrama de flujo**

Un *diagrama de flujo* es una representación gráfica de un proceso, sistema o algoritmo informático¹. Se utiliza para documentar, estudiar, planificar, mejorar y comunicar procesos complejos de manera clara y comprensible. Los diagramas de flujo son útiles en una variedad de campos y pueden ser tan simples como un esquema dibujado a mano o tan detallados como un diagrama computarizado que describe múltiples pasos y rutas¹.
![Cap](i4.png)

### **Código**
- cd (nombre de carpeta): Para entrar a una carpeta desde git.
- javac App.java: Para compilar
- java App.java: Para ejecutar el programa

```java 
public class App{
    //propiedad
    public static void main (String[]args){
        //variable
        int n = 10;
        int m = 10;
        //for (int i=2; i<n; i+=2)
        //  if (i==6)
        //      System.out.println("Hay un seis);
        //  else
        //      Systm.out.println(i);
        for(int i=2; i<n; i+=2)
            System.out.println((i==6)?"Hay un seis":i);
            //for(;;)
                //System.out.println("Keyaru");
    }
}
```
# Class05: 7 de May 
si
