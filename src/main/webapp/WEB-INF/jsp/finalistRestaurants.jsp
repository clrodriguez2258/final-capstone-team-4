<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file = "common/header.jspf" %>





<div class="container">

    <div>
        <p>${event.eventName} evenName </p>
        <p>${event.eventTime} EventTime  </p>
        <p>${event.eventDate}eventDate </p>

        <br/>

        <c:forEach var="restaurant" items="${restaurants}">
            <div>
                <c:url var="restaurantImage" value="/img/${ restaurant.image }"></c:url>
                <img src="${restaurantImage}">
                <h3>${retaurant.retaurantName}</h3>
                <p> Address: ${ restaurant.street } ${ restaurant.city }, ${ restaurant.state } ${ restaurant.zipCode }</p>
                <label for="chooseAsWinner"> Choose as Winner </label>
                <input type="radio" id="chooseAsWinner" class="chooseAsWinner" name="winnerRadio" value="winner">
                <br>

            </div>



        </c:forEach>




    </div>


</div>



<%@ include file = "common/footer.jspf" %>