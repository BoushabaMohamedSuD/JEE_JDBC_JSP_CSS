package com.PPP.PPP;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.PPP.Beans.Client;
import com.PPP.Beans.GestionSQL;
import com.sun.glass.events.GestureEvent;
import com.sun.org.apache.bcel.internal.generic.GETSTATIC;

/**
 * Servlet implementation class Welcome
 */
@WebServlet("/Welcome")
public class Welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Client clientnow;
	private Login login;
	private GestionSQL gs;
	private String field_description="description";
	private String field_image="image";
	private String field_name="name";
	private String field_lastname="lastname";
	private String field_password="password";
	private String image;
	private String description;
	private String name;
	private String lastname;
	private String password;
	private boolean clientisconnected;
	private List<Client> clients;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Welcome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		login =new Login();
		clientnow=login.getclientnow();
		if(clientnow!=null) {
			request.setAttribute("clientnow", clientnow);
		}
		boolean clientisconnected=login.getclientisconnected();
		request.setAttribute("clientisconnected", clientisconnected);
		
		
		
		 
		this.getServletContext().getRequestDispatcher("/jsp_projet/welcomcnt.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("post");
		
		image=request.getParameter(field_image);
		description=request.getParameter(field_description);
		name=request.getParameter(field_name);
		lastname=request.getParameter(field_lastname);
		password=request.getParameter(field_password);
		
		clientnow=login.getclientnow();
		clientisconnected=login.getclientisconnected();
		gs=new GestionSQL();
		if(clientisconnected) {
			System.out.println(description);
			System.out.println(clientnow.getuser_name()); 
			
			if(description!=null) {
				try {
					gs.Update_String(clientnow.getuser_name(), description, 7);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(name!=null && (!name.equals(""))) {
				try {
					gs.Update_String(clientnow.getuser_name(), name, 2);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(lastname!=null && (!lastname.equals(""))) {
				try {
					gs.Update_String(clientnow.getuser_name(), lastname, 3);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(password!=null && (!password.equals(""))) {
				try {
					gs.Update_String(clientnow.getuser_name(), password, 5);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		
		boolean clientisconnected=login.getclientisconnected();
		request.setAttribute("clientisconnected", clientisconnected);
		System.out.println("pooooooooooossssssssssttttttttt");
		
		if(clientnow!=null) {
			request.setAttribute("clientnow", clientnow);
		}
		
		
		try {
			clients=gs.ReadAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(clients.get(0).getemail());
		request.setAttribute("clients", clients);
		
		
		this.getServletContext().getRequestDispatcher("/jsp_projet/members.jsp").forward(request, response);
	}

}
