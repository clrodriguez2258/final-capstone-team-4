<%@ include file = "common/header.jspf" %>

<c:url var="cssUrl" value="/css/site.css"/>
<link rel="stylesheet" href="${cssUrl}"/>

<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>


<div  class="container">


  <div id="profile">
    <p id="userNameText">${user.username} </p>

  </div>
  <c:forEach var="event" items="${events}">
  <div id="userEvents">
    <p id="eventName">${event.eventName}</p>




  </div>

  </c:forEach>



</div>






<%@ include file = "common/footer.jspf" %>