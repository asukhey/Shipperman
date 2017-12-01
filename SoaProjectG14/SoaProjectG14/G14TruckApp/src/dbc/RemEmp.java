package dbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class RemEmp
 */
@WebServlet("/RemEmp")
public class RemEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemEmp() {
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
		
		HttpSession session = request.getSession();
		int sessid=Integer.parseInt(session.getAttribute("emp_id").toString());
		try {
			int eid=Integer.parseInt(request.getParameter("e_id"));
			
			
/*=================================VALIDATE THIS==================================================================*/
			/*If you try deleting yourself */
			if(eid==sessid) {
			System.out.println("Don't delete yourself");
			response.sendRedirect("AdminP42_ViewEmp.jsp");
			}
/*===============================================================================================================*/			
			else {
			String del_emp="delete from employees where emp_id = '"+eid+"'";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
			Statement st= conn.createStatement();
			
			int r= st.executeUpdate(del_emp);
			System.out.println("Rows Affected: " +r);
			response.sendRedirect("AdminP42_ViewEmp.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
