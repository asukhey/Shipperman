package dbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RemCust
 */
@WebServlet("/RemCust")
public class RemCust extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemCust() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		try {
			int cid=Integer.parseInt(request.getParameter("c_id"));
			
			String fk_check0 ="set foreign_key_checks =0";	//Cause customers is linked with orders
			String fk_check1="set foreign_key_checks=1";
			
			String del_cust="delete from customers where cust_id = '"+cid+"'";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
			Statement st= conn.createStatement();
			
			st.execute(fk_check0);
			
			int r= st.executeUpdate(del_cust);
			st.execute(fk_check1);
			System.out.println("Rows Affected: " +r);
			
			response.sendRedirect("AdminP5Customers.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		doGet(request, response);
	}

}
