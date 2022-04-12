<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
<c:url var="createEvent" value="/css/eventInvite.css"/>
<link rel="stylesheet" href="${createEvent}"/>


<div class="testbox">
    <div class="banner">
        <h1>Create Your Event</h1>
    </div>

    <c:url var="addGuests" value="/login/createEvent"/>
    <%--        <form:form action="${ addGuests }" method="POST">--%>
    <div id="eventForm">
        <div>
            <c:url var="createEventImage" value="/img/groupdinner.jpg"/>
            <img class="groupdinner" src="${ createEventImage }"/>
        </div>
        <div class="subheader">
            <p><span>Invite your favorite people for great food and fun!</span></p>
        </div>


        <form method="POST" action="${ addGuests }">

            <div class="inputs">
                <div class="item">
                    <label for="eventName" class="inputLabel">Event Name</label>
                    <input type="text" name="eventName" id="eventName"/>
                </div>
                <div class="item">
                    <label for="eventDate" class="inputLabel">Event Date</label>
                    <input type="date" name="eventDate" id="eventDate" required/>
                    <i class="fas fa-calendar-alt"></i>
                </div>
                <div class="item">
                    <label for="eventTime" class="inputLabel">Event Time</label>
                    <input type="time" name="eventTime" id="eventTime" required/>
                </div>
                <div class="item">
                    <label for="decisionDate" class="inputLabel">Decision due date</label>
                    <input type="date" name="decisionDate" id="decisionDate" required/>
                </div>
                <br/>
                <div class="item">
                <button type="submit" class="submit-btn" value="submit" formaction="${addGuests}">Choose restaurants</button>
                <%--                        <input id="event-btn" type="submit" name="submit" value="Choose Restaurants"/>--%>
                </div>

            </div>
        </form>
    </div>

    <%--        </form:form>--%>
</div>



<%@ include file="common/footer.jspf" %>