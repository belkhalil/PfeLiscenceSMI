<%@page import="java.io.File"%>
<%@page import="pfe.com.Graphe"%>

<%@page import="pfe.com.Main"%>
<%@page import="java.sql.SQLException"%>
<%@page import="pfe.com.model.lettre"%>
<%@page import="com.mysql.jdbc.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>دراسة إحصائية للأصوات العربية</title>
   <link rel="stylesheet" type="text/css" href="style/style.css" />
		<script type="text/javascript" src="js/jquery-1.6.js" ></script>
		<script type="text/javascript" src="js/cufon-replace.js"></script> 
		<script type="text/javascript" src="js/PT_Sans_400.font.js"></script>
		<script type="text/javascript" src="js/tms-0.3.js"></script>
		<script type="text/javascript" src="js/tms_presets.js"></script>
		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="js/atooltip.jquery.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta dir="rtl"  lang="ar" >
<meta content="text/html; charset=UTF-8" >
<title>دراسة إحصائية للأصوات </title>
<link rel="stylesheet" href="assai.css" />
<title>Insert حروف title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="nv.d3.css" rel="stylesheet" type="text/css">
<style>

body {
  overflow-y:scroll;
}

text {
  font: 12px sans-serif;
  font-family:tahoma;
}

.mypiechart {
  width: 500px;
  border: 2px;
}
</style>
</head>
<body class='with-3d-shadow with-transitions'>
<div  >
<form method="post" action="NewFile.jsp">
	    <input style="width:140px; height:40px ;" class="put" name="btn" type="submit"value="المجهور /المهموس /اللين"/>
	    
	    <input style="width:140px; height:40px "class="put1" name="btn" type="submit"value="أصوات حسب الشدة"/>
	   
	    <input style="width:140px; height:40px" class="put2" name="btn" type="submit"value="أصوات حسب المخارج"/>
	    
	    <input style="width:140px ; height:40px"class="put3"name="btn" type="submit"value="الأصوات الشفوية"/>
	  
       <input style="width:140px ; height:40px" class="put4"name="btn" type="submit"value="أصوات الشين"/>
     
	    <input style="width:140px; height:40px "class="put5" name="btn" type="submit"value="أصوات الصفير"/>
</form> </div>
<div ><img src="images/bord1.JPG" style="position:fixed;width:15%;left:0;top:0;height:100%" /></div>
<div ><img src="images/bord1.JPG" style="position:fixed;width:15%;right:0;top:0;height:100%" /></div>
<div id="header">
	<img src="style/tab_selected.png"  />
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1 style="font-family:'Tahoma';font-size:40px"><a href="index.html"><span class="logo_colour">دراسة إحصائية </span></a>للأصوات العربية</h1>
        </div>
		
      </div>
      <div id="menubar">
        <ul id="menu" style="font-family:'Tahoma'">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="faq.html">أسئلة مترددة</a></li>
          <li   class="selected"><a href="etude.html">دراسة النص</a></li>
          <li><a href="qui.html">عن الموقع</a></li>
          <li><a href="new.html">الرئيسية</a></li>
        </ul>
		</div>
		</div>

                     <!--******************************* mahmouss majhour layen********************************* -->
<%
request.setCharacterEncoding("UTF-8");
String p=request.getParameter("btn");
Main m=new Main();  int tab [] =new int [4],t;
ResultSet tot=m.freq_total();
tot.next();
int to=tot.getInt(1);
if(to==0)
 t=1;
else
{t=to;}

