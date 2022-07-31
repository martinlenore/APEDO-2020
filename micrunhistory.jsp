<%@include file="common_start.jsp"%>
<%
if (user == null || user.getStatus().equals("Created") || user.getStatus().equals("Deactivate")) {
  response.sendRedirect("index.jsp");
  return;
}

%>
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
   
  
		   <div id="bodyTitle" style="font-size:18px;">MIC Run History</div>

		   <%
		   System.out.println("uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu"+user.getAccesslevel());
		   int al = Integer.parseInt(user.getAccesslevel());  
	  if(al == 5){
	   List<MicRunBean> mr = MICManager.micrunList();
	   System.out.println("IN JSP PAGEEEEEEEEEEEEEEE"+mr);
	   
	   %>
    <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;width:800px;text-align:center;">
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;">MIC Run Number</td>
	  <td style="border-bottom:1px solid black;">User Executed</td>
	  <td style="border-bottom:1px solid black">Status</td>
	  <td style="border-bottom:1px solid black">Run Date</td>
	
	  
	</tr >
	<%for(int i = 0; i < mr.size(); i++){
                  MicRunBean mrr = (MicRunBean) mr.get(i);
					  %>
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black;"><a href="micdata.jsp?micnumber=<%=mrr.getMicrunnum()%>" style="color:Black;"><%=mrr.getMicrunnum()%></a></td>
	  <td style="border-bottom:1px solid black"><%=UserManager.getUserById(mrr.getUser()).getFirstname()%></td>
	  <td style="border-bottom:1px solid black"><%=mrr.getStatus()%></td>
	  <td style="border-bottom:1px solid black"><%=mrr.getRundate()%></td> 
	</tr>
	 <%}%>
	
	</table>
	 
   </div>
  <%}else{
	   List<MicRunBean> mrlbu = MICManager.micrunListByUser(user.getId());
	   System.out.println("IN JSP PAGEEEEEEEEEEEEEEE"+mrlbu);
	   %>
		   <div width="auto" height="335px" align="center" style="margin-top:30px;">
	<table style="font-family:'Roboto', sans-serif;text-align: justify ;width:800px;text-align:center;">
	<tr style="font-weight:bold;font-size: 14px;">
	<td style="border-bottom:1px solid black;">MIC Run Number</td>
	  <td style="border-bottom:1px solid black;">User Executed</td>
	  <td style="border-bottom:1px solid black">Status</td>
	  <td style="border-bottom:1px solid black">Run Date</td>
	
	  
	</tr >
	<%for(int i = 0; i < mrlbu.size(); i++){
                  MicRunBean mrlbur = (MicRunBean) mrlbu.get(i);
					  %>
	<tr style="font-size: 13px;">
      <td style="border-bottom:1px solid black;"><a href="micdata.jsp?micnumber=<%=mrlbur.getMicrunnum()%>" style="color:Black;"><%=mrlbur.getMicrunnum()%></a></td>
	  <td style="border-bottom:1px solid black"><%=UserManager.getUserById(mrlbur.getUser()).getFirstname()%></td>
	  <td style="border-bottom:1px solid black"><%=mrlbur.getStatus()%></td>
	  <td style="border-bottom:1px solid black"><%=mrlbur.getRundate()%></td> 
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