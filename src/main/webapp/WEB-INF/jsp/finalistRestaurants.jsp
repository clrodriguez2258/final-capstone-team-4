<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file = "common/header.jspf" %>
<h2>Your current leader is:</h2>
<table style=" width:25%">
    <tr style="font-size: medium">
        <td>Name</td>
        <td>Time</td>
        <td>Date of event</td>
    </tr>
    <tr style="font-size: medium">
        <td>${event.eventName}</td>
        <td>${event.eventTime}</td>
        <td>${event.eventDate}</td>
    </tr>
</table>





<%--        <c:forEach var="restaurant" items="${restaurants}">--%>
            <div>
                <c:url var="restaurantImage" value="/img/${  finalRestaurant.image }"/>
                <img src="${restaurantImage}">
                <p>${finalRestaurant.restaurantName}</p>
                <p> ${ finalRestaurant.street } ${ finalRestaurant.city }, ${ finalRestaurant.state } ${ finalRestaurant.zipCode }</p>
<%--                <label for="chooseAsWinner"> Choose as Winner </label>--%>
<%--                <input type="radio" id="chooseAsWinner" class="chooseAsWinner" name="winnerRadio" value="winner">--%>
<%--                <br>--%>

            </div>


<%--        </c:forEach>--%>







<%@ include file = "common/footer.jspf" %>