using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act1_Tema8 : MonoBehaviour {

    public int Xmax = 4;
    public int Ymax = 4;

    int[,] terreno;

    // Use this for initialization
    void Start () {

        creaTerreno();
        analizaTerreno();

    }

    //-----------------------------------------------------------
    void creaTerreno()
    {
        terreno = new int[Xmax, Ymax]; //Primero creamos según tamaño indicado

        for (int i = 0; i < terreno.GetLength(0); i++)
        {
            for (int j = 0; j < terreno.GetLength(1); j++)
            {
                terreno[i, j] = Random.Range(1, 10);//Genero un valor al azar
                Debug.Log("En la casilla de fila " + i + " y columna " + j 
                      + " he generado el valor: " + terreno[i, j]);
            }
        }
    }
    //-----------------------------------------------------------
    void analizaTerreno()
    {
        int acumulado = 0;

        for (int i = 0; i < terreno.GetLength(0); i++)
        {
            for (int j = 0; j < terreno.GetLength(1); j++)
            {
                if (terreno[i, j] < 5)
                {
                    acumulado--;
                } else if (terreno[i, j] > 5)
                {
                    acumulado++;
                }
            }
        }
        //Comprobamos acumulado
        if (acumulado < 0)
        {
            Debug.Log("El terreno está maldito");
        } else if (acumulado > 0)
        {
            Debug.Log("El terreno está bendito");
        } else
        {
            Debug.Log("El terreno está equilibrado");
        }

    }
    //-----------------------------------------------------------
    //-----------------------------------------------------------

}
