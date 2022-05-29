using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act1_Tema4 : MonoBehaviour {

    //Para el A
    public int vAbs = -10;

    //Para el B
    public int ejerB = 17;

    //Para el C
    public int miTabla = 5;

	// Use this for initialization
	void Start () {

        //Para probar el A
        ValorAbs(vAbs);

        //Para probar el B
        EsPrimo(ejerB);

        //Para probar el C
        TablaMult3();

        //Para probar el D
        TablaMultParametrizada(miTabla);
    }
    //-----------------------------------------------------
    public void ValorAbs(int valor)
    {
        int aux = valor;
        if (valor < 0)
        {
            valor *= -1;//Cambio a positivo
        }
        Debug.Log("El valor absoluto de " + aux + " es " + valor);
    }
    //-----------------------------------------------------
    public void EsPrimo(int num)
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

        if (esPrimo)
        {
            Debug.Log(num + " es un número primo");
        }
        else
        {
            Debug.Log(num + " NO es un número primo");
        }
    }
    //-----------------------------------------------------
    //Ejercicio C
    public void TablaMult3()
    {
        //No tiene parámetros de entrada porque no se indica.
        int res = 1;
        for (int i = 1; i < 10; i++)
        {
            res = i * 3;
            Debug.Log(i + " por 3 es " + res);
        }
    }
    //-----------------------------------------------------
       //Repetimos el 3 pero parametrizado
       public void TablaMultParametrizada(int tabla) {
        int res = 1;
        for (int i = 1; i < 10; i++)
        {
            res = i * tabla;
            Debug.Log(i + " por "+ tabla +"  es " + res);
        }
    }
    //-----------------------------------------------------
    //-----------------------------------------------------
    /*
       A  - Crea un método que dado un parámetro de entrada entero, imprima por pantalla el valor absoluto del valor del parámetro de entrada.
       B - Crea un método que dado un número entero como parámetro de entrada, indique por pantalla si es primo o no lo es.
       C - Crea un método que imprima por pantalla la tabla de multiplicar del tres.
       D - Modifica el método anterior para que la tabla de multiplicar que se muestre por pantalla se indique con un parámetro de entrada.
     
     */
}
