package com.PPP.Beans;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;



public class GestionSQL {
	
	private String Driver= "com.mysql.cj.jdbc.Driver";
	private String utilisateur="SUD";
	private String motDePasse="Mysql2019";
	private String url="jdbc:mysql://localhost:3306/ppp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private  Connection connexion ;
	private  Statement statement ;
	private  ResultSet resultat ;
	private boolean bug=true;
	private List<Client> clients= new ArrayList<Client>();
	private int xetat;
	public void connectivity() throws SQLException {
		 
		try {
          
            Class.forName( Driver );
           
        } catch ( ClassNotFoundException e ) {
            System.out.println( "Erreur lors du chargement : le driver n'a pas été trouvé dans le classpath ! <br/>"
                    + e.getMessage() );
            bug=false;
        }
		  System.out.println( "Connexion à la base de données..." );
          connexion = DriverManager.getConnection( url, utilisateur, motDePasse );
          System.out.println( "Connexion réussie !" );
          statement = connexion.createStatement();
          if(connexion!=null) {
        	  if(bug==false) {
        		  System.out.println("la connexion n'est pas reausit");
        	  }else {
        		  System.out.println("la connexion ets ruessi");
        	  }
          } else {
        	  System.out.println("la connexion n'est pas ruesit");
          }
		
	}
	public void insert(String nom,String prenom,String email,String motdepasse,String user_name) throws SQLException {
		connectivity();
		if(statement!=null) {
			 try {
	            	int statut = statement.executeUpdate( "INSERT INTO client (nom, prenom, email,mot_de_passe,image,description,username) VALUES ('"+nom+"','"+prenom+"','"+email+"','"+motdepasse+"','null','null','"+user_name+"');" );
	                int statuttime=statement.executeUpdate("UPDATE client  SET date_inscription =SYSDATE() WHERE username='"+user_name+"';");
	            	System.out.println( "Résultat de la requête d'insertion : " + statut + "." );
	                xetat=statut;
	                if(xetat!=0) {
	                	System.out.println("l'insertion faites coectes");
	                }else {
	                	System.out.println("l'insertion n'est pas corecte");
	                }
	                
	               
	            } catch (SQLException e) {
	            	System.out.println("la donne que vous essayez de l'entrer est deja exister dans database");
	            }
		}else {
			System.out.println("Check you connectivity if you wwant to sand stuf");
		}
		
		System.out.println(xetat +"sssssssssssssssss");
		
	}
	public List<Client> read() throws SQLException {
		 connectivity();
		if(statement!=null) {
			
			resultat = statement.executeQuery( "SELECT id, nom, prenom, email,mot_de_passe,image,description,username FROM client;" );
			
	        System.out.println( "Requête \"SELECT id, nom, prenom FROM client;\" effectuée !" );
	        while ( resultat.next() ) {
	        	
                int iduser=resultat.getInt("id");
                String nameuser=resultat.getString("nom");
                String lastnameuser=resultat.getString("prenom");
                String email=resultat.getString("email");
                String mot_de_passe=resultat.getString("mot_de_passe");
                String description=resultat.getString("description");
                String username=resultat.getString("username");
                
                
                
                Client client=new Client(nameuser,lastnameuser,email,mot_de_passe,username);
                clients.add(client);
              
                System.out.println( "Données retournées par la requête : id = " + iduser + ", nom = " + nameuser + "prenom="+lastnameuser+"." );
            }
			
		}else {
			System.out.println("check your connectivity if you want to sand stuff");
		}
		return clients;
		
	}
	
	public List<Client> ReadAll() throws SQLException{
		 connectivity();
			if(statement!=null) {
				
				resultat = statement.executeQuery( "SELECT id, nom, prenom, email,mot_de_passe,image,description,username FROM client;" );
				
		        System.out.println( "Requête \"SELECT id, nom, prenom FROM client;\" effectuée !" );
		        while ( resultat.next() ) {
		        	
	                int iduser=resultat.getInt("id");
	                String nameuser=resultat.getString("nom");
	                String lastnameuser=resultat.getString("prenom");
	                String email=resultat.getString("email");
	                String mot_de_passe=resultat.getString("mot_de_passe");
	                String description=resultat.getString("description");
	                String username=resultat.getString("username");
	                
	                
	                
	                Client client=new Client(nameuser,lastnameuser,email,mot_de_passe,username,description);
	                clients.add(client);
	              
	                System.out.println( "Données retournées par la requête : id = " + iduser + ", nom = " + nameuser + "prenom="+lastnameuser+"." );
	            }
				
			}else {
				System.out.println("check your connectivity if you want to sand stuff");
			}
			return clients;
	}
	
