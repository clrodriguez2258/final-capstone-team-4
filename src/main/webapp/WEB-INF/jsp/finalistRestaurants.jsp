<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file = "common/header.jspf" %>





<div class="container"   >

    <div>
        <p>Your current leader is:</p>
        <p>${event.eventName}  </p>
        <p>${event.eventTime}   </p>
        <p>${event.eventDate} </p>

        <br/>

<%--        <c:forEach var="restaurant" items="${restaurants}">--%>
            <div style="background-color: aliceblue;
            width: 300px;
            height: auto;
            margin-bottom: 50px;
            margin-right: 20px;
            display: inline-block;

               ">
                <c:url var="restaurantImage" value="/img/${  finalRestaurant.image }"/>
                <img src="${restaurantImage}" style="width: 300px;
height: 300px">
                <p>${finalRestaurant.restaurantName}</p>
                <p> ${ finalRestaurant.street } ${ finalRestaurant.city }, ${ finalRestaurant.state } ${ finalRestaurant.zipCode }</p>
<%--                <label for="chooseAsWinner"> Choose as Winner </label>--%>
<%--                <input type="radio" id="chooseAsWinner" class="chooseAsWinner" name="winnerRadio" value="winner">--%>
<%--                <br>--%>

            </div>


<%--        </c:forEach>--%>


    </div>

</div>



<%@ include file = "common/footer.jspf" %>