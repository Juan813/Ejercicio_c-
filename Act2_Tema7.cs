using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act2_Tema7 : MonoBehaviour {

    //Solo necesario para el apartado A
    GameObject GoAux;
    BingoLista punteroBl;



	// Use this for initialization
	void Start () {
        

    }
	
	// Update is called once per frame
	void Update () {
        /*
         * Ahora crea otro script que sea el que saca las bolas. Para hacerlo, deberás usar un puntero al script principal. Pero recuerda, como lo has hecho instancia única, tienes un superpuntero y debería ser sencillo acceder a él.
         
            Realiza el ejercicio de las dos formas:
            A - Acceso normal con punteros. (Lo voy a asociar a pulsar espacio)
            B - Acceso por instancia única. (Lo voy a asociar a pulsar Control)
         */

        //EJERCICIO A
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //Necesito esto para el A. Para el B no es necesario
            GoAux = GameObject.Find("Main Camera");
            //Para que esto funcione, tienes que poner el script BingoLista en 
            //la cámara Main Camera
            punteroBl = GoAux.GetComponent<BingoLista>();
            punteroBl.SacaNumero();
        }
        //EJERCICIO B
        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            //Para que esto funcione, tienes que poner el script BingoLista en 
            //CUALQUIER objeto de la escena (WORKSPACE / RAM)
            BingoLista.bl.SacaNumero();
        }

    }
}
