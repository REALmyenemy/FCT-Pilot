package Controlador.Excepciones;


public class NoAlgorithmException extends Exception {
	public NoAlgorithmException ()
	{
		System.err.println("Algo raro ha pasado, no se ha seleccionado un algorítmo");
	}
}
