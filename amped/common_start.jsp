<%@page import="java.io.*"%>
<%@page import="java.net.*"%>
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="com.amp.amp.buslogic.*"%>
<%@page import="com.amp.amp.amp.beans.*"%>
<%@page import="com.amp.amp.servlets.*"%>
<%@page import="com.amp.amp.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%!
  // Common request names
  private static final String ID = "id";
  private static final String EMAIL_ADDRESS = "email_address";
  private static final String LOGIN = "login";
  String emailStatus = "Activated" ;
 %>

<%
  Debug.log("----------request started: " + new Date());
  long startTime = System.currentTimeMillis();

  try {
    Debug.log("Request URL: " + request.getRequestURL());
    Debug.log("-----begin request parameters");
    Debug.log(Debug.generateRequestParameters(request));
    Debug.log("-----end request parameters");

    // Begin the Hibernate transaction for this HTTP request.
    HibernateUtil.getSessionFactory().getCurrentSession().beginTransaction();
  
    Session hsession1 = HibernateUtil.getSessionFactory().getCurrentSession();
 
    VASSession vsession = new VASSession(session);

    UserBean user = vsession.getUser();

    if (user != null && user.getId() == 209) {
      response.sendRedirect("index.jsp");
      return;
    }
    // Variable to store login error message
    String loginError = null;

    int pageHighlight = 0;
%>