using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act2_Tema3 : MonoBehaviour {
    //Variable global para el numero dado del A
    public int numA = 15;

    //Variable global para los numeros dados del B
    public int _base = 3;
    public int _exp = 6;


    // Use this for initialization
    void Start () {

        //Como el while no te da contadores, me creo uno y un boleano
        int cont = 2; //Empiezo en el 2 porque todo es divisible entre 1
        bool esPrimo = true; //Asumo que es primo hasta que demuestro que no lo es
        while ((esPrimo) && (cont < numA)) //Dos condiciones, mientras piense que es primo y no me paso de la cuenta
        {
            if (numA % cont == 0)
            {
                esPrimo = false; //Si es divisible no es primo
            }
            cont++;
        }

        //ahora según el boleano....
        if (esPrimo) Debug.Log(numA + " es un número primo");
        else Debug.Log(numA + " NO es un número primo");

        //-------------------------------------------------------
        //Como el resultado del B puede ser muy largo, lo almacenamos en un LONG
        long resultado = 1;
        int itera = 1;
        while (itera <= _exp)
        {
            resultado *= _base;
            itera++;
        }
        Debug.Log(_base + " elevado a " + _exp + " = " + resultado);
        //Date cuenta de que se trata de un recorrido.
        //Al tener que ciclar tantas veces como indica el exponente, no hay incertidumbre y el while no compensa usarlo

        //Hago el C ahora usando las mismas variables pero con un for y
        //además me ahorro el itera
        resultado = 1;
        for (int i = 1; i <= _exp; i++)
        {
            resultado *= _base;
        }
        Debug.Log("CON EL FOR => " + _base + " elevado a " + _exp + " = " + resultado);
    }

    //--------------------------------------------------
    //ENUNCIADOS
    /*
    A) Escribe un algoritmo usando el while que dado un número, determine si es primo o no.
    B) Crea un programa con while que dado dos números, base y potencia, calcule con multiplicaciones la potencia de la base.
    C) Crea el mismo programa que en la actividad anterior pero usando for. Verás que obtienes el mismo resultado.Este es un caso en el que es mejor usar el for.
    */
}
