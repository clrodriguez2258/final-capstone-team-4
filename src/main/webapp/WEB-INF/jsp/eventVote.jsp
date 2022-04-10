<%@ include file="common/header.jspf" %>

<c:url var="cssUrl" value="/css/site.css"/>
<link rel="stylesheet" href="${cssUrl}"/>
<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>

<div id=" masonry-page">
    <div id="grid">
        <c:forEach var="restaurant" items="${ restaurants }">
        <c:choose>
            <c:when test="${ restaurant.isOpen() }">
                <c:set var="isOpen" value="Open Now"/>
                <c:set var="openCloseColor" value="green"/>
            </c:when>
            <c:otherwise>
                <c:set var="isOpen" value="Closed"/>
                <c:set var="openCloseColor" value="red"/>
            </c:otherwise>
        </c:choose>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img class="displayRestaurantImage" src="<c:url value="/img/${ restaurant.image }"/>"
                         alt="Restaurant Logo"/>
                    <div class="restaurantInfo">
                        <h3>${ restaurant.restaurantName }</h3>
                        <p>Cuisine: ${ restaurant.typeOfEstablishment }</p>
                        <p style="color: ${ openCloseColor };"><strong>${ isOpen }</strong></p>
                        <p>Hours: ${ restaurant.openTime }AM - ${ restaurant.closeTime.minusHours(12) }PM</p>
                        <p>
                            Address: ${ restaurant.street } ${ restaurant.city }, ${ restaurant.state } ${ restaurant.zipCode }</p>
                        <span>
                    <h5>Phone Number: ${ restaurant.phoneNumber }</h5>
                    <button type="button" style="width: 45%">Call to Order</button>
                </span>
                        <img id="pizzaSliceImage" src="img/pizzaSlice${ restaurant.rating }.png"
                             alt="Pizza Slice Rating">
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div>

    <%--&lt;%&ndash;<div class="card" style="width: 18rem;">&ndash;%&gt;--%>
    <%--<div id="card-private" class="card" style="width: 100%;">--%>
    <%--    <div id="card-content-private">--%>
    <%--        <c:url var="restaurantUrl" value="/img/chipotle.jpg"/>--%>
    <%--        <img class="card-img-top" src="${ restaurantUrl }" alt="Chipotle Logo"--%>
    <%--             style="width: 100%; margin-bottom: -10%;">--%>

    <%--        <button type="submit" class="up-down-vote-button" id="downbutton"><a href="#" class="card-link">&#128078;</a>--%>
    <%--        </button>--%>
    <%--        <button type="submit" class="up-down-vote-button" id="upbutton"><a href="#" class="card-link">&#128077;</a>--%>
    <%--        </button>--%>

    <%--        <div class="card-body">--%>
    <%--            <h3 class="card-title"><strong>Chipotle</strong></h3>--%>
    <%--            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's--%>
    <%--                content.</p>--%>
    <%--        </div>--%>
    <%--        <ul class="list-group list-group-flush">--%>
    <%--            <li class="list-group-item">Address: 1234 Main Street, Techtown, USA</li>--%>
    <%--            <li class="list-group-item">Phone: (773)202-5862</li>--%>
    <%--            <li class="list-group-item">Open: 10:00AM - 10:00PM</li>--%>
    <%--            <li class="list-group-item">Price: $</li>--%>
    <%--        </ul>--%>
    <%--    </div>--%>
    <%--</div>--%>


    <%@ include file="common/footer.jspf" %>
