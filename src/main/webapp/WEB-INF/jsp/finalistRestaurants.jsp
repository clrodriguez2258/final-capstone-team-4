<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>
<table style=" width:25%; margin-left: 53px;">
    <tr style="font-size: 32pt">
        <td>${event.eventName}</td>
    </tr>
    <tr style="font-size: 16pt">
        <td>Date: ${event.eventDate}</td>
    </tr>
    <tr style="font-size: 16pt">
        <td>Time: ${event.eventTime}</td>
    </tr>
</table>
<%--<h2>${ event.eventName }</h2>--%>
<%--<h3>Date: ${ event.eventDate }</h3>--%>
<%--<h3>Time: ${ event.eventTime }</h3>--%>
<h2 style="margin-left: 53px;">Your current leader is:</h2>
<div id=" masonry-page">
    <div id="grid">
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
                        <h3><strong>${ restaurant.restaurantName }</strong></h3>
                        <p><strong>Cuisine: </strong>${ restaurant.typeOfEstablishment }</p>
                        <p style="color: ${ openCloseColor };"><strong>${ isOpen }</strong></p>
                        <p><strong>Hours: </strong>${ restaurant.openTime }AM
                            - ${ restaurant.closeTime.minusHours(12) }PM
                        </p>
                        <p>
                            <strong>Address:</strong> ${ restaurant.street } ${ restaurant.city }, ${ restaurant.state } ${ restaurant.zipCode }
                        </p>
                        <span>
                            <h5><strong>Call To Order:&nbsp;&nbsp;&nbsp;</strong><a
                                    href="tel:${ restaurant.phoneNumber }"
                                    style="color: red; font-size: 24px;">&#9742;</a></h5>
                                </span>
                        <div class="rating">
                            <p><strong>Rating: </strong>
                                <c:url var="pizzaSliceImage" value="/img/pizzaSlice.png"/>
                                <c:forEach begin="1" end="${ restaurant.rating }" var="pizzaCount">
                                    <span><img id="pizzaSliceImage" src="${ pizzaSliceImage }"
                                               alt="Pizza Slice Rating"></span>
                                </c:forEach>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="common/footer.jspf" %>