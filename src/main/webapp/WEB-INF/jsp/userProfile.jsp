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
 <c:forEach var="event" items="${allEvents}">
     <c:url var="eventDetails" value="/finalist?eventId=${event.eventId}"></c:url>
<%--  <c:set var="restaurant" value="${restaurants}"/>--%>
  <div id="userEvents" style="background-color: aliceblue">

    <ul>
      <a href="${eventDetails}"><li>
        <p>${event.eventName} name </p>
        <p>${event.eventTime} time  </p>
        <p>${event.eventDate}date </p>

<%--        <p>${restaurant.restaurantName} winner restaurant Name</p>--%>

      </li></a>

    </ul>

  </div>

</c:forEach>



</div>






<%@ include file = "common/footer.jspf" %>