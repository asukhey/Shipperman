package dbc;


public class ModTen {
	
	public  boolean checkCard(String ccnum) {

		int[] ints = new int[ccnum.length()];
		for (int i = 0; i < ccnum.length(); i++) {
			ints[i] = Integer.parseInt(ccnum.substring(i, i + 1));
		}
		
		/*For even array positions*/
		for (int i = ints.length - 2; i >= 0; i = i - 2) {
			int j = ints[i];
			j = j * 2;
			if (j > 9) {
				j = j % 10 + 1;
			}
			ints[i] = j;
		}
		int sum = 0;
		for (int i = 0; i < ints.length; i++) {
			sum += ints[i];
		}
		if (sum % 10 == 0) {
			System.out.println(ccnum + " is a valid credit card number");
			return true;
		} else {
			System.out.println(ccnum + " is an invalid credit card number");
			return false;
		}
	}
}
