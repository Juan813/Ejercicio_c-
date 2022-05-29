using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BingoLista : MonoBehaviour {

    private int tamBombo = 99;

    public List<int> bombo = new List<int>();

    //------------------------------------------------------------
    public static BingoLista bl;
    //Lo convierto en instancia unica AQUI
    void Awake()
    {
        if ((bl != null) && (bl != this))
        {
            Destroy(this.gameObject);
        }
        else
        {
            bl = this;
        }
    }
    //----------------------------------------------------



    // Use this for initialization
    void Start () {

        llenaBombo();

    }
	
	// Update is called once per frame
	void Update () {

        /*
         * Queremos que haga esto desde otro script
         * 
        if (Input.GetKeyDown(KeyCode.Space))
        {
            SacaNumero();
        }
        */
    }
    //-------------------------------------------
    void llenaBombo()
    {
        for (int i = 1; i <= tamBombo; i++)
        {
            bombo.Add(i);
        }
        
    }
    //-------------------------------------------
    public void SacaNumero()
    {
        if (bombo.Count > 0) //Sólo sacamos números si aún no está vacio
        {
            int rnd = Random.Range(0, bombo.Count);

            Debug.Log("El " + bombo[rnd]); //Canto número

            bombo.RemoveAt(rnd);//Al eliminar, aseguramos que no se repite

        } else
        {
            Debug.Log("¡El bombo está vacio!");
        }
    }
    //-------------------------------------------
    //-------------------------------------------

}
