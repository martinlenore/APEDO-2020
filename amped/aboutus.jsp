<%@include file="common_start.jsp"%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <TITLE>AMPed Home</TITLE>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="short cut" href="fav.ico" type="image/x-icon">
  <link rel="stylesheet" href="css/style.css" >
  <title>Document</title>
 </head>
 <body>
<!--Header DIV starts here -->
<%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
 <div id="bodyTitle">AMPed Database</div>
  <%if(user == null){%>
   <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table><tr>
	  <td style="margin-left:0px;" class="boxShowdow">
	   <img src="images/microbe.png" alt="" />
	   <h2 >Peptide database</h2>
	   <div id="boxShadowDivP"> <p class="font">Our main focus with AMPed is to provide all valuable information about antimicrobial peptides in one place. Amino acid sequences are the most unambiguous way to characterize peptides with diverse naming conventions.</p></div>
	  </td>
	  <td style="margin-left:30px;" class="boxShowdow">
		<img src="images/peptide-150x150.png" alt=""/>
	   <h2 >Microbe database</h2>
	   <div id="boxShadowDivP"><p class="font">Peptides that kill microbes are tested by many different methods, such as in vivo, or in broth, or as inhibition zones on plates, and antimicrobial activity concentration units must be clearly defined as moles/L or g/L. Test microbes must be fully characterized by genome and species, which relies heavily on ATCC numbers.</p></div>
	  </td>
	  <td style="margin-left:30px;" class="boxShowdow">
		<img src="images/protein-structure-150x150.png" alt=""/>
	   <h2 >Microbe database</h2>
	   <div id="boxShadowDivP"><p class="font">Peptides that kill microbes are tested by many different methods, such as in vivo, or in broth, or as inhibition zones on plates, and antimicrobial activity concentration units must be clearly defined as moles/L or g/L. Test microbes must be fully characterized by genome and species, which relies heavily on ATCC numbers.</p></div>
	  </td>
	</tr></table>
</div>
   <%}%>
  

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;" align="center">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>
