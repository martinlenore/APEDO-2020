<%@include file="common_start.jsp"%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <TITLE>AMPed Home</TITLE>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus�">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="short cut" href="fav.ico" type="image/x-icon">
  <link rel="stylesheet" href="css/style.css" >
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <title>Document</title>
 </head>
 <%
if (user == null) {
  response.sendRedirect("index.jsp");
  return;
}
%>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
  
 	  <div id="bodyTitle">MIC/MLC Calculator</div>
	  	<div class="container">
   <form action="mic_result.jsp" method="post" name="mic" id="mic" enctype="multipart/form-data"> 	 
		<div class="row">
            
           <div class="row">
			<div class="col-sm-6">
				<div style="text-align: left;">
				<input style="height: 35px;" name="upload_file" type="file" accept= " .txt" id="upload_rawafile" value=""/>
				<input style="height: 35px;" name="upload_file2" type="file" accept= " .txt" id="upload_timefile" value=""/>
				</div>
                <div style="text-align: left;">
				  <input style="height: 35px; width: 150px; font-size: 14px;" value="Submit" id="Submit" name="Submit" type="Submit">
			    </div>
		        <br>
		    </div>
		   </div>			
		</form>
		</div>
  <%@include file="bodyAnchors.jsp"%>
 <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>
