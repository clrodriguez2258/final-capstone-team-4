<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
<c:url var="createEvent" value="/css/eventInvite.css"/>
<link rel="stylesheet" href="${createEvent}"/>


<div class="testbox">
    <div class="banner">
        <h1>Add Guests</h1>
    </div>
    <div>
        <c:url var="addGuest" value="/login/addGuests"/>
        <form:form action="${ addGuest }" method="POST">
            <div id="addGuests">
<%--                <form method="POST" action="${ addGuest }"/>--%>
                <div class="subheader">
                    <p><span>Invite your favorite people for great food and fun!</span></p>
                </div>
                <div class="item">
                    <p>Guest Name</p>
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
        <c:url var="doneAddingGuests" value="/createEventConfirmation"/>
        <input src="${ doneAddingGuests }" id="done-btn" type="submit" name="submit" value="Done"/>
    </div>
</div>

<%@ include file="common/footer.jspf" %>