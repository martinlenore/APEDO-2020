<%@include file="common_start.jsp"%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <TITLE>Amino Acid Sequence</TITLE>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus�">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="short cut" href="fav.ico" type="image/x-icon">
  <link rel="stylesheet" href="css/style.css" >
  <link href="css/mpSkLayout.css" rel="stylesheet" type="text/css" />
<link href="css/mpSkStyle_cl.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
  function validateForm(){
     document.aas.submit();
     return true;
  }
  </script>
 </head>
 <style>

 </style>
  <%
if (user == null || user.getStatus().equals("Created")) {
  response.sendRedirect("index.jsp");
  return;
}
%>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->
   <%
   String ppid = request.getParameter("peptideid");
   if(ppid != null){
    AASManager.insertAASequence(request);
   }
	   %>
  
		   <div id="bodyTitle" style="font-size:18px;">Amino Acid Sequence</div>
       <div id="bodyTitle" style="font-size:14px;">Amino Acid Sequence Data:<a href="AASeqData.jsp" style="color:Black;">Click Here</a></div>
    <div width="auto" height="auto" align="center" style="margin-top:30px;font-family:'Roboto', sans-serif;">
      <form action="#" method="post" name="aas" id="aas">
        <input type="hidden" name="actionType" value=""/>
        <ul class="form_list">
          <li>
            <label>Peptide ID</label>
            <input name="peptideid" type="text" value="" />
          </li>
          <li>
            <label>Sequence</label>
            <input name="sequence" type="text" value=""/>
          </li>
          <li>
            <label>Molecular Weight</label>
            <input name="mw" type="text" value=""/>
          </li>
        </ul>
        <!-- /form_list -->
        <div>
          <input name="btnUpdate" type="button" id="botton" onClick = "javascript:validateForm();" value="Submit"/>
          <input name="btnCancel" id="botton" onClick="javascript:location.href='index.jsp'" type="button" value="Cancel" class="formButton" />
        </div>
        <!-- /form_btnBox -->
      </form>
	 
   </div>

<%@include file="bodyAnchors.jsp"%>

  <div width="auto" height="100px" id="footerStyle" style="auto;font-size:12px;font-weight:bold;" align="center;">&copy;University Of RhodeIsland | All Rights Reserved | Developed By Anusha Singamaneni  
  </div>
 </body>
</html>
<%@include file="common_end.jsp"%>