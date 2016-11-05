<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pfe.com.model.lettre"%>
<%@page import="pfe.com.model.Texte"%>
<%@page import="pfe.com.Main"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head >
<title >دراسة إحصائية للأصوات العربية</title>
  <link rel="stylesheet" href="assai.css" />
   <link rel="stylesheet" type="text/css" href="style/style.css" />
		<script type="text/javascript" src="js/jquery-1.6.js" ></script>
		<script type="text/javascript" src="js/cufon-replace.js"></script> 
		<script type="text/javascript" src="js/PT_Sans_400.font.js"></script>
		<script type="text/javascript" src="js/tms-0.3.js"></script>
		<script type="text/javascript" src="js/tms_presets.js"></script>
		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="js/atooltip.jquery.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
.ta{border: 3px solid blue;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
<center><h1 class="t_tab" >ترددات الحروف في النص  المدروس</h1></center>

 
<center>
 <table   border=solid cellspacing=0 style="position:absolute;top:60%; left:40%;" >

<tr ><th width=150px>تردده في النص      </th><th width=150px>    الحرف     </th></tr>
<%
ArrayList aa;
aa=(ArrayList)session.getAttribute("l");
if(aa!=null){
	for(int i=0;i<aa.size();i++){
		lettre l=(lettre) aa.get(i);
		// out.println("<tr><th>"+l.getFreq()+"</th><th>"+l.getNom()+"</th></tr>");
		%><tr><th><text x="990" y="155" class="tex"><%=l.getFreq()%></text></th><th><text x="990" y="155" class="tex"><%=l.getNom()%></text></th></tr><%
	}
}
%> </table> </center>

<div  >
<form method="post" action="NewFile.jsp">
	    <input style="width:140px; height:40px ;" class="put" name="btn" type="submit"value="المجهور /المهموس /اللين"/>
	    
	    <input style="width:140px; height:40px "class="put1" name="btn" type="submit"value="أصوات حسب الشدة"/>
	   
	    <input style="width:140px; height:40px" class="put2" name="btn" type="submit"value="أصوات حسب المخارج"/>
	    
	    <input style="width:140px ; height:40px"class="put3"name="btn" type="submit"value="الأصوات الشفوية"/>
	  
       <input style="width:140px ; height:40px" class="put4"name="btn" type="submit"value="أصوات الشين"/>
     
	    <input style="width:140px; height:40px "class="put5" name="btn" type="submit"value="أصوات الصفير"/>
</form> </div>
<div id="content_footer" ></div>
    <div id="footer">
   <p style="font-family:'Tahoma'"><a href="new.html">الرئيسية</a> | <a href="qui.html">عن الموقع</a> | <a href="etude.html">دراسة النص</a> | <a href="faq.html">أسئلة مترددة</a></p>
      <p style="font-family:'Tahoma';font-size:12px">جميع الحقوق محفوظة &copy; دراسة إحصائية للأصوات العربية | <a href="http://www.univh2m.ac.ma/" target="_blanc" >جامعة الحسن التاني ،كلية العلوم ابن امسيك</a> | شعبة الرياضيات و الإعلاميات| الدار البيضاء</a></p>
    </div>
		</div>
		<div ><img src="images/bord1.JPG" style="position:fixed;width:15%;left:0;top:0;height:100%" /></div>
<div ><img src="images/bord1.JPG" style="position:fixed;width:15%;right:0;top:0;height:100%" /></div>
</body>
</html>