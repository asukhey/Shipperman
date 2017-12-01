package dbc;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
		String ship_type= session.getAttribute("ship_type").toString();
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
			
			
				/*Get current date and time*/
				//Variables used for records
				Timestamp date = new Timestamp(new java.util.Date().getTime());
				String cust_id=session.getAttribute("cust_id").toString();
				int cid = Integer.parseInt(cust_id);
				String amt=session.getAttribute("total").toString();
				float totamt=Float.parseFloat(amt);
				String status="Processing";
				String ship_from = session.getAttribute("loc_from").toString();
				String ship_to = session.getAttribute("loc_to").toString();
				
				/*Retrieving Employee Details*/
					
				/*Create a record in Order table*/
				
				String ins_rec = "Insert into orders (order_date,cust_id,emp_id,truck_id,order_amount,status,ship_from,ship_to)"
						+ "values (?,?,?,?,?,?,?,?) ";
			
				
				try {
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
					
					String emp_details = "Select emp_id, truck_id from trucks where shipping_type= '"+ship_type+"'";
					PreparedStatement ps1 = conn.prepareStatement(emp_details);
					ResultSet rs = ps1.executeQuery();
					while(rs.next()) {
						int emp_id = rs.getInt("emp_id");
						int truck_id = rs.getInt("truck_id");
						session.setAttribute("e_id", emp_id);
						session.setAttribute("t_id", truck_id);
					}
					
					int emp_id = Integer.parseInt(session.getAttribute("e_id").toString());
					int truck_id = Integer.parseInt(session.getAttribute("t_id").toString());
					PreparedStatement ps= conn.prepareStatement(ins_rec);
					ps.setTimestamp(1,date);
					ps.setInt(2,cid);
					ps.setInt(3, emp_id);
					ps.setInt(4, truck_id);
					ps.setFloat(5, totamt);
					ps.setString(6, status);
					ps.setString(7, ship_from);
					ps.setString(8, ship_to);
					ps.executeUpdate();
					ps.close();
					
					/*	Update emp_id and truck id */
					
					
					
					
					/*
					 * Add records in invoice table
					 * */
					
					/*Add a print option*/
					
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
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
