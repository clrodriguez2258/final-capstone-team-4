<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
<c:url var="createEvent" value="/css/eventInvite.css"/>
<link rel="stylesheet" href="${createEvent}"/>


<div class="testbox">
    <div class="banner">
        <h1>Add Guests</h1>
    </div>
    <div>
        <c:url var="addGuest" value="/login/addMoreGuests"/>
        <form:form action="${ addGuest }" method="POST">
            <div id="addGuests">
                    <%--                <form method="POST" action="${ addGuest }"/>--%>
                <div class="subheader">
                    <p><span>Invite your favorite people for great food and fun!</span></p>
                </div>
                <div class="item">
                    <p>Add Guests</p>
                    <div class="guestName">
                        <input type="text" name="guestName" id="guestName"/>
                    </div>
                </div>
                <div class="email">
                    <p>Email</p>
                    <input type="email" name="email" id="email" required/>
                    <i class="email"></i>
                </div>
                <div class="btn-block">
                    <input id="add-btn" type="submit" name="submit" value="Add"/>
                </div>
                </form>
            </div>
        </form:form>
        <ul id="theList">
            <c:forEach var="guest" items="${ guests }">
                <li>${ guest.guestName } - ${ guest.email }</li>
            </c:forEach>
        </ul>
        <c:url var="doneAddingGuests" value="/login/createEventConfirmation"/>
        <a href="${ doneAddingGuests }">Done</a>
        <%--        <button formmethod="POST" id="submit-btn" type="submit" name="submit" value="Done"></button>--%>
    </div>
</div>

<%--<script>--%>
<%--    const guestName = document.getElementById('guestInput');--%>
<%--    const btn1 = document.getElementById('btn1')--%>
<%--    const completelist = document.getElementById('theList');--%>

<%--    function addelement() {--%>
<%--        completelist.innerHTML += '<li>' + guestName.value + '</li>';--%>
<%--    }--%>

<%--    btn1.addEventListener('click', addelement);--%>

<%--</script>--%>

<%@ include file="common/footer.jspf" %>