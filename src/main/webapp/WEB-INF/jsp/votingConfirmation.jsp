<%@ include file="common/header.jspf" %>
<c:url var="createEventConfirmation" value="/css/eventInvite.css"/>
<link rel="stylesheet" href="${ createEventConfirmation }"/>

<div class="bannerPageExpired">
    <h1 class="oneandhalf">Thank you for submitting your vote</h1>
</div>
<%--    <table style="width:100%;">--%>
<%--        <c:forEach var="guest" items="${ guests }">--%>
<%--            <c:set var="guestUrl" value="http://localhost:8080/capstone_war_exploded/eventVote?guestId=${ guest.guestId }&eventId=${ event.eventId }"/>--%>
<%--            <tr>--%>
<%--                <td >${ guest.guestName }</td>--%>
<%--                <td>${ guest.email }</td>--%>
<%--                <td><a href="${ guestUrl }">${ guestUrl }</a></td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>



<%@ include file="common/footer.jspf" %>