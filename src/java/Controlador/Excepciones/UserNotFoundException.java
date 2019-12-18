/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Excepciones;

/**
 *
 * @author Admin
 */
public class UserNotFoundException extends Exception {
	public UserNotFoundException()
	{
		System.err.println("Usuario no encontrado");
	}
}
