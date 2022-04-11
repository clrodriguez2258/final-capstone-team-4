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
  <h2>EVENTS:</h2>
<%--  <c:forEach var="event" items="${events}">--%>
  <c:set var="restaurant" value="${restaurants}"/>
  <div id="userEvents" style="background-color: aliceblue">

    <ul>
      <li>
        <p>${event.eventName} name </p>
        <p>${event.eventTime} time  </p>
        <p>${event.eventDate}date </p>

        <p>${restaurant.restaurantName} winner restaurant Name</p>

      </li>

    </ul>

  </div>

<%--  </c:forEach>--%>



</div>






<%@ include file = "common/footer.jspf" %>