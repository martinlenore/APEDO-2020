<%  // End the Hibernate transaction and commit the work.
    HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().commit();
  }
  catch (Throwable e) {
    try {
      Debug.log(e, request);
      // In case of any exceptions, roll back any open transactions for this
      // request.
      HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().rollback();
    }
    catch (Throwable e2) {
      e2.printStackTrace();
    }
    %>
    <jsp:forward page="error.html"/>
    <%
  }
  finally {
    Debug.log("----------request ended: " + new Date() + " ("
        + (System.currentTimeMillis() - startTime) + "ms)");
  }
%>