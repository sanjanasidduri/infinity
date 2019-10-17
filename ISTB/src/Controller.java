

import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String billType=request.getParameter("billType");
		//String stbType=request.getParameter("stbType");
		//HttpSession session=request.getSession();
		HttpSession session = request.getSession(true);
		
		String exe=request.getParameter("buttonName");
		System.out.println(""+exe);
		if(exe.contentEquals("button1")) {
		System.out.println("logic object created");
		try {
			inventory_details sp= new inventory_details();
			String stb_type=request.getParameter("stbType");
			String bill_type= request.getParameter("billType");
			System.out.println("entered try block");
			
			session.setAttribute("bill_type",  bill_type);
			session.setAttribute("stb_type",  stb_type);
			System.out.println("type"+session.getAttribute("bill_type").toString());
			int x=Integer.parseInt(session.getAttribute("cust_id").toString());
			if(sp.check(x)) {
				System.out.println("if block");
				List<List<String>> emp_list;
				
				emp_list=sp.search_inventory(stb_type,bill_type);
				request.setAttribute("empList",emp_list);
				getServletContext().getRequestDispatcher("/ViewSearch.jsp").forward(request, response);
			}
			else {
				System.out.println("else block");
				getServletContext().getRequestDispatcher("/Error.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	       }
		
		       
		 else if(exe.contentEquals("button2"))
		       {
				System.out.println("start");
				
				try {
					logicbill lg=new logicbill();
					
					List<String> al1;
					al1=lg.bill_inventory(session.getAttribute("stb_type").toString(),session.getAttribute("bill_type").toString(),Integer.parseInt(session.getAttribute("cust_id").toString()));
					session.setAttribute("cust_name", al1.get(0));
					System.out.println(session.getAttribute("cust_name").toString());
					request.setAttribute("al1",al1);
					getServletContext().getRequestDispatcher("/bill.jsp").forward(request, response);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		       }
		 else if(exe.contentEquals("button3")) {
			 try {
					login l1 = new login();
				    String idd = request.getParameter("Username");
				    System.out.println(idd);
					String password = request.getParameter("Password");
					session.setAttribute("cust_id", idd);
					boolean exist = l1.loginup(idd,password);
					if(exist)
					{
						getServletContext().getRequestDispatcher("/index.html").forward(request, response);
						System.out.println("im in login");
					}
					else getServletContext().getRequestDispatcher("/Error.jsp").forward(request, response);
					}
					
					 catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					
				}
//		 else if(exe.contentEquals("Logout")) {
//			 System.out.println("Im in logout.");
//			 getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
//			 System.out.println("Im in logout second statement .");
//			 session.invalidate();
//		 }
		 }
				
			
				
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
