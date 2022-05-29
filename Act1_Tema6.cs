using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act1_Tema6 : MonoBehaviour {

    //Para meter datos por el inspector
    public int num1 = 5;
    public int num2 = 1;
    public int num3 = 1298;
    public int num4 = -34;

    //Lo vamos hacer privado y publico

    private int[] ejerA;

    public int[] ejerB; //Este lo lleno directamente desde el inspector

    // Use this for initialization
    void Start () {

        //Para hacer el ejercicio A
        CreaArray();

        //Para el B, asumiendo que hemos inicializado con tamaño y dado valores desde el inspector correctamente.
        Debug.Log("La media de los " + ejerB.Length + " números introducidos es " + MediaArit(ejerB));
    }

    //------------------------------------------------------------------------
    void CreaArray()
    {
        //Necesario para el ejercicio A
        ejerA = new int[4];

        ejerA[0] = num1;
        ejerA[1] = num2;
        ejerA[2] = num3;
        ejerA[3] = num4;

        Debug.Log("La media de los " + ejerA.Length + " números introducidos es " + MediaArit(ejerA));

    }
    //------------------------------------------------------------------------
    //Hago el método calcular media generico para cualquier array de enteros de entrada
    public int MediaArit(int [] nums)
    {
        int resultado = 0;
        for (int i = 0; i < nums.Length; i++)
        {
            resultado += nums[i];
        }

        resultado /= nums.Length;

        return resultado;
    }
    //------------------------------------------------------------------------
  

    /*
     A) Crea un programa que pida al usuario 4 números, los memorice (utilizando un array), 
     calcule su media aritmética y después muestre en pantalla la media y los datos tecleados.

    Recuerda: para introduccir datos, hazlo por el inspector.

    B) Ahora, vuelve a hacer lo mismo, pero haz público tu array. 
    Verás que puedes darle tamaño y valores a tu array desde el mismo inspector de Unity.
     
     */
}
