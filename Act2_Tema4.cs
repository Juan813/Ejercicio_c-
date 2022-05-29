using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act2_Tema4 : MonoBehaviour {

    //Para el A
    public int vAbs = -32;

    //Para el B
    public int primo = 51;

	// Use this for initialization
	void Start () {
        //Probamos el A directamente
        Debug.Log("El valor absoluto de " + vAbs + " es " + ValorAbs(vAbs));
        //Esta es una de las ventajas de los métodos tipificados
        //Poder usarlos como parte de asignaciones / operaciones

        //Para probar el B directamente lo usamos como predicado lógico / condición
        if (EsPrimo(primo))
        {
            Debug.Log(primo + " es un número primo");
        } else
        {
            Debug.Log(primo + "NO es un número primo");
        }
    }
    //-----------------------------------------------------
    public int ValorAbs(int valor)
    {
        if (valor < 0)
        {
            valor *= -1;//Cambio a positivo
        }

        return valor;
    }
    //-----------------------------------------------------
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
    //-----------------------------------------------------
    //-----------------------------------------------------
    /*
     - Crea una función que dado un parámetro de entrada entero, retorne el valor absoluto del valor del parámetro de entrada.

     - Crea una función que dado un número entero como parámetro de entrada, retorne true   si es primo o false si no lo es.
    */
}
