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
	 

	   
	   %>
  
		   <div id="bodyTitle" style="font-size:18px;">Select Search Criteria</div>
    <div width="auto" height="335px" align="center" style="margin-top:30px;font-family:'Roboto', sans-serif;">
	<form action="mic_result.jsp" method="post" name="mic" id="mic" enctype="multipart/form-data"> 	 
		<div class="row" >
            
                <label for="email" style="font-size:13px;align:left"> Peptide Name:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
				<input name="pepname" type="text" id="pepname" placeholder="Enter a peptide name..." /></br></br>
				<label for="phoneno" style="font-size:13px;">Amino Acid Sequence:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
				<input name="aaseq" type="text" id="aaseq" placeholder="Enter an amino acide sequence..."/></br></br>
				<label for="phoneno" style="font-size:13px;">ATCC Number:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
				<input name="atccnum" type="text" id="atccnum"/></br></br>
				<label for="phoneno" style="font-size:13px;">Species Name:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
				<input name="sname" type="text" id="sname"/></br></br>
				<label for="phoneno" style="font-size:13px;">AMP ID:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
				<input name="sname" type="text" id="sname"/></br></br>
				<label for="phoneno" style="font-size:13px;">PDB ID:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
				<input name="sname" type="text" id="sname"/></br></br>
				</div>
                <div>
				  <input style="height: 35px; width: 150px; font-size: 14px;" value="Submit" id="Submit" name="Submit" type="Submit">
			    </div>
		        <br>
		   
				
		</form>
	 
   </div>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>