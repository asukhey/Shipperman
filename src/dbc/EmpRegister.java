package dbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmpRegister
 */
@WebServlet("/EmpRegister")
public class EmpRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpRegister() {
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
			
				/*accept data from the form*/
				String FirstName=request.getParameter("empfn");
				String LastName=request.getParameter("empln");
				String job=request.getParameter("empjt");
				
				String byear= request.getParameter("empby");
				String bmonth= request.getParameter("empbm");
				String bday= request.getParameter("empbd");
				String bdate=byear+"-"+bmonth+"-"+bday;
				
				String hyear= request.getParameter("emphy");
				String hmonth= request.getParameter("emphm");
				String hday= request.getParameter("emphd");
				String hdate= hyear+"-"+hmonth+"-"+hday;
				String ssn= request.getParameter("empssn");
				String dln= request.getParameter("empdln");
				
				//Billing Address
				String StreetAdd=request.getParameter("empstadd");
				String City=request.getParameter("empcity");
				String State=request.getParameter("empstate");
				String Zip=request.getParameter("empzip");
				String Country=request.getParameter("empcountry");
				
				//COntact info
				String res=request.getParameter("empres");
				String cell=request.getParameter("empcell");
				String fax=request.getParameter("empfax");
				double sal=Double.parseDouble(request.getParameter("empsal"));
				//Authentication
				String em=request.getParameter("empemail");
				String pw= request.getParameter("emppassword");
				
				String emp_add="insert into employees(emp_fname,emp_lname,emp_jobtitle,"
						+ "emp_stadd,emp_city,emp_state,emp_zip,emp_country,"
						+ "emp_res,emp_cell,emp_fax,emp_ssn,emp_dln,emp_bday,"
						+ "emp_hiredate,emp_salary,email,password) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				
				/*Db Connectivity*/
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soag14","root","root");
				
				//Initializes query statement.
				PreparedStatement ps = conn.prepareStatement(emp_add);
				ps.setString(1, FirstName);
				ps.setString(2, LastName);
				ps.setString(3, job);
				ps.setString(4, StreetAdd);
				ps.setString(5, City);
				ps.setString(6, State);
				ps.setString(7, Zip);
				ps.setString(8, Country);
				ps.setString(9, res);
				ps.setString(10, cell);
				ps.setString(11, fax);
				ps.setString(12, ssn);
				ps.setString(13, dln);
				ps.setString(14, bdate);
				ps.setString(15, hdate);
				ps.setDouble(16, sal);
				ps.setString(17, em);
				ps.setString(18, pw);
				ps.executeUpdate();
				
				response.sendRedirect("AdminP4Employees.jsp");
			}catch(Exception e) {
				e.printStackTrace();
			}

		
		
		
	}

}
