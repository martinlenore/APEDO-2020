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
 <style>

 </style>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
  
  <%if(user == null){%>
	  <div id="bodyTitle;style:font-size:18px;">AMPed Database</div>
   <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table><tr>
	  <td style="" class="boxShowdow">
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
	   <h2 >Structure information</h2>
	   <div id="boxShadowDivP"><p class="font">Secondary and tertiary structural information is largely derived from the RCSB database and is classified according to the method used, such as X-ray, NMR, and Cryot-TEM methods.

</p></div>
	  </td>
	</tr></table>
</div>
   <%}else{
	  
	   List<UserBean> ub = UserManager.userList(user);
	   
	   %>
		   <div id="bodyTitle" style="font-size:18px;">USER Portal</div>
    <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;">
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;"> User Name</td>
	  <td style="border-bottom:1px solid black;"> First Name</td>
	  <td style="border-bottom:1px solid black">Last Name</td>
	  <td style="border-bottom:1px solid black">Access Level</td>
	  <td style="border-bottom:1px solid black">Email</td>
	  <td style="border-bottom:1px solid black">Contact No</td>
	  <td style="border-bottom:1px solid black">Job Tittle</td>
	  <td style="border-bottom:1px solid black">Address</td>
	  <td style="border-bottom:1px solid black">City</td>
	  <td style="border-bottom:1px solid black">State</td>
	  
	</tr >
	<%for(int i = 0; i < ub.size(); i++){
                  UserBean ubBean = (UserBean) ub.get(i);
					  %>
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black"><%=ubBean.getUsername()%></td>
	  <td style="border-bottom:1px solid black"><%=ubBean.getFirstname()%></td>
	  <td style="border-bottom:1px solid black"><%=ubBean.getLastname()%></td>
	  <td style="border-bottom:1px solid black"><%=ubBean.getAccesslevel()%></td>
	  <td style="border-bottom:1px solid black"><%=ubBean.getEmail()%></td>
	  <td style="border-bottom:1px solid black"><%=ubBean.getContactno()%></td>
	  <td style="border-bottom:1px solid black"><%=ubBean.getJobtitle()%></td>
	  <td style="border-bottom:1px solid black"><%=ubBean.getAddress()%></td>
	  <td style="border-bottom:1px solid black"><%=ubBean.getCity()%></td>
	  <td style="border-bottom:1px solid black"><%=ubBean.getState()%></td>
	  
	</tr>
	 <%}%>
	</table>
	 
   </div>
  <%}%>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Amped Team(2020)  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>