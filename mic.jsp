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
  <%
if (user == null || user.getStatus().equals("Created") || user.getStatus().equals("Deactivate")) {
  response.sendRedirect("index.jsp");
  return;
}
%>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
   <%
	
   %>
  
		   <div id="bodyTitle" style="font-size:18px;">MIC Data</div>
    <div width="auto" height="335px" align="center" style="margin-top:30px;font-family:'Roboto', sans-serif;">
	<form action="micmetadata.jsp" method="post" name="mic" id="mic" enctype="multipart/form-data"> 	 
		<div class="row" >
            
                <label for="email" style="font-size:13px;align:left">Upload Well Data : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
				<input style="height: 35px;" name="upload_file" type="file" accept= " .txt" id="upload_rawafile" value=""/></br>
				<label for="phoneno" style="font-size:13px;">Upload TimePoints:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
				<input style="height: 35px;" name="upload_file2" type="file" accept= " .txt" id="upload_timefile" value=""/>
				</div>
                <div>
				  <input style="height: 35px; width: 150px; font-size: 14px;" value="Submit" id="Submit" name="Submit" type="Submit">
			    </div>
		        <br>
		   
				
		</form>
	 
   </div>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Anusha Singamaneni  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>