package dbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		
		try {
			
			/*accept data from the form*/
			String FirstName=request.getParameter("fn");
			String LastName=request.getParameter("ln");
			
			//Billing Address
			String StreetAdd=request.getParameter("stadd");
			String City=request.getParameter("city");
			String State=request.getParameter("state");
			int Zip=Integer.parseInt(request.getParameter("zip"));
			String Country=request.getParameter("country");
			//COntact info
			String Residence=request.getParameter("res");
			String Cell=request.getParameter("cell");
			String Fax=request.getParameter("fax");
			
			//Authentication
			String em=request.getParameter("email");
			String pw= request.getParameter("password");
			
			//Company
			String Company = request.getParameter("company");
			String Cust_type=request.getParameter("type");
			
			//Alternate Contact
			String AltName=request.getParameter("acname");
			String Altph=request.getParameter("acph");
			Timestamp date = new Timestamp(new java.util.Date().getTime());	//IMPORTANT- TO RECORD CURRENT DATE
			//Query for signing up
			String sign_up_query="INSERT INTO CUSTOMERS (cust_fname, cust_lname,"
			+ "cust_stadd, cust_city, cust_state, cust_zip, cust_country, cust_res,"
			+ "cust_cell, cust_fax, cust_email, cust_company, cust_type, cust_altname,"
			+ "cust_altph,cust_regdate,passwords) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			
			/*Db Connectivity*/
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
			
			//Initializes query statement.
			PreparedStatement ps = conn.prepareStatement(sign_up_query);
			//Assign values.
			ps.setString(1, FirstName);
			ps.setString(2, LastName);
			ps.setString(3, StreetAdd);
			ps.setString(4, City);
			ps.setString(5, State);
			ps.setInt(6, Zip);
			ps.setString(7, Country);
			ps.setString(8, Residence);
			ps.setString(9, Cell);
			ps.setString(10, Fax);
			ps.setString(11, em);
			ps.setString(12, Company);
			ps.setString(13, Cust_type);
			ps.setString(14, AltName);
			ps.setString(15, Altph);
			ps.setTimestamp(16, date);
			ps.setString(17, pw);
			
			//Execute the Statement
			ps.executeUpdate();
			
			/*Print the output*/
			PrintWriter writer=response.getWriter();
			writer.println("Success!");
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
