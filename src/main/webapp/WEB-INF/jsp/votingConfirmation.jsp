<%@ include file="common/header.jspf" %>
<c:url var="createEventConfirmation" value="/css/eventInvite.css"/>
<link rel="stylesheet" href="${createEventConfirmation}"/>

<div class="bannerPageExpired">
    <h1 class="oneandhalf">Thank You for submitting your vote</h1>
</div>
    <table>
        <c:forEach var="guest" items="${ guests }">
            <c:set var="guestUrl" value="http://localhost:8080/capstone_war_exploded/eventVote?guestId=${ guest.guestId }&eventId=${ event.eventId }"/>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Link to vote</th>
            </tr>
            <tr>
                <td>${ guest.guestName }</td>
                <td>${ guest.email }</td>
                <td><a href="${ guestUrl }">${ guestUrl }</a></td>
            </tr>
        </c:forEach>
    </table>



<%@ include file="common/footer.jspf" %>