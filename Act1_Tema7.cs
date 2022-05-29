using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act1_Tema7 : MonoBehaviour {

    /*
     Crea una sencilla clase/script que acceda a la Main cámera y le cambie en el 
     Start el parámetro View Size a un valor que float que asignes en una variable 
     pública en tu script.
    */

    public float nuevoSize = 120;


    // Use this for initialization
    void Start () {

        GameObject GO;
        GO = GameObject.Find("Main Camera");

        Camera cam;
        cam = GO.GetComponent<Camera>();

        cam.fieldOfView = nuevoSize; //Cambio a lo indicado por inspector.

	}

	
	
}