	public void Update_String(String username,String info,int i) throws SQLException {
		if(i==1) {
			
		}else if(i==2){
			connectivity();
			if(statement!=null) {
				 try {
		            	
		                int statut=statement.executeUpdate("UPDATE client  SET nom ='"+info+"' WHERE username='"+username+"';");
		            	System.out.println( "Résultat de la requête d'insertion : " + statut + "." );
		                xetat=statut;
		                if(xetat!=0) {
		                	System.out.println("l'insertion faites coectes");
		                }else {
		                	System.out.println("l'insertion n'est pas corecte");
		                }
		                
		               
		            } catch (SQLException e) {
		            	System.out.println("la donne que vous essayez de l'entrer est deja exister dans database");
		            }
			}else {
				System.out.println("Check you connectivity if you wwant to sand stuf");
			}
			
			System.out.println(xetat +"sssssssssssssssss");
			
		}else if(i==3){
			connectivity();
			if(statement!=null) {
				 try {
		            	
		                int statut=statement.executeUpdate("UPDATE client  SET prenom ='"+info+"' WHERE username='"+username+"';");
		            	System.out.println( "Résultat de la requête d'insertion : " + statut + "." );
		                xetat=statut;
		                if(xetat!=0) {
		                	System.out.println("l'insertion faites coectes");
		                }else {
		                	System.out.println("l'insertion n'est pas corecte");
		                }
		                
		               
		            } catch (SQLException e) {
		            	System.out.println("la donne que vous essayez de l'entrer est deja exister dans database");
		            }
			}else {
				System.out.println("Check you connectivity if you wwant to sand stuf");
			}
			
			System.out.println(xetat +"sssssssssssssssss");
			
		}else if(i==4){
			connectivity();
			if(statement!=null) {
				 try {
		            	
		                int statut=statement.executeUpdate("UPDATE client  SET email ='"+info+"' WHERE username='"+username+"';");
		            	System.out.println( "Résultat de la requête d'insertion : " + statut + "." );
		                xetat=statut;
		                if(xetat!=0) {
		                	System.out.println("l'insertion faites coectes");
		                }else {
		                	System.out.println("l'insertion n'est pas corecte");
		                }
		                
		               
		            } catch (SQLException e) {
		            	System.out.println("la donne que vous essayez de l'entrer est deja exister dans database");
		            }
			}else {
				System.out.println("Check you connectivity if you wwant to sand stuf");
			}
			
			System.out.println(xetat +"sssssssssssssssss");
			
		}else if(i==5){
			connectivity();
			if(statement!=null) {
				 try {
		            	
		                int statut=statement.executeUpdate("UPDATE client  SET mot_de_passe ='"+info+"' WHERE username='"+username+"';");
		            	System.out.println( "Résultat de la requête d'insertion : " + statut + "." );
		                xetat=statut;
		                if(xetat!=0) {
		                	System.out.println("l'insertion faites coectes");
		                }else {
		                	System.out.println("l'insertion n'est pas corecte");
		                }
		                
		               
		            } catch (SQLException e) {
		            	System.out.println("la donne que vous essayez de l'entrer est deja exister dans database");
		            }
			}else {
				System.out.println("Check you connectivity if you wwant to sand stuf");
			}
			
			System.out.println(xetat +"sssssssssssssssss");
			
			
			
		}else if(i==6){
			connectivity();
			if(statement!=null) {
				 try {
		            	
		                int statut=statement.executeUpdate("UPDATE client  SET mot_de_passe ='"+info+"' WHERE username='"+username+"';");
		            	System.out.println( "Résultat de la requête d'insertion : " + statut + "." );
		                xetat=statut;
		                if(xetat!=0) {
		                	System.out.println("l'insertion faites coectes");
		                }else {
		                	System.out.println("l'insertion n'est pas corecte");
		                }
		                
		               
		            } catch (SQLException e) {
		            	System.out.println("la donne que vous essayez de l'entrer est deja exister dans database");
		            }
			}else {
				System.out.println("Check you connectivity if you wwant to sand stuf");
			}
			
			System.out.println(xetat +"sssssssssssssssss");
			
		}else if(i==7){
			connectivity();
			if(statement!=null) {
				 try {
		            	
		                int statut=statement.executeUpdate("UPDATE client  SET description ='"+info+"' WHERE username='"+username+"';");
		            	System.out.println( "Résultat de la requête d'insertion : " + statut + "." );
		                xetat=statut;
		                if(xetat!=0) {
		                	System.out.println("l'insertion faites coectes");
		                }else {
		                	System.out.println("l'insertion n'est pas corecte");
		                }
		                
		               
		            } catch (SQLException e) {
		            	System.out.println("la donne que vous essayez de l'entrer est deja exister dans database");
		            }
			}else {
				System.out.println("Check you connectivity if you wwant to sand stuf");
			}
			
			System.out.println(xetat +"sssssssssssssssss");
			
		}else if(i==8){
			
		}else if(i==9){
			
		}
		
	}
	
	public void insertimage(String username,String imagepath) throws IOException {
		try {
			connectivity();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		File imagefile = null;
		if(statement!=null) {
			String filePart = imagepath;
			 
			 if (filePart != null) {
		            
				  imagefile= new File(filePart);
			 }
			 try {
				 if(imagefile!=null) {
					 int statut=statement.executeUpdate("UPDATE client  SET image ='"+imagefile+"' WHERE username='"+username+"';");
				 }
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			 
		}
		
	}
	
	
	
	public int getxetat() {
		return xetat;
	}

}