if (p.equals("المجهور /المهموس /اللين"))
{
 try { 
		ResultSet r=m.frequence("majh") ;
		r.next();
		int i=0;
		while(r.next()){
    		  tab[i]=r.getInt(1);    i=i+1;
    	               }
		int maj = tab[0];    int mah= tab[1];     int lay =tab[2];
		
		int a=(maj*100)/t;int b=(mah*100)/t;int c=(lay*100)/t;
		int pi=a*5;
		int pp=b*5;
		int ppp=c*5;
		
%>
<center><svg xmlns="http://www.w3.org/2000/svg" width="1200" height="1000">

<rect x="215" y="250" width="900" height="500" fill="#95d0fc" stroke="green" stroke-width="4"    />
<rect x="385" y=<%=747-pi%> width="40" height=<%=pi%> fill="#ceb301" />
<rect x="585" y=<%=747-pp%> width="40" height=<%=pp %> fill="blue" />
<rect x="785" y=<%=747-ppp %> width="40" height=<%=ppp %> fill="cyan" />

                                                 <!-- TITLE -->

<text x="900" y="200"style="fill:blue;stroke:blue;font-size:20px;font-family:'Tahoma', Verdana, serif;text-anchor:end">مبيان يبين نسب الحروف المهموسة و المجهورة و اللينة في النص </text>

                                                      <!-- legend -->
 
<rect x="200" y="850" width="915" height="50" fill="violet" stroke="green" stroke-width="4" />
<rect x="460" y="865" width="20" height="20" fill="#ceb301" /><text x="430" y="875" class="tex">المهموس</text>
<rect x="760" y="865" width="20" height="20" fill="blue" /><text x="730" y="875"class="tex">المجهور</text>
<rect x="1060" y="865" width="20" height="20" fill="cyan" /><text x="1030" y="875"class="tex">اللين</text> 
 
 <text x="350" y="875" class="tex"><%=a%>%</text>
<text x="650" y="875" class="tex"><%=b %>%</text>
<text x="950" y="875"class="tex"><%=c%>%</text>
                                                          <!-- LES NOMS -->
<text x="420" y="770" class="tex">المهموس</text>
<text x="620" y="770"class="tex">المجهور</text>
<text x="820" y="770"class="tex">اللين</text>

                                   <!-- AXE DES ABSICES --> 
 
 <text x="200" y="697"class="text">10%</text>
<text x="200" y="647"class="text">20%</text>
<text x="200" y="597"class="text">30%</text>
<text x="200" y="547"class="text">40%</text>
<text x="200" y="497"class="text">50%</text>
<text x="200" y="447"class="text">60%</text>
<text x="200" y="397"class="text">70%</text>
<text x="200" y="347"class="text">80%</text>
<text x="200" y="297"class="text">90%</text>
<text x="200" y="247"class="text">100%</text>
                                                         <!-- LIGNES --> 
  <line x1="200" y1="697" x2="1115" y2="697" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="647" x2="1115" y2="647" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="597" x2="1115" y2="597" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="547" x2="1115" y2="547" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="497" x2="1115" y2="497" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="447" x2="1115" y2="447" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="397" x2="1115" y2="397" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="347" x2="1115" y2="347" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="297" x2="1115" y2="297" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="247" x2="1115" y2="247" style=" fill:#26CD22; stroke:#1F56D2" />
                                       
                                       
                                       
                                       
                             <!-- ****************************chedda***************************************-->
   <%
}
   catch (SQLException e) {
		e.printStackTrace();
   }
 }
