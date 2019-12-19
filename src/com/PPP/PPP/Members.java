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

/**
 * Servlet implementation class members
 */
@WebServlet("/Members")
public class Members extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String fieldimage="image";
	private String fielddescription="description";
	private Login lg;
	private GestionSQL gs;
	private List<Client> clients;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Members() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		lg=new Login();
		gs=new GestionSQL();
		boolean clientisconnected=lg.getclientisconnected();
		request.setAttribute("clientisconnected", clientisconnected);
		try {
			clients=gs.ReadAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(clients.get(0).getemail());
		request.setAttribute("clients", clients);
		
		
		this.getServletContext().getRequestDispatcher("/jsp_projet/members.jsp").forward(request, response);
		System.out.println("test!!!!!!!!!!!!");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		lg=new Login();
		gs=new GestionSQL();
		boolean clientisconnected=lg.getclientisconnected();
		request.setAttribute("clientisconnected", clientisconnected);
		this.getServletContext().getRequestDispatcher("/jsp_projet/members.jsp").forward(request, response);
		System.out.println("test!!!!!!!!!!!!");
	}

}
