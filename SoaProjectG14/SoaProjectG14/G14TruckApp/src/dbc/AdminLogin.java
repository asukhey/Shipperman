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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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
			String name=null;
			String job_title=null;
			int id=0;
			PrintWriter out=response.getWriter();	
			String em=request.getParameter("email");
			String pw= request.getParameter("password");
		
			String login_query="SELECT * FROM EMPLOYEES WHERE EMAIL=? AND PASSWORD=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
			PreparedStatement ps= conn.prepareStatement(login_query);
			ps.setString(1, em);
			ps.setString(2, pw);
			ResultSet rs= ps.executeQuery();	//executeQuery for displaying data and executeUpdate for inserting
			
			/*Loop for searching for a row that has same email and password entered by user, searches for id and name as well*/
			
			while(rs.next()) {
				dbEmail=rs.getString("email");
				dbPassword=rs.getString("password");
			    id = rs.getInt("emp_id");
			    name = rs.getString("emp_fname");
			    job_title = rs.getString("emp_jobtitle");
			}
			
			/*If creds are correct- accept id and first name as sessions*/
			
			if(em.equals(dbEmail)&&pw.equals(dbPassword)&&job_title.equalsIgnoreCase("Admin")) {
				/*RequestDispatcher rd=request.getRequestDispatcher("Page3_Profile.jsp");
				rd.include(request, response);*/
				HttpSession session = request.getSession();
				session.setAttribute("emp_fname", name);
				session.setAttribute("emp_id", id);
				response.sendRedirect("AdminP2_Profile.jsp");
				
			}
			
			else {
				
				//redirects to login page if creds are incorrect
				RequestDispatcher rd=request.getRequestDispatcher("AdminP1_Login.jsp");
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
