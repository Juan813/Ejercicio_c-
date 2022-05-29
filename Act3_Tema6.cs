using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act3_Tema6 : MonoBehaviour {

    //Para el A
    public string[] nombres = { "Pepe", "Juan", "Borja", "Maria", "Clara", "Sergio", "Julia", "Antonio", "Jorge",
                                "Marta", "Fernando", "Luis", "Paula", "Nieves", "Pedro" };//No son 20, pero me he cansado...


    public string nombreUser;

    //Para el B
    public int[] primos = { 80, 25, 21, 36, 10, 37, 51, 15, 5, 100}; //Usamos esto al azar, tiene primos dentro

	// Use this for initialization
	void Start () {

        //A
        BuscaNombre(nombreUser);


    }
    //----------------------------------------------------------------------------------
    void BuscaNombre(string name)
    {
        int cont = 0;
        bool encontrado = false;

        while ((cont < nombres.Length) && (!(encontrado)))
        {
            if (name == nombres[cont])
            {
                encontrado = true;
            }
            cont++;
        }
    }
    //----------------------------------------------------------------------------------
    void BuscarPrimo()
    {
        int cont = 0;
        bool encontrado = false;

        while ((cont < primos.Length) && (!(encontrado)))
        {
            if (EsPrimo(primos[cont]))
            {
                encontrado = true;
            }
        }

        if (encontrado)
        {
            Debug.Log("El array tiene números primos");
        } else
        {
            Debug.Log("El array NO tiene números primos");
        }

    }
    //----------------------------------------------------------------------------------
    //Función auxiliar para el b
    public bool EsPrimo(int num)
    {
        int cont = 2; //Empiezo en el 2 porque todo es divisible entre 1
        bool esPrimo = true; //Asumo que es primo hasta que demuestro que no lo es
        while ((esPrimo) && (cont < num)) //Dos condiciones, mientras piense que es primo y no me paso de la cuenta
        {
            if (num % cont == 0)
            {
                esPrimo = false; //Si es divisible no es primo
            }
            cont++;
        }

        return esPrimo;
    }
    //----------------------------------------------------------------------------------
    void BuscarPrimoFor()
    {
        
        bool encontrado = false;

        for (int i = 0; i < primos.Length; i++)
        {
            if (EsPrimo(primos[i]))
            {
                encontrado = true;
            }
        }
        //Este es peor porque recorre SIEMPRE todo el array, aunque encuentre un primo a la primera, no para.
        

        if (encontrado)
        {
            Debug.Log("El array tiene números primos");
        }
        else
        {
            Debug.Log("El array NO tiene números primos");
        }

    }
    //----------------------------------------------------------------------------------




    /*
     
    Respecto a actividades Arrays con While:
    A) Crea un programa que dado un array de 20 nombres y dado un nombre por el usuario, 
    te diga si el nombre aparece en el array o no.
    B) Crea un programa con While que dado un array de 10 elementos de enteros aleatorios entre 1 y101, 
    diga si hay alguno primo o no.
    C) Haz el ejercicio anterior con un For y explica porque es menos eficiente que usar el While.
      
     */
}
