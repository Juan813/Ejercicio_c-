using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act2_Tema8 : MonoBehaviour {

    /*
     * Implementa una funcionalidad extra para el juego del bingo que vimos en temas anteriores. Ahora debes crear de forma aleatoria un cartón con 15 números aleatorios repartidos en 3 filas de 5 columnas.
        Para ello, crea un tablero de 3x5 que se va llenando con número aleatorios (entre 1 y 7). Los números deben ser incrementales y no se deben repetir, por lo que cada número nuevo se calculará sumando el valor del número anteriormente calculado. Por ejemplo, si obtienes en la primera casilla el 4, en la siguiente casilla debes calcular un número random entre 5 y 12 (es decir, 5 + 7). La formula sería n = Random(n-1, n+7).

        Asegurate de no crear números mayores de 99. De ser el caso, tendrás que recalcular las últimas cifras. El cartón debe crearse de forma que se recorran primero las columnas, para poder cantar línas.
        Prueba tu programa mostrando por consola el carton obtenido.
     */
    int[,] carton;


    // Use this for initialization
    void Start () {
        CreaCarton();

    }

    //---------------------------------------------
    void CreaCarton()
    {
        //Primero inicializo datos
        carton = new int[5, 3]; //Ancho y alto

        int rnd;
        int min = 1;
        int max = 7;
        float auxMax = 7f;

        for (int ancho = 0; ancho < carton.GetLength(0); ancho++)
        {
            for (int alto = 0; alto < carton.GetLength(1); alto++)
            {
                rnd = Random.Range(min, max);

                carton[ancho, alto] = rnd;
                Debug.Log("Casilla [" + ancho + "," + alto + "] = " + carton[ancho, alto]);


                min = max + 1;
                auxMax += 6.5f;
                max = (int)auxMax;

                if (max > 100)
                {
                    max = 100;
                }

            }
        }


    }
    //---------------------------------------------
}
