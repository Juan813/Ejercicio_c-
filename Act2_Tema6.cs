using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Act2_Tema6 : MonoBehaviour {

    //Para todos los ejercicios
	public int mes;
	public int dia;
	public int[] numeros = { 50, 39, 65, 34, 56, 45 };
	//----------------------------------------------------------------------

	void Start()
	{

		Debug.Log("El número total de dias es" + GetDias());
		Debug.Log("El resto de días que quedan del año son:" + GetResto());

		string[] arrayMeses = {"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto",
		"Septiembre","Octubre","Noviembre","Diciembre"};
		int[] tabla = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
		Debug.Log("El dia " + dia + " de " + arrayMeses[mes - 1] + " quedan "
		+ GetResto() + " días para acabar el año");

		ArrayInvertido();

	}
	//----------------------------------------------------------------------
	// Creamos una función donde tenemos un array para almacenar los días que tiene cada mes
	//Recorremos con un ciclo for todos los meses y sumamos los días que tiene cada uno
	//Devuelve un entero con el número de días total
	int GetDias()
	{
		int[] tabla = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
		int sumames = 0;
		int total = 0;
		for (int i = 0; i < mes - 1; i++)
		{
			sumames += tabla[i];
		}
		total = sumames + dia;
		return total;
	}
	//----------------------------------------------------------------------
	// Creamos una función donde tenemos un array para almacenar los días que tiene cada mes
	//Recorremos con un ciclo for a la inversa todos los meses que quedan y sumamos los días que tiene cada uno
	//Devuelve un entero con el número de días que quedan del año
	int GetResto()
	{
		int[] tabla = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
		int sumames = 0;
		sumames = tabla[mes - 1] - dia;
		for (int i = 11; i > mes - 1; i--)
		{
			sumames += tabla[i];
		}

		return sumames;
	}
	//----------------------------------------------------------------------
	// Recorremos con un for el array desde el último elemento al primero
	//Muestra por pantalla los números del array en el sentido que lo hemos recorrido
	void ArrayInvertido()
	{
		for (int i = (numeros.Length - 1); i >= 0; i--)
		{
			Debug.Log(numeros[i]);

		}

	}

}


