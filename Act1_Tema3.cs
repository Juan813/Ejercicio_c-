using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act1_Tema3 : MonoBehaviour {

    //Variable para el D
    public int num = 5;

    //Variable para el E
    public int esc = 5;

	// Use this for initialization
	void Start () {

        //Para el A no necesitamos variables globales o locales

        for (int a = 10; a <= 20; a++)
        {
            Debug.Log(a);
        }
        //-------------------------------------------------
        //Para el B tampoco hacen falta variables
        for (int b = 1; b <= 50; b++)
        {
            if (b % 3 == 0)
            {
                Debug.Log(b + " es múltiplo de 3");
            }
        }

        //-------------------------------------------------
        //Para el C idem, no hacen falta variables
        for (int c = 100; c <= 200; c++)
        {
            if ((c % 3 == 0)&&(c % 7 == 0))
            {
                Debug.Log(c + " es múltiplo de 3 y de 7");
            }
        }
        //-------------------------------------------------
        //Para el D necesitamos que el usuario ponga un número por el inspector.
        //Fíjate que el factorial puede ser un número muy grande que no cabe en un tipo entero
        //por lo tanto, usamos el entero largo LONG para almacenar el resultado
        long fact = 1; //A uno porque multiplicar por cero casca...

        //Empezamos en 2 porque multiplicar por 1 es una pérdida de tiempo
        for (int d = 2; d <= num; d++)
        {
            fact *= d; //Acumulamos multiplicaciones a cada iteración
        }
        Debug.Log("El factorial de " + num + " es " + fact);

        //---------------------------------------------------
        //Para el E usamos una variable auxiliar local para crear los escalones y otra global para saber tamaño

        //Primero vemos que no nos pasemos de los índices indicados:
        if (esc < 5)
        {
            esc = 5;
        } else if (esc > 10)
        {
            esc = 10;
        }
        //Date cuenta que no pasará por ningún if si esc vale algo entre 5 y 10

        string peldaño = "*";
        for (int i = 0; i < esc; i++)
        {
            peldaño = "*"; //Reiniciamos peldaño a cada iteración de escalera
            for (int j = 0; j < i; j++) //Solo iteramos i-1 veces
            {
                peldaño += "*";
            }
            //Pintamos este peldaño que hemos construido
            Debug.Log(peldaño);
        }
    }

    //--------------------------------------------
    /* ENUNCIADOS
     
    A) Crea un programa que muestre los números del 10 al 20, ambos incluidos.
    B) Crea un programa que escriba en pantalla los números del 1 al 50 que sean múltiplos de 3 (pista: habrá que recorrer todos esos números y ver si el resto de la división entre 3 resulta 0).
    C) Crea un programa que muestre los números del 100 al 200 (ambos incluidos) que sean divisibles entre 7 y a la vez entre 3.
    D) Crea un programa que dado un número, calcule el factorial de dicho número. La fórmula del factorial es la siguiente n! = n * (n-1) * … * 2. De esta forma, el factorial de 5 sería 5! = 5 * 4 * 3 * 2 = 120.
    E) Crea un programa con fors anidados que dado por el usuario un número entre 5 y 10, cree una escalera de asteriscos (pista: puedes ayudarte con una variable de tipo string). Por ejemplo, si el usuario pone el 6, por pantalla deberá salir:
        *
        **
        ***
        ****
        *****
        ******

     */
}
