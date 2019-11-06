package Controlador.Excepciones;


public class SmallLengthException extends Exception {
	public SmallLengthException(String ex)
	{
		System.err.println("Alguien ha intentado meter una contraseña demasiado corta");
	}
	
}
