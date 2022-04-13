<%@ include file="common/header.jspf" %>
<c:url var="createEventConfirmation" value="/css/eventConfirmation.css"/>
<link rel="stylesheet" href="${createEventConfirmation}"/>

<div class="confirmbannerPageExpired">
    <h1 class="oneandhalf">The event invitation has been sent to the following recipients:</h1>
    <div>
        <br>
        <br>
    </div>
    <div>
        <br>
    </div>
<div class="guestList">
    <ul>
        <c:forEach var="guest" items="${ guests }">
            <c:set var="guestUrl"
                   value="http://localhost:8080/capstone_war_exploded/eventVote?guestId=${ guest.guestId }&eventId=${ event.eventId }"/>
            <li>${ guest.guestName } - ${ guest.email } - <a href="${ guestUrl }">${ guestUrl }</a></li>
        </c:forEach>
    </ul>
</div>
</div>

<%@ include file="common/footer.jspf" %>