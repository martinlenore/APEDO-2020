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
   

   System.out.println("FILEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"+filename);


	   
	   %>
  
		   <div id="bodyTitle" style="font-size:18px;">MIC Plots</div>
    <div width="auto" height="335px" align="center" style="margin-top:30px;font-family:'Roboto', sans-serif;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;font-size: 10px;">
	<tr><td style="align:center;"><h2><%=filename%><h2></td></tr>
	<tr >
	
	<td style="border:1px solid Black;">
	 <img src="micresult/<%=filename%>" alt="" width="800px" height="800px" />
</td>

</tr>

	 </table>
   </div>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>