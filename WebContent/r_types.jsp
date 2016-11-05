
 <%@page import="java.io.File"%>
<%@page import="pfe.com.Graphe"%>
<%@page import="java.io.OutputStream"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="pfe.com.Main"%>
<%@page import="java.sql.SQLException"%>
<%@page import="pfe.com.model.lettre"%>
<%@page import="com.mysql.jdbc.ResultSet"%>
 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>

<%
String p=request.getParameter("btn");
Main m=new Main(); Graphe c=new Graphe(); int tab [] =new int [4];
ResultSet tot=m.freq_total();
tot.next();
int t=tot.getInt(1);
if(p.equals("أصوات الصفير"))
		{
	
			try {
				ResultSet s=m.freq_safir();
				lettre l=new lettre();
				s.next();
				l.setFreq(s.getInt(1));
				float x=(l.getFreq()/t)*100;
				float y=100-x;
				JFreeChart chart = c.safir_g(x,y);
				int width = 600;    int height = 500;
				OutputStream outputStream = response.getOutputStream();
				ChartUtilities.writeChartAsJPEG(outputStream, chart, width, height);
				try 
{ 
    // Converting the PieChart into a PNG image 
  // File image=new File("monChart.jpg");
   //ChartUtilities.saveChartAsJPEG(image, chart,800, 600);  
   //out.println(image.getAbsolutePath());
   %>
<center>  
<h1> <%out.println(l.getFreq()); %><label>عدد حروف الصفير</label> </h1>
  <h1> <%out.println(t); %><label>العدد الاجمالي للحروف</label></h1>
   </center>
 <center> <img src="C:\Users\brothers\Desktop\eclipse\monChart.jpg"  > </center>
   <%
} 
catch (java.io.IOException exc) 
{ 
    System.err.println("Error writing image to file"); 
}
			
				} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
else if (p.equals("المجهور /المهموس /اللين"))
{
 try { 
		ResultSet r=m.frequence("majh") ;
		r.next();
		int i=0;
		while(r.next()){
    		  tab[i]=r.getInt(1);    i=i+1;
    	               }
		int x = tab[0];    int y = tab[1];     int z =tab[2];
		JFreeChart chart = c.mahmous_g(x,y,z);
		int width = 600;    int height = 500;
		//OutputStream outputStream = response.getOutputStream();
		//ChartUtilities.writeChartAsJPEG(outputStream, chart, width, height);
						try 
{ 
    // Converting the PieChart into a PNG image 
   File image=new File("monChart.png");
   ChartUtilities.saveChartAsPNG(image, chart, 800, 600);  
   //out.println(image.getAbsolutePath());
   %>
 <center> <img src="C:\Users\brothers\Desktop\eclipse\monChart.png"  > </center>
   <%
} 
catch (java.io.IOException exc) 
{ 
    System.err.println("Error writing image to file"); 
}
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
else if (p.equals("أصوات حسب المخارج"))
{
	
	try {
		ResultSet r=m.frequence("makh") ;
		r.next();
		int i=0;
		
		while(r.next())
		      {
    		  tab[i]=r.getInt(1);    i=i+1;
    	      }         
        int x = tab[0];    int y = tab[1];     int z =tab[2];
		JFreeChart chart = c.makharej_g(x,y,z);
		int width = 600;    int height = 500;
		//OutputStream outputStream = response.getOutputStream();
		//ChartUtilities.writeChartAsJPEG(outputStream, chart, width, height);
						try 
{ 
    // Converting the PieChart into a PNG image 
   File image=new File("monChart.png");
   ChartUtilities.saveChartAsPNG(image, chart, 800, 600);  
   //out.println(image.getAbsolutePath());
   %>
 <center> <img src="C:\Users\brothers\Desktop\eclipse\monChart.png"  > </center>
   <%
} 
catch (java.io.IOException exc) 
{ 
    System.err.println("Error writing image to file"); 
}
	    }catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	    }	
        }
else if (p.equals("أصوات حسب الشدة"))
        {
	try {
		ResultSet r=m.frequence("cheda") ;
		r.next();
		int j=0;
		while(r.next()){
    		  tab[j]=r.getInt(1); j++;
    	               }
		int x = tab[0];    int y = tab[1];     int z =tab[2]; int e=tab[3];
		JFreeChart chart = c.cheda_g(x,y,z,e);
		int width = 600;    int height = 500;
		//OutputStream outputStream = response.getOutputStream();
		// ChartUtilities.writeChartAsJPEG(outputStream, chart, width, height);
						try 
{ 
    // Converting the PieChart into a PNG image 
   File image=new File("monChart.png");
   ChartUtilities.saveChartAsPNG(image, chart, 800, 600);  
   //out.println(image.getAbsolutePath());
   %>
 <center> <img src="C:/Users/brothers/Desktop/eclipse/monChart.png"  > </center>
   <%
} 
catch (java.io.IOException exc) 
{ 
    System.err.println("Error writing image to file"); 
}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
}
else if (p.equals("أصوات الشين"))
{
	try {
		lettre po=new lettre();
		ResultSet r=m.chin() ;
		while(r.next()){
			po.setFreq(r.getInt(1));
			
			float x=  (po.getFreq()/t)*100;
    		float y =100-x;
    		JFreeChart chart = c.chin_g(x,y);
    		int width = 600;    int height = 500;
    		//OutputStream outputStream = response.getOutputStream();
    		// ChartUtilities.writeChartAsJPEG(outputStream, chart, width, height);
    						try 
{ 
    // Converting the PieChart into a PNG image 
   File image=new File("monChart.png");
   ChartUtilities.saveChartAsPNG(image, chart, 800, 600);  
   //out.println(image.getAbsolutePath());
   %>
 <center> <img src="C:\Users\brothers\Desktop\eclipse\monChart.png"  > </center>
   <%
} 
catch (java.io.IOException exc) 
{ 
    System.err.println("Error writing image to file"); 
}
    	               }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}		
}
else if (p.equals("الأصوات الشفوية"))
{
	try {
		lettre le=new lettre();
		ResultSet r=m.chafawi() ;
		while (r.next())
	   le.setFreq(r.getInt(1));
		
  	float x=(le.getFreq() / t)*100;
      	 float y =100-x;
		
      		JFreeChart chart = c.chafawi_g(x,y);
      		int width = 600;    int height = 500;
      		//OutputStream outputStream = response.getOutputStream();
      		// ChartUtilities.writeChartAsJPEG (outputStream, chart, width, height);
      						try 
{ 
    // Converting the PieChart into a PNG image 
   File image=new File("monChart.png");
   ChartUtilities.saveChartAsPNG(image, chart, 800, 600);  
   //out.println(image.getAbsolutePath());
   %>
 <center> <img src="C:\Users\brothers\Desktop\eclipse\monChart.png"  > </center>
   <%
} 
catch (java.io.IOException exc) 
{ 
    System.err.println("Error writing image to file"); 
}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

%>

</body>
</html>