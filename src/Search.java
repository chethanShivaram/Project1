
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Search() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print(
				"<table ><tr><th>Employee id</th><th>Employee Name</th><th>Date of joining</th><th>Date of Birth</th><th>Department</th><th>Desgination</th>");
		String v1 = request.getParameter("search");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/world", "root", "chethanbs@2610");
			String q = ("select * from reg_table where emp_name like '%" + v1 + "%' or emp_id like '%" + v1
					+ "%' or emp_desg like '" + v1 + "%' or emp_dept like '" + v1 + "%' ");
			// String q1="select * from reg_table where emp_name=?";
			PreparedStatement pst = con.prepareStatement(q);
			// pst.setString(1, v1);
			ResultSet rs = pst.executeQuery();
			List<Employee> empList = new ArrayList<>();
			while (rs.next()) {
				int emp_id = rs.getInt("emp_id");
				String emp_name = rs.getString("emp_name");
				Date doj = rs.getDate("doj");
				Date dob = rs.getDate("doj");
				String emp_dept = rs.getString("emp_dept");
				String emp_desg = rs.getString("emp_desg");
				Employee employee = new Employee(emp_id, emp_name, doj, dob, emp_desg, emp_dept);
				empList.add(employee);

				/**
				 * out.print("<tr><td>"); out.println(rs.getInt(1)); out.print(
				 * "</td>"); out.print("<td>"); out.print(rs.getString(2));
				 * out.print("</td>"); out.print("<td>");
				 * out.print(rs.getDate(3)); out.print("</td>"); out.print(
				 * "<td>"); out.print(rs.getDate(4)); out.print("</td>");
				 * out.print("<td>"); out.print(rs.getString(5)); out.print(
				 * "</td>"); out.print("<td>"); out.print(rs.getString(6));
				 * out.print("</td>"); out.print("</tr>");
				 **/
			}
			request.setAttribute("empList", empList);
			RequestDispatcher rd = request.getRequestDispatcher("viewsearch.jsp");
			rd.forward(request, response);

		} catch (Exception e) {
			System.out.println("search catch block");
			e.printStackTrace();
		}
	}

}
