<div id="header1">
   <a href="index.jsp"><img src="images/amped_logo.png" class="logoimage" width="400" height="125" alt=""/></a>
    <div id="menu">
	 <div id="anchor_menu">
	  <a href="#" > Search</a>
	  <a href="#">JoinUS</a>
	  <a href="#">Contribute</a>
	  <a href="aboutus.jsp">About US</a>
       <%if(user == null){%>
	  <a href="login.jsp">Login</a>
	  <%}%>
	  <%if(user != null){%>
	  <a href="logout.jsp" >SIGN OUT</a>
	  <%}%>
	 </div>
   	</div>
   </div>