else if (p.equals("أصوات حسب الشدة"))
{	
	try {
		ResultSet r=m.frequence("cheda") ;
		r.next();
		int i=0;
		
		while(r.next())
		      {
    		  tab[i]=r.getInt(1);    i=i+1;
    	      }         
        int cha = tab[0];    int ra = tab[1];     int chi =tab[2];int mot =tab[3];
        int a=(cha*100)/t;int b=(ra*100)/t;int c=(chi*100)/t;int d=(mot*100)/t;
        int pi=a*5;
        int pp =b*5;
        int ppp=c*5;
        int pppp=d*5;
 %>

 <center><svg xmlns="http://www.w3.org/2000/svg" width="1200" height="1000">




<rect x="215" y="250" width="900" height="500" fill="#95d0fc" stroke="green" stroke-width="4"    />
<rect x="385" y=<%=747-pi%> width="40" height=<%=pi%> fill="#ceb301" />
<rect x="585" y=<%=747-pp%> width="40" height=<%=pp %> fill="blue" />
<rect x="785" y=<%=747-ppp %> width="40" height=<%=ppp %> fill="cyan" />
<rect x="985" y=<%=747-pppp%> width="40" height=<%=pppp %> fill="green" />

                                                 <!-- TITLE -->

<text x="900" y="200"style="fill:blue;stroke:blue;font-size:20px;font-family:'Tahoma', Verdana, serif;text-anchor:end">مبيان يبين نسب الحروف في النص حسب درجة الشدة</text>

                                                  <!-- legend -->
 
<rect x="200" y="850" width="915" height="50" fill="violet" stroke="green" stroke-width="4" />
<rect x="410" y="865" width="20" height="20" fill="#ceb301" /><text x="400" y="875" class="tex">الشديد</text>
<rect x="620" y="865" width="20" height="20" fill="blue" /><text x="610" y="875"class="tex">الرخو</text>
<rect x="860" y="865" width="20" height="20" fill="cyan" /><text x="850" y="875"class="tex">الشبه لين</text>  
<rect x="1080" y="865" width="20" height="20" fill="green" /><text x="1070" y="875"class="tex">المتوسط</text> 

<text x="320" y="875" class="tex"><%=a%>%</text>
<text x="550" y="875" class="tex"><%=b %>%</text>
<text x="750" y="875"class="tex"><%=c%>%</text>                                            
<text x="990" y="875" class="tex"><%=d%>%</text>
                                                          <!-- LES NOMS -->
<text x="420" y="770" class="tex">الشديد</text>
<text x="620" y="770"class="tex">الرخو</text>
<text x="820" y="770"class="tex">الشبه لين</text>
<text x="1020" y="770"class="tex">المتوسط</text>

                                                 <!-- AXE DES ABSICES --> 
 
 <text x="200" y="697"class="text">10%</text>
<text x="200" y="647"class="text">20%</text>
<text x="200" y="597"class="text">30%</text>
<text x="200" y="547"class="text">40%</text>
<text x="200" y="497"class="text">50%</text>
<text x="200" y="447"class="text">60%</text>
<text x="200" y="397"class="text">70%</text>
<text x="200" y="347"class="text">80%</text>
<text x="200" y="297"class="text">90%</text>
<text x="200" y="247"class="text">100%</text>
                                                         <!-- LIGNES --> 
   <line x1="200" y1="697" x2="1115" y2="697" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="647" x2="1115" y2="647" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="597" x2="1115" y2="597" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="547" x2="1115" y2="547" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="497" x2="1115" y2="497" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="447" x2="1115" y2="447" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="397" x2="1115" y2="397" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="347" x2="1115" y2="347" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="297" x2="1115" y2="297" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="247" x2="1115" y2="247" style=" fill:#26CD22; stroke:#1F56D2" />
 </center>
 <% }catch (SQLException e) {
		e.printStackTrace();
 }

	
	           // <!-- ********************************************** al makharej*******************************************--> 
}else if (p.equals("أصوات حسب المخارج"))
{
	try {
		ResultSet r=m.frequence("makh") ;
		r.next();
		int i=0;
		
		while(r.next())
		      {
    		  tab[i]=r.getInt(1);    i=i+1;
    	      }         
        int chaf= tab[0];    int hal = tab[1];     int lis =tab[2];
        int a=(chaf*100)/t;int b=(hal*100)/t;int c=(lis*100)/t;
	
	
        int pi=a*5;
        int pp =b*5;
        int ppp=c*5;
	
        %>	            
<center><svg xmlns="http://www.w3.org/2000/svg" width="1200" height="1000">

<rect x="215" y="250" width="900" height="500" fill="#95d0fc" stroke="green" stroke-width="4"    />
<rect x="385" y=<%=747-pi%> width="40" height=<%=pi%> fill="#ceb301" />
<rect x="585" y=<%=747-pp%> width="40" height=<%=pp %> fill="blue" />
<rect x="785" y=<%=747-ppp %> width="40" height=<%=ppp %> fill="cyan" />

<text x="900" y="200"style="fill:blue;stroke:blue;font-size:20px;font-family:'Tahoma', Verdana, serif;text-anchor:end">مبيان يبين نسب الحروف حسب المخارج </text>

                                                      <!-- legend -->
 
<rect x="200" y="850" width="915" height="50" fill="violet" stroke="green" stroke-width="4" />
> 

<rect x="460" y="865" width="20" height="20" fill="#ceb301" /><text x="430" y="875" class="tex">شفوي</text>
<rect x="760" y="865" width="20" height="20" fill="blue" /><text x="730" y="875"class="tex">حلقي</text>
<rect x="1060" y="865" width="20" height="20" fill="cyan" /><text x="1030" y="875"class="tex">لساني</text>
 
 <text x="350" y="875" class="tex"><%=a%>%</text>
<text x="650" y="875" class="tex"><%=b %>%</text>
<text x="950" y="875"class="tex"><%=c%>%</text>

                                                  <!-- les noms -->
<text x="420" y="770" class="tex">شفوي</text>
<text x="620" y="770"class="tex">حلقي</text>
<text x="820" y="770"class="tex">لساني</text>

                                   <!-- AXE DES ABSICES --> 
 

 
 <text x="200" y="697"class="text">10%</text>
<text x="200" y="647"class="text">20%</text>
<text x="200" y="597"class="text">30%</text>
<text x="200" y="547"class="text">40%</text>
<text x="200" y="497"class="text">50%</text>
<text x="200" y="447"class="text">60%</text>
<text x="200" y="397"class="text">70%</text>
<text x="200" y="347"class="text">80%</text>
<text x="200" y="297"class="text">90%</text>
<text x="200" y="247"class="text">100%</text>
                                                         <!-- LIGNES --> 
  <line x1="200" y1="697" x2="1115" y2="697" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="647" x2="1115" y2="647" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="597" x2="1115" y2="597" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="547" x2="1115" y2="547" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="497" x2="1115" y2="497" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="447" x2="1115" y2="447" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="397" x2="1115" y2="397" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="347" x2="1115" y2="347" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="297" x2="1115" y2="297" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="200" y1="247" x2="1115" y2="247" style=" fill:#26CD22; stroke:#1F56D2" />
                                       
 <%  
 }
 catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
 }
}
else if(p.equals("أصوات الصفير"))
	
{try {
	ResultSet s=m.freq_safir();
	lettre l=new lettre();
	s.next();
	l.setFreq(s.getInt(1));
	float pi=(l.getFreq()/t)*100;
	float pp=100-pi;
	%> 
	
	<svg id="test1"  class="mypiechart " style="position:absolute;left:30%;top:60% ; width:40%">
    <rect x="20" y="0" width="1200" height="500" fill="white" stroke="green" stroke-width="4"    />
    
    </svg>
<script src="d3.v3.js"></script>
<script src="nv.d3.js"></script>
<script src="legend.js"></script>
<script>
var A=<%=pi%>;
var B=<%=pp%>;
  var testdata = [
    {
      key: "حروف الصفير",
      y: A
    },
    { key: "باقي الحروف",
      y: B
    },
  ];


nv.addGraph(function() {
    var width = 500,
        height = 500;

    var chart = nv.models.pieChart()
        .x(function(d) { return d.key })
        .y(function(d) { return d.y })
        .color(d3.scale.category10().range())
        .width(width)
        .height(height);

      d3.select("#test1")
          .datum(testdata)
        .transition().duration(1200)
          .attr('width', width)
          .attr('height', height)
          .call(chart);

    chart.dispatch.on('stateChange', function(e) { nv.log('New State:', JSON.stringify(e)); });

    return chart;
});


</script>

 <%  
	}
 
	catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}		
}

  else if(p.equals("الأصوات الشفوية"))
  {
	  try {
			lettre le=new lettre();
			ResultSet r=m.chafawi() ;
			while (r.next())
		   le.setFreq(r.getInt(1));
			
	  	float pi=(le.getFreq() / t)*100;
	      	 float pp =100-pi;
	%>	
<svg id="test1"  class="mypiechart " style="position:absolute;left:30%;top:60% ; width:40%">
    <rect x="20" y="0" width="1200" height="500" fill="white" stroke="green" stroke-width="4"    />
    
    </svg>

<script src="d3.v3.js"></script>
<script src="nv.d3.js"></script>
<script src="legend.js"></script>
<script>
var A=<%=pi%>;
var B=<%=pp%>;
  var testdata = [
    {
      key: "الحروف الشفوية",
      y: A
    },
    {
      key: "باقي الحروف",
      y: B
    },


  ];


nv.addGraph(function() {
    var width = 500,
        height = 500;

    var chart = nv.models.pieChart()
        .x(function(d) { return d.key })
        .y(function(d) { return d.y })
        .color(d3.scale.category10().range())
        .width(width)
        .height(height);

      d3.select("#test1")
          .datum(testdata)
        .transition().duration(1200)
          .attr('width', width)
          .attr('height', height)
          .call(chart);

    chart.dispatch.on('stateChange', function(e) { nv.log('New State:', JSON.stringify(e)); });

    return chart;
});


</script>
<%
  } 
	catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}		
}
	else if(p.equals("أصوات الشين"))
  {
		try {
			lettre po=new lettre();
			ResultSet r=m.chin() ;
			while(r.next()){
				po.setFreq(r.getInt(1));
				
				float pi=  (po.getFreq()/t)*100;
	    		float pp =100-pi;
	%>	
<svg id="test1"  class="mypiechart " style="position:absolute;left:30%;top:60% ; width:40%">
    <rect x="20" y="0" width="1200" height="500" fill="white" stroke="green" stroke-width="4"    />
    
    </svg>

<script src="d3.v3.js"></script>
<script src="nv.d3.js"></script>
<script src="legend.js"></script>
<script>
var A=<%=pi%>;
var B=<%=pp%>;
  var testdata = [
    {
      key: "حرف الشين",
      y: A
    },
    {
      key: "باقي الحروف",
      y: B
    },


  ];


nv.addGraph(function() {
    var width = 500,
        height = 500;

    var chart = nv.models.pieChart()
        .x(function(d) { return d.key })
        .y(function(d) { return d.y })
        .color(d3.scale.category10().range())
        .width(width)
        .height(height);

      d3.select("#test1")
          .datum(testdata)
        .transition().duration(1200)
          .attr('width', width)
          .attr('height', height)
          .call(chart);

    chart.dispatch.on('stateChange', function(e) { nv.log('New State:', JSON.stringify(e)); });

    return chart;
});


</script>
<%}
		} 
		catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}		
	}
%>
 <div>
		    <div id="content_footer" ></div>
    <div id="footer" style=" position:relative;top:1133px;height:117px;left:0%;width:71%">
      <p style="font-family:'Tahoma'"><a href="new.html">الرئيسية</a> | <a href="qui.html">عن الموقع</a> | <a href="etude.html">دراسة النص</a> | <a href="faq.html">أسئلة مترددة</a></p>
      <p style="font-family:'Tahoma';font-size:12px">جميع الحقوق محفوظة &copy; دراسة إحصائية للأصوات العربية | <a href="http://www.univh2m.ac.ma/" target="_blanc" >جامعة الحسن التاني ،كلية العلوم ابن امسيك</a> | شعبة الرياضيات و الإعلاميات| الدار البيضاء</a></p>
    </div>
		</div>	
</div>
 
</body>
</html>