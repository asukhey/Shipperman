package dbc;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ValidateFormData
 */
@WebServlet("/ValidateFormData")
public class ValidateFormData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateFormData() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String credcardno = request.getParameter("ccn");
		String type = request.getParameter("cardtype");
		String authenticate = request.getParameter("auth");
		String amount = request.getParameter("amt");
		int mm=Integer.parseInt(request.getParameter("month"));
		int yy= Integer.parseInt(request.getParameter("year"));
		HttpSession session = request.getSession();
		ModTen mt = new ModTen();
		Validation v = new Validation();
		
		
		
		/*Remove clear all sessions if any*/
		session.removeAttribute("message1");
		session.removeAttribute("message2");
		session.removeAttribute("message3");
		session.removeAttribute("message4");
		
		
		/*All fields are validated*/
		
		if((mt.checkCard(credcardno)==true) &&(v.authval(authenticate)==true) 
			 && (v.dateValidation(mm, yy)==true)) {
			session.setAttribute("ccn", credcardno);
			session.setAttribute("cardtype", type);
			session.setAttribute("auth", authenticate);
			session.setAttribute("amt", amount);
			session.setAttribute("month", mm);
			session.setAttribute("yy", yy);
			
			RequestDispatcher requestDispatcher = request
                    .getRequestDispatcher("/Page43_Order_Successful.jsp");
            requestDispatcher.forward(request, response);
		}
		
		
		else {
		
			/*New work today: error validation*/
			if(!mt.checkCard(credcardno)) {
				String message1="Kindly enter a valid 16 digit credit card number";	
				session.setAttribute("message1", message1);	
			}
			
			if(!v.authval(authenticate)) {
				
				String message2="Kindly enter a valid authentication number which is either a 3 or a 4 digit number having no repeating digits";	
				session.setAttribute("message2", message2);	
			}

			
			if(!v.dateValidation(mm, yy)) {
				String message4="Enter a valid credit card expiry date, make sure the card is alteast valid till 1 day post current date";	
				session.setAttribute("message4", message4);	
			}
			
			
			RequestDispatcher requestDispatcher = request
                    .getRequestDispatcher("/Page42_Payment.jsp");
            requestDispatcher.forward(request, response);
		}
			
			
	}
}
