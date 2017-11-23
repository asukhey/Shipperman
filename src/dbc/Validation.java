package dbc;
import java.text.*;
import java.util.Arrays;
import java.util.Calendar;

public class Validation {
	
	
	
	
	
								/*Date validation*/
	//Text box will accept string values, you need to convert it to int
	public  boolean dateValidation(int exm, int exy) {
		
		/*Calendar instance and date formats*/
		Calendar cur= Calendar.getInstance();
		SimpleDateFormat fmt = new SimpleDateFormat("MM");
		SimpleDateFormat fy = new SimpleDateFormat("YYYY");
		
		/*Gets current date*/
		int curmonth=Integer.parseInt(fmt.format(cur.getTime())); // Month
		int curyear=Integer.parseInt(fy.format(cur.getTime()));	//Year
		
		if((exy > curyear)|| 
			((exy==curyear)&&(exm>curmonth))||
			((exy==curyear)&&(exm==curmonth))) {
			System.out.println("Valid date");
			return true;
		}
		
		else if(((exy==curyear)&&(exm==curmonth))) {
			System.out.println("Your credit card expires before the processing time(1 day). Kindly use another credit card");
			return false;
		}
		else {
			System.out.println("Invalid date");
			return false;
		}
		
		
	}
	
						/*Authorization pin validation (Pt 1.)*/
	
	public  boolean isUq(String pin) {
		
		int a=pin.length();
		char pinarray[]= new char[a]; //Array to calculate if the digits are unique.
		
		/*Adds every digit to the array*/
		for(int i=0;i<a;i++) {
			pinarray[i]= pin.charAt(i);
		}
		
		/*Checks if the digits are repeating*/
		
		for(int j1=0; j1<a;j1++) {
			for(int j2=j1+1;j2<a;j2++) {
				if(pinarray[j1]==pinarray[j2]) {
					System.out.println("ERROR! Auth pin not Accepted!");
					return false;	
				}
			
			}
			
		}
		System.out.println("PinAccepted");
		return true;
	}
	
	
	
	
					/*Final authorization validation (All included)*/
	public  boolean authval(String pin) {
		
		if(pin.length()<3||pin.length()>4) {
			System.out.println("authorized pin must be of either 3 or 4 digits");
			return false;
		}
		
		//isUq is the function mentioned above
		else if(isUq(pin)==false){
			System.out.println("A pin cannot have repeated digits.");
			return false;
		}
		
		return true;
	}
	
	
	
								/*Amount check*/
	
	public  boolean amtCheck(String amount) {
		double amt= Double.parseDouble(amount);
		
		if(amt< 0.99 && amt>500) {
			System.out.println("Amount must not exceed $500");
			return false;
		}
		
		else {
		
		return true;
		}
	} 
	


}


