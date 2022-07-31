<%@include file="common_start.jsp"%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <TITLE>MIC History Pages</TITLE>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus�">
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
    
   String thisLine; 
  int count=0; 
  filename = "/opt/tomcat/apache-tomcat-9.0.37/webapps/amped/micmeansd/"+filename;
   System.out.println("FILEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"+filename);

  FileInputStream fis = new FileInputStream(filename);
   System.out.println("FILEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE222222222222222222222"+fis);
  DataInputStream myInput = new DataInputStream(fis);
  int i=0; 
	   
	   %>
  
		   <div id="bodyTitle" style="font-size:18px;">MIC Mean and SD Data</div>
    <div width="auto" height="auto" align="center" style="font-family:'Roboto', sans-serif;margin-top: 25px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;font-size: 13px;">
	<%
while ((thisLine = myInput.readLine()) != null)
{
	%>
	<tr >
	<%
String strar[] = thisLine.split(",");
for(int j=0;j<strar.length;j++)
{
	%>
	<td style="border:1px solid Black;">
	<%
if(i!=0)
{
out.print(" " +strar[j]+ " ");
}
else
{
out.print(" <b>" +strar[j]+ "</b> ");
}
%>
</td>
<%
}
%>
</tr>
<%
i++;
} 
%>
	 </table>
   </div>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>