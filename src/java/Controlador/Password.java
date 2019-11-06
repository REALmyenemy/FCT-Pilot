package Controlador;
//////CLASE DEPRECATED, MANTENIDA POR SI QUIERO ACTUALIZARLA O RECICLAR SUS MÉTODOS
import Controlador.Excepciones.NoAlgorithmException;
import Controlador.Excepciones.SmallLengthException;
import java.util.Random;

public class Password {
	
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
				/*Double hashNum=Double.parseDouble(hash);
				hashNum*=ran;
				return hashNum==Double.parseDouble(genNumber(input.toCharArray()).substring(0,72)); //No está bien, dale la vuelta a tu pensamiento
				*/
				
			case 1:
				
				break;
			case 2:
				
				break;
			default:
				throw new NoAlgorithmException();
		}
		
		
		return false;
	}
	
}
