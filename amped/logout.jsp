<%
request.getSession().removeAttribute("isActive");
request.getSession().invalidate();
response.sendRedirect("index.jsp");
%>
