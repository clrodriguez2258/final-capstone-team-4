<%@ include file="common/header.jspf" %>
<c:url var="createEventConfirmation" value="/css/eventConfirmation.css"/>
<link rel="stylesheet" href="${ createEventConfirmation }"/>

<div>
<div class="bannerPageExpired; redBox">

    <h1 class="oneandhalf">The event invitations have been created using the following recipients:</h1>
</div>

<div class="guestList">
    <ul id="list">
        <c:forEach var="guest" items="${ guests }">
            <c:set var="guestUrl"
                   value="http://localhost:8080/capstone_war_exploded/eventVote?guestId=${ guest.guestId }&eventId=${ event.eventId }"/>
            <li>${ guest.guestName } - ${ guest.email }  </li>
            <li> <a href="${ guestUrl }" target="_blank">${ guestUrl }</a>  </li>
        </c:forEach>
    </ul>
</div>
</div>

<%@ include file="common/footer.jspf" %>