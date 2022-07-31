<%@include file="common_start.jsp"%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <TITLE>MIC History Pages</TITLE>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="short cut" href="fav.ico" type="image/x-icon">
  <link rel="stylesheet" href="css/style.css" >
 </head>
 <style>

 </style>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
   <%
	 
	   String filename = request.getParameter("filepath");

	   System.out.println("DISPLAYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"+filename);
	   %>
  
		   <div id="bodyTitle" style="font-size:18px;">MIC Data</div>
    <div width="auto" height="335px" align="center" style="margin-top:30px;font-family:'Roboto', sans-serif;">
	<%
InputStream ins = application.getResourceAsStream(filename);
try
{
if(ins == null)
{
response.setStatus(response.SC_NOT_FOUND);
}
else
{
BufferedReader br = new BufferedReader((new InputStreamReader(ins)));
String data;
while((data= br.readLine())!= null)
{
out.println(data+"<br>");
}
} 
}
catch(IOException e)
{
out.println(e.getMessage());
}
%>
	 
   </div>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>