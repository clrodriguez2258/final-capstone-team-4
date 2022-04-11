<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file = "common/header.jspf" %>
<c:url var="cssUrl" value="/css/site.css"/>
<link rel="stylesheet" href="${cssUrl}"/>

<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>


<div  class="container">


  <div id="profile">

            <h2 id="userNameText"><c:out value="${user.capitalizedUsername}"/> </h2>

  </div>
<%--  <c:forEach var="event" items="${geteventsByGuestId}">--%>
  <div id="userEvents">
  <c:set var="restaurant" value="${restaurants}"/>
    <h2>EVENTS:</h2>
    <ul>
      <li>${event.eventName} </li>
      <li>${event.eventTime} </li>
      <li>${event.eventDate} </li>
      <li>${event.eventTime} </li>

    </ul>

  </div>

<%--  </c:forEach>--%>



</div>






<%@ include file = "common/footer.jspf" %>