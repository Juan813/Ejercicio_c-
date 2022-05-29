// Crea un programa que pida al usuario un número entero y diga si es par 
//(pista: habrá que comprobar si el resto que se obtiene al dividir entre dos es cero).
    public int entero;
    void Start()
    {
        int divisor = 2;
        int resultado = entero % divisor;
        if (resultado == 0)
        {
            Debug.Log("El número introducido en par");
        }
        else
        {
            Debug.Log("El número introducido no es par");
        }
    }
