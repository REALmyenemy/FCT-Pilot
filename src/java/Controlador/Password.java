		package Controlador;
//////CLASE DEPRECATED, MANTENIDA POR SI QUIERO ACTUALIZARLA O RECICLAR SUS MÉTODOS
////// Hecho en https://stackoverflow.com/questions/18142745/how-do-i-generate-a-salt-in-java-for-salted-hash
////// Ten en cuenta esto https://stackoverflow.com/questions/634727/how-to-convert-utf-8-character-to-iso-latin-1
import Controlador.Excepciones.NoAlgorithmException;
import Controlador.Excepciones.SmallLengthException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import java.util.Random;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

public class Password {
	/*
	public static String crearPass(String password) throws SmallLengthException,NoAlgorithmException
	{
		if (password.length()<6)
		{
			throw new SmallLengthException("");
		}
		
		Random r= new Random();
		String hashedpassword=""+r.nextInt(3);
		float num;
		
		char[] pass=password.toCharArray();
		String passNumber=genNumber(pass);
		
		int ran=r.nextInt(5);
		switch(hashedpassword)
		{
			case "0":
				hashedpassword+=(Double.parseDouble(passNumber.substring(0,72))/ran);
				break;
			case "1":
				//hashedpassword+=(maximize(pass)/ran);
				hashedpassword+=convertirNumStringAString(passNumber,ran);
				break;
			case "2":
				
				break;
			default:
				throw new NoAlgorithmException();
		}
		hashedpassword=hashedpassword.substring(0,100);
		hashedpassword+=ran;
				
		return hashedpassword;
	}
	
	private static String genNumber(char[] pass)
	{
		int[] array=new int[pass.length];
		for (int i=0;i<pass.length;i++)
		{
			array[i]=(int)pass[i];
		}

		return array.toString();
	}
	
	private static String convertirNumStringAString(String cadena)
	{
		int halfLength=cadena.length()/2;
		String substring;
		String cadenaFinal="";
		for (int i=0;i<halfLength;i++)
		{
			substring=cadena.substring(i*2,i*2+1);
			cadenaFinal+=genChar(Integer.parseInt(substring)%79);			
		}
		
		return cadenaFinal;
	}
	
	private static String convertirNumStringAString(String cadena, int divisor)
	{
		Double num = Double.parseDouble(cadena);
		num/=divisor;
		
		return convertirNumStringAString(num.toString());
	}
	
	public static char genChar(int c)
	{
		return (char)(c+48); //Hash a partir de 126-48=78
	}
	
	
	public static boolean passwordVerify (String input,String password) throws NoAlgorithmException
	{
		int salt = Integer.parseInt(password.substring(0,1));
		int ran = Integer.parseInt(password.substring(password.length()-1,password.length()));
		String hash= password.substring(1,password.length()-1);
		
//		String numInput=genNumber(input.toLowerCase())
		
		switch(salt)
		{
			case 0:
				//Double hashNum=Double.parseDouble(hash);
				//hashNum*=ran;
				//return hashNum==Double.parseDouble(genNumber(input.toCharArray()).substring(0,72)); //No está bien, dale la vuelta a tu pensamiento
				
				
			case 1:
				
				break;
			case 2:
				
				break;
			default:
				throw new NoAlgorithmException();
		}
		
		
		return false;
	}*/
	
	private static final Random RANDOM = new SecureRandom();
	private static final int ITERATIONS = 10000;
	private static final int KEY_LENGTH = 256;


	public static byte[] getNextSalt() {
		byte[] salt = new byte[16];
		RANDOM.nextBytes(salt);
		return salt;
	}

	/**
	 * Returns a salted and hashed password using the provided hash.<br>
	 * Note - side effect: the password is destroyed (the char[] is filled with zeros)
	 *
	 * @param password the password to be hashed
	 * @param salt		 a 16 bytes salt, ideally obtained with the getNextSalt method
	 *
	 * @return the hashed password with a pinch of salt
	 */
	public static byte[] hash(char[] password, byte[] salt) {
		PBEKeySpec spec = new PBEKeySpec(password, salt, ITERATIONS, KEY_LENGTH);
		Arrays.fill(password, Character.MIN_VALUE);
		try {
			SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
			return skf.generateSecret(spec).getEncoded();
		}
		catch (NoSuchAlgorithmException | InvalidKeySpecException e)
		{
			throw new AssertionError("Error while hashing a password: " + e.getMessage(), e);
		}
		finally
		{
			spec.clearPassword();
		}
	}

	/**
	 * Returns true if the given password and salt match the hashed value, false otherwise.<br>
	 * Note - side effect: the password is destroyed (the char[] is filled with zeros)
	 *
	 * @param password		 the password to check
	 * @param salt				 the salt used to hash the password
	 * @param expectedHash the expected hashed value of the password
	 *
	 * @return true if the given password and salt match the hashed value, false otherwise
	 */
	public static boolean isExpectedPassword(char[] password, byte[] salt, byte[] expectedHash) {
		byte[] pwdHash = hash(password, salt);
		Arrays.fill(password, Character.MIN_VALUE);
		if (pwdHash.length != expectedHash.length)
			return false;
		
		for (int i = 0; i < pwdHash.length; i++)
		{
			if (pwdHash[i] != expectedHash[i])
				return false;
		}
		return true;
	}

	/**
	 * Generates a random password of a given length, using letters and digits.
	 *
	 * @param length the length of the password
	 *
	 * @return a random password
	 */
	public static String generateRandomPassword(int length) {
		StringBuilder sb = new StringBuilder(length);
		int c;
		for (int i = 0; i < length; i++)
		{
			c = RANDOM.nextInt(62);
			if (c <= 9)
				sb.append(String.valueOf(c));
			else 
				if (c < 36)
					sb.append((char) ('a' + c - 10));
				else
					sb.append((char) ('A' + c - 36));
				
		}
		return sb.toString();
	}
	
}
