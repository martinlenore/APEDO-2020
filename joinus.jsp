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
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link href="css/mpSkLayout.css" rel="stylesheet" type="text/css" />
<link href="css/mpSkStyle_cl.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript">
  function validateForm(){
    var expr=/^\d{10}$/;
       var expr1 = /^[0-9]*$/;
    var username = document.add_userForm.name.value;
    var mobile = document.add_userForm.contact.value;
    if(username == ''){
         alert('Enter username to continue!');
         document.add_userForm.name.focus();
         return false;
       }
       if(mobile.length == 0){
         alert('Enter mobile number to continue!');
         document.add_userForm.contact.focus();
         return false;
       }
       if(mobile.search(expr) == -1){
          alert('Enter valid mobile number to continue!');
          document.add_userForm.contact.focus();
          return false;
       }
       if(mobile.length < 10){
       alert('Enter 10 digit mobile number to continue!');
       document.add_userForm.contact.focus();
       return false;
       }
    document.add_userForm.actionType.value='NewClient';
     document.add_userForm.submit();
     return true;
  }
  </script>
  </head>
 <body>
 <!--Header DIV starts here -->
  <%@include file="header.jsp"%>
<!--Hearder Div Ends Here -->

<div id="bodyTitle" style="font-size:18px;margin-top:20px;" >Please enter details here to signup</div>

  <div width="auto" height="auto" align="center" style="margin-top:30px;">
  <form action="profileadded.jsp" method="post" name="add_userForm" id="add_userForm">
    <input type="hidden" name="actionType" value="">
              <ul class="form_list">
                <li>
                  <label>User Name</label>
                  <input name="name" type="text" class="textBox" value="" />
                </li>
                <li>
                  <label>First Name</label>
                  <input name="firstname" type="text"  class="textBox" value=""/>
                </li>
                <li>
                  <label>Last Name</label>
                  <input name="lastname" type="text" class="textBox" value=""/>
                </li>
                <li>
                  <label>Email ID</label>
                  <input name="email" type="text"  class="textBox" value=""/>
                </li>

                <li>
                  <label>Phone No</label>
                  <input name="contact" type="text" class="textBox" value=""/>
                </li>
				<li>
                  <label>Job Title</label>
                  <input name="jobtitle" type="text" class="textBox" value=""/>
                </li>
                <li>
                  <label>Street Name</label>
                  <input name="streetname" type="text"  class="textBox" value=""/>
                </li>
                <li>
                  <label>City</label>
                  <input name="city" type="text"  class="textBox" value="" />
                </li>
                <li>
                  <label>State</label>
                  <input name="state" class="textBox" type="text"  value="" />
                </li>
				<li>
                  <label>ZipCode</label>
                  <input name="zipcode" class="textBox" type="text" value="" />
                </li>
				<li>
                  <label>Country</label>
                  <input name="country" type="text"  class="textBox" value="" />
                </li>
                <li>
                  <label>New Password</label>
                  <input name="newpassword" type="password"  class="textBox" value=""/>
                </li>
                <li>
                  <label>Confirm Password</label>
                  <input name="cpassword" type="password" class="textBox" value=""/>
                </li>
              </ul>
              <!-- /form_list -->
              <div >
                <input name="btnUpdate" type="button" onClick = "javascript:validateForm();" value="Submit" />
                <input name="btnCancel" onClick="javascript:location.href='index.jsp'" type="button" value="Cancel" class="formButton" />
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