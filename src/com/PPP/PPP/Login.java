package com.PPP.PPP;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import com.PPP.Beans.Client;
import com.PPP.Beans.GestionSQL;





/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name;
	private String lastname;
	private String email;
	
	private String password;
	private String username;
	private String cfpassword;
	private String fieldname="nom";
	private String fieldlastname="prenom";
	private String fieldusername="username";
	private String fieldemail="email";
	private String fieldpassword="passworld";
	private String fieldcfpassword="cfpassworld";
	
	
	private String usernamelogin;
	private String emaillogin;
	private String passwordlogin;
	private String fieldnamelogin="usernamelogin";
	private String fieldemaillogin="emaillogin";
	private String fieldpasswordlogin="passwordlogin";
	
	
	private String image;
	private String decription;
	private String fieldimage="image";
	private String fielddescription="description";
	
	private static List<Client> clients=new ArrayList<Client>();   
	
	
	private static boolean clientisconnect=false;
	private static boolean klewelcome=false;
	private static Client clientnow;
	private static int klelogin;
	private static int kleregistre;
	
	private String action="login"; 
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
		System.out.println(clientisconnect);
		System.out.println(klelogin);
	
		
		boolean clientisconnected=clientisconnect;
		request.setAttribute("clientisconnected", clientisconnected);
		
		Login lg=new Login();
		GestionSQL gs=new GestionSQL();
		boolean klewelcome=lg.getklewelcome();
		Client clientnow=lg.getclientnow();
		System.out.println("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
		if(klewelcome==true) {
			
			String image=request.getParameter(fieldimage);
			String decription=request.getParameter(fielddescription);
			System.out.println(image);
			System.out.println(image+"iiiiiiiiiimmmmmmmmmmmmmm");
			
			if(decription!=null) {
				System.out.println(klewelcome+"welcoooooom");
				System.out.println(decription+"welcoooooom");
				
				
				System.out.println(clientnow.getuser_name()+"welcoooooom");
				
				//don't forget adding image
				
				try {
					gs.Update_String(clientnow.getuser_name(), decription, 7);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
				
			}
			
			if(image!=null && (!image.equals(""))) {
				gs.insertimage(clientnow.getuser_name(), image);
			}
			
			klewelcome=false;
			
		}
		
		
		
		if(clientisconnect) {
			
			if(klelogin==0) {
				System.out.println("looooooog ouuuuuuuuuut");
				this.getServletContext().getRequestDispatcher("/jsp_projet/logout.jsp").forward(request, response);
			}
			
		}else {
			this.getServletContext().getRequestDispatcher("/jsp_projet/login.jsp").forward(request, response);
			System.out.println("normale");
		}
			
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		GestionSQL gs=new GestionSQL();
		System.out.println(clientisconnect);

		boolean clientisconnected=clientisconnect;
		request.setAttribute("clientisconnected", clientisconnected);
		
		
		
		 try {
			gs.connectivity();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("vous pouvez pas etre connecter");
		}
		
		
		name=request.getParameter(fieldname);
		lastname=request.getParameter(fieldlastname);
		email=request.getParameter(fieldemail);
		password=request.getParameter(fieldpassword);
		username=request.getParameter(fieldusername);
		cfpassword=request.getParameter(fieldcfpassword);
		usernamelogin=request.getParameter(fieldnamelogin);
		emaillogin=request.getParameter(fieldemaillogin);
		passwordlogin=request.getParameter(fieldpasswordlogin);
		
		
		System.out.println(name+" --"+lastname+" --"+passwordlogin+"rrrrrrrrrr");
		System.out.println(emaillogin+" --"+usernamelogin+"llllllllllll");
		if(name!=null&&lastname!=null&&email!=null&&email!=null &&password!=null&&cfpassword!=null&&username!=null) {
			if((!name.equals("")) && (!lastname.equals("")) && (!email.equals(""))&& (!password.equals("")) && password.equals(cfpassword) && (!username.equals(""))) {
				
				Client client=new Client(name,lastname,email,password,username);
				clientnow=client;
				clientisconnect=true;
				klelogin=1;
				kleregistre=1;
				request.setAttribute("clientisconnected", clientisconnect);
				System.out.println(client.getname()+" "+client.getlastname()+"debuuuuuuuuuut");
				try {
					gs.insert(client.getname(), client.getlastname(),client.getemail(),client.getmotdepasse(),client.getuser_name());
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}else if(usernamelogin!=null&&emaillogin!=null&&passwordlogin!=null) {
			if((!usernamelogin.equals("")) && (!emaillogin.equals("")) &&(!passwordlogin.equals(""))) {
				try {
					System.out.println("traitement login");
					clients=gs.read();
					int i=0;
					while(i<clients.size()) {
						if(((clients.get(i).getuser_name()).equals(usernamelogin))) {
							break;
						}
						i++;
					}
					System.out.println(i+"iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
					if(i<clients.size()) {
						if((clients.get(i).getmotdepasse()).equals(passwordlogin)) {
							System.out.println("goooooooooooooooooooooooooooood");
							clientnow=clients.get(i);
							clientisconnect=true;
							action="welcome";
							klelogin=1;
							request.setAttribute("action", action);
						}else {
							System.out.println("7xoooooma 3lik");
						}
						
					}else {
						System.out.println("7xoooooma 3lik");
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		
		/*if(klewelcome==true) {
			image=request.getParameter(fieldimage);
			decription=request.getParameter(fielddescription);
			System.out.println(klewelcome+"welcoooooom");
			System.out.println(decription+"welcoooooom");
			System.out.println(clientnow.getuser_name()+"welcoooooom");
			
			//don't forget adding image
			
			try {
				gs.Update_String(clientnow.getuser_name(), decription, 7);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			klewelcome=false;
		}
		*/
		System.out.println(action);
		request.setAttribute("clientnow", clientnow);
		if(clientisconnect) {
			if(klelogin==0) {
				clientisconnect=false;
				request.setAttribute("clientisconnected",clientisconnect);
				this.getServletContext().getRequestDispatcher("/jsp_projet/login.jsp").forward(request, response);
				
				
			}else {
				if(kleregistre==1) {
					if(gs.getxetat()==1) {
						request.setAttribute("clientisconnected",clientisconnect);
						this.getServletContext().getRequestDispatcher("/jsp_projet/Welcome.jsp").forward(request, response);
						klewelcome=true;
					}else {
						request.setAttribute("clientisconnected",clientisconnect);
						this.getServletContext().getRequestDispatcher("/jsp_projet/login.jsp").forward(request, response);
					}
					
				}else {
					request.setAttribute("clientisconnected",clientisconnect);
					this.getServletContext().getRequestDispatcher("/jsp_projet/index.jsp").forward(request, response);
				}
				klelogin=0;
				kleregistre=0;
			}
			
		}else {
			request.setAttribute("clientisconnected",clientisconnect);
			this.getServletContext().getRequestDispatcher("/jsp_projet/login.jsp").forward(request, response);
		}
		
		
		
		System.out.println(clientisconnect);
		
	}
	
	public Client getclientnow() {
		if (clientisconnect==false) {
			return null;
		}else {
			return clientnow;
		}
		
	}
	public boolean getklewelcome() {
		return klewelcome;
	}
	public boolean getclientisconnected() {
		return clientisconnect;
	}
	public List<Client> getclients (){
		return clients;
	}

}

