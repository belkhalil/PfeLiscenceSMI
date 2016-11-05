package pfe.com.util;
import java.sql.*;


public class DBInteraction {
	static Connection con ;
	static Statement st;
	ResultSet res;
	static String url;
	 public DBInteraction()
	 {
		 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 url="jdbc:mysql://localhost/pfe";
			 
		 }catch(ClassNotFoundException e)
		 {
			e.printStackTrace(); 
		 }
	 }
public static void connect()
       {
       try
           {
	con=DriverManager.getConnection(url,"root","");
	st=con.createStatement();
	
          }catch(SQLException e)
          {
	e.printStackTrace();
          }
        }
public static void disconnect()
   {
try{
	con.close();
   }
catch(SQLException e)
    {
	e.printStackTrace();
	}
   }
public ResultSet select(String sql)
{
	try{
		res=st.executeQuery(sql);
				
	}catch(SQLException e){
		e.printStackTrace();
	}
	return res;
	}
public static int MAJ(String sql)
{
	int nb=0;
	try{
		nb=st.executeUpdate(sql);
	}catch(SQLException e )
	{
		e.printStackTrace();
	}
	return nb;
	}
public boolean next()
{
	try{
		return res.next();
	}catch(SQLException e)
	{e.printStackTrace();}
	return false;
	}
}

