package pfe.com;
import java.sql.SQLException;



import com.mysql.jdbc.ResultSet;

import pfe.com.model.Texte;
import pfe.com.model.lettre;
import pfe.com.util.DBInteraction;

public class Main extends DBInteraction{
	

	public Main() {
		super();
		// TODO Auto-generated constructor stub
	}
/*
 * Methode pour incrementer les freq des lettres 
 */

	public void calculer (Texte t)
	{	
		connect();
		for(int i=0;i<t.getTaille();i++)
		{   String sql = null;
		    char c=t.getContenu().charAt(i);
			lettre l =new lettre();
			l.setNom(c);
			l.Type(c);
			
						switch(c)
			 {
			    case 'أ':
			    case 'ؤ':
			    case 'ء':
			    case 'ئ':
			    	sql="Update lettre Set freq=freq+1 where nom='a'";
				        break;
				case 'ب': sql="Update lettre Set freq=freq+1 where nom='b'";
				       break;
				case 'ت': sql="Update lettre Set freq=freq+1 where nom='c'";
				      break;
				case 'ث': sql="Update lettre Set freq=freq+1 where nom='d'";
				break;
				case 'ج': sql="Update lettre Set freq=freq+1 where nom='e'";
				break;
				case 'ح': sql="Update lettre Set freq=freq+1 where nom='f'";
				break;
				case 'خ': sql="Update lettre Set freq=freq+1 where nom='g'";
				break;
				case 'د':sql="Update lettre Set freq=freq+1 where nom='h'";
				break;
				case 'ذ':sql="Update lettre Set freq=freq+1 where nom='i'";
				break;
				case 'ر':sql="Update lettre Set freq=freq+1 where nom='j'";
				break;
				case 'ز':sql="Update lettre Set freq=freq+1 where nom='k'";
				break;
				case 'س':sql="Update lettre Set freq=freq+1 where nom='l'";
				break;
				case 'ش':sql="Update lettre Set freq=freq+1 where nom='m'";
				break;
				case 'ص':sql="Update lettre Set freq=freq+1 where nom='n'";
				break;
				case 'ض':sql="Update lettre Set freq=freq+1 where nom='o'";
				break;
				case 'ظ':sql="Update lettre Set freq=freq+1 where nom='p'";
				break;
				case 'ط':sql="Update lettre Set freq=freq+1 where nom='q'";
				break;
				case 'ع':sql="Update lettre Set freq=freq+1 where nom='r'";
				break;
				case 'غ':sql="Update lettre Set freq=freq+1 where nom='s'";
				break;
				case 'ف':sql="Update lettre Set freq=freq+1 where nom='t'";
				break;
				case 'ق':sql="Update lettre Set freq=freq+1 where nom='u'";
				break;
				case 'ك':sql="Update lettre Set freq=freq+1 where nom='v'";
				break;
				case 'ل':sql="Update lettre Set freq=freq+1 where nom='w'";
				break;
				case 'م':sql="Update lettre Set freq=freq+1 where nom='x'";
				break;
				case 'ن':sql="Update lettre Set freq=freq+1 where nom='y'";
				break;
				case 'ه':sql="Update lettre Set freq=freq+1 where nom='z'";
				break;
				case 'و':sql="Update lettre Set freq=freq+1 where nom='ab'";
				break;
				case 'ي':sql="Update lettre Set freq=freq+1 where nom='ac'";
				break;
				case 'ا':sql="Update lettre Set freq=freq+1 where nom='ad'";
				break; 
				case ' ':i=i+1;
				      while(t.getContenu().charAt(i)==' ')
				      {i++;}
					sql="Update lettre Set freq=freq+1 where nom=' '";
					i=i-1;
				break;
				                                                                
				case '؟':sql="Update lettre Set freq=freq+1 where nom='?'";
				break;                                                           
				case '!':sql="Update lettre Set freq=freq+1 where nom='!'";
				break;
				case '،':sql="Update lettre Set freq=freq+1 where nom=','";//فاصلة
				break;
				case ':':sql="Update lettre Set freq=freq+1 where nom=':'";
				break;
				case 'ـ':
				case '-':
					sql="Update lettre Set freq=freq+1 where nom='-'";
				break;
				case '.':sql="Update lettre Set freq=freq+1 where nom='.'";
				break;
				case '؛':sql="Update lettre Set freq=freq+1 where nom=';'";
				break;
				
				default:sql="Update lettre Set freq=freq+1 where nom='%' ";
					}
			 MAJ(sql);
		}
		disconnect();

	}
	
	/*******************************************************************************/
	public ResultSet freq_safir() throws SQLException
	{
	
		connect();
		String sql="select sum(freq) as s from lettre where safir=1";
		ResultSet rs= (ResultSet) select( sql);
		disconnect();
		return rs;
	}
	
	/**
	 * @return 
	 * @return ********************************************************************************/
	public  ResultSet frequence(String type) throws SQLException
	{
		connect();
		String sql="select sum(freq) from lettre group by "+type+"";
		ResultSet rs= (ResultSet) select(sql);
		disconnect();
		return rs;
	}
	/************************************************************************************/
	 public void Zero()
	 {connect();
	 String sql="Update lettre set freq=0";
	 MAJ(sql);
	 disconnect();}
	
/*********************************************************************************************/
public ResultSet total()
{
	connect();
	String sql="select  * from lettre where nom not in ('%',' ','?','!',':',',','-',';','.')";
	ResultSet rs= (ResultSet) select(sql);
	disconnect();
	return rs;
}
/***********************************************************************************************/
public ResultSet chin()
{
	connect();
	String sql ="select freq from lettre where nom='m'";
	ResultSet res=(ResultSet) select(sql);
	disconnect();
	return res;
	}
/***************************************************************************************************/
public ResultSet chafawi()
{
connect();
String sql="select sum(freq) from lettre where makh='chafawi'";
ResultSet res=(ResultSet) select(sql);
disconnect();
return res;
}
/*****************************************************************************************************/
public ResultSet freq_total()
{
connect();
String sql="select sum(freq) from lettre where nom not in ('%',' ','?','!',':',',','-',';','.')";
ResultSet res=(ResultSet) select(sql);
disconnect();
return res;
}

}
