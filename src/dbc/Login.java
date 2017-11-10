package dbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
			String dbEmail=null;
			String dbPassword=null;
			PrintWriter out=response.getWriter();
			String em=request.getParameter("email");
			String pw= request.getParameter("password");
			String login_query="SELECT * FROM CUSTOMERS WHERE CUST_EMAIL=? AND PASSWORDS=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
			PreparedStatement ps= conn.prepareStatement(login_query);
			ps.setString(1, em);
			ps.setString(2, pw);
			ResultSet rs= ps.executeQuery();	//executeQuery for displaying data and executeUpdate for inserting
			
			/*The 2 variables below help cycling through db to get a match*/
			
			while(rs.next()) {
				dbEmail=rs.getString("cust_email");
				dbPassword=rs.getString("passwords");
			}
			
			if(em.equals(dbEmail)&&pw.equals(dbPassword)) {
				out.print("Welcome: "+em);
			}
			else {
		
				RequestDispatcher rd=request.getRequestDispatcher("Page1_Login.jsp");
				rd.include(request, response);
				//Learn how to add additional info
				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
