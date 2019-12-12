package Controlador.Excepciones;

public class NotOldEnoughException extends RuntimeException {
	public NotOldEnoughException()
	{
		System.err.println("Alguien se ha intentado registrar antes de tiempo");	
	}
}
