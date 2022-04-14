<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file = "common/header.jspf" %>


<c:url var="cssProfile" value="/css/profile.css"/>
<link rel="stylesheet" href="${cssProfile}"/>

<h2 id="userNameText"><c:out value="${user.capitalizedUsername}"/> </h2>
  <h2>EVENTS:</h2>
 <c:forEach var="event" items="${allEvents}">
     <c:url var="eventDetails" value="/finalist?eventId=${event.eventId}"></c:url>
<%--  <c:set var="restaurant" value="${restaurants}"/>--%>
    <table style="width:100%;">
        <tr  style="border:1px solid black; font-size: medium">
            <td>Name of event maker</td>
            <td>Time</td>
            <td>Date of event</td>
        </tr>
        <tr style="font-size: medium">
            <a href="${eventDetails}">Events Details</a>
            <td>${event.eventName}</td>
            <td>${event.eventTime}</td>
            <td>${event.eventDate} </td>
        </tr>
    </table>



    </c:forEach>



</div>






<%@ include file = "common/footer.jspf" %>