<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="assai.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF_8">
<title>Insert title here</title>
</head>
<body>
<?xml version="1.0" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.0//EN" 
  "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
 <% 
 int cha = 24;    int ra = 41;     int chi =13;int mot =45;
        int a=(cha*100)/123;int b=(ra*100)/123;int c=(chi*100)/123;int d=(mot*100)/123;
        int pi=a*5;
        int pp =b*5;
        int ppp=c*5;
        int pppp=d*5;
 %>

 <center><svg xmlns="http://www.w3.org/2000/svg" width="1200" height="1000">

<rect x="30" y="100" width="900" height="500" fill="white" stroke="green" stroke-width="4"    />
<rect x="200" y=<%=600-pi%> width="40" height=<%=pi%> fill="red" />
<rect x="400" y=<%=600-pp%> width="40" height=<%=pp %> fill="blue" />
<rect x="600" y=<%=600-ppp %> width="40" height=<%=ppp %> fill="cyan" />
<rect x="800" y=<%=600-pppp%> width="40" height=<%=pppp %> fill="green" />

                                                 <!-- TITLE -->

<text x="700" y="70"style="fill:blue;stroke:blue;font-size:20px;font-family:'Tahoma', Verdana, serif;text-anchor:end">مبيان يبين نسب الحروف في النص حسب درجة الشدة</text>

                                                  <!-- legend -->
 
<rect x="940" y="110" width="200" height="200" fill="violet" stroke="green" stroke-width="4" />
<rect x="1110" y="140" width="20" height="20" fill="red" /><text x="1110" y="155" class="tex">الشديد</text>
<rect x="1110" y="180" width="20" height="20" fill="blue" /><text x="1110" y="195"class="tex">الرخو</text>
<rect x="1110" y="220" width="20" height="20" fill="cyan" /><text x="1110" y="235"class="tex">الشبه لين</text> 
<rect x="1110" y="260" width="20" height="20" fill="green" /><text x="1110" y="275"class="tex">المتوسط</text> 
 <text x="990" y="155" class="tex"><%=a%>%</text>
<text x="990" y="195" class="tex"><%=b %>%</text>
<text x="990" y="235"class="tex"><%=c%>%</text>
<text x="990" y="275" class="tex"><%=d%>%</text>

                                                 <!-- AXE DES ABSICES --> 
 
 <text x="30" y="550"class="text">10%</text>
<text x="30" y="500"class="text">20%</text>
<text x="30" y="450"class="text">30%</text>
<text x="30" y="400"class="text">40%</text>
<text x="30" y="350"class="text">50%</text>
<text x="30" y="300"class="text">60%</text>
<text x="30" y="250"class="text">70%</text>
<text x="30" y="200"class="text">80%</text>
<text x="30" y="150"class="text">90%</text>
<text x="30" y="100"class="text">100%</text>
                                                         <!-- LIGNES --> 
  <line x1="15" y1="550" x2="930" y2="550" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="15" y1="500" x2="930" y2="500" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="15" y1="450" x2="930" y2="450" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="15" y1="400" x2="930" y2="400" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="15" y1="350" x2="930" y2="350" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="15" y1="300" x2="930" y2="300" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="15" y1="250" x2="930" y2="250" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="15" y1="200" x2="930" y2="200" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="15" y1="150" x2="930" y2="150" style=" fill:#26CD22; stroke:#1F56D2" />
  <line x1="15" y1="100" x2="930" y2="100" style=" fill:#26CD22; stroke:#1F56D2" />
 
 </center>
 
</svg>
</body>
</html>