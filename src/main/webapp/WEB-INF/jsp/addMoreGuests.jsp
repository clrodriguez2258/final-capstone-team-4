<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
<c:url var="createEvent" value="/css/addGuests.css"/>
<link rel="stylesheet" href="${createEvent}"/>


<div class="testbox">
    <div class="addGuestsBanner">
        <h1>Add Guests</h1>
    </div>
    <div id="guestPage">
        <div>
            <br>
        </div>
        <div class="guestsSubheader">
            <p><span>Invite your favorite people for great food and fun!</span></p>
        </div>
        <c:url var="addGuest" value="/login/addMoreGuests"/>
        <form:form action="${ addGuest }" method="POST">

            <div id="addGuests">

                <div class="guestItem">
                    <p>Guest Name</p>
                    <div class="guestName">
                        <input type="text" name="guestName" id="guestName" required/>
                    </div>
                </div>
                <div class="guestItem">
                    <p>Email</p>
                    <input type="email" name="email" id="email" required/>
                    <i class="email"></i>
                </div>
                <div class="eventButton">
                    <input id="event-btn" type="submit" name="submit" value="Add"/>
                </div>
                <div>
                    <br>
                </div>
            </div>
        </form:form>
        <ul id="theList" style="list-style: none">
            <c:forEach var="guest" items="${ guests }">
                <li>${ guest.guestName } - ${ guest.email }</li>
            </c:forEach>
        </ul>
        <c:url var="doneAddingGuests" value="/login/createEventConfirmation"/>
        <a class="done-btn" href="${ doneAddingGuests }">Done</a>
        <div>
            <br>
        </div>
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