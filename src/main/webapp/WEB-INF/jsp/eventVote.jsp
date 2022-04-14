<%@ include file="common/header.jspf" %>

<c:url var="cssUrl" value="/css/site.css"/>
<link rel="stylesheet" href="${cssUrl}"/>
<c:url var="cssUrl2" value="/css/site2.css"/>
<link rel="stylesheet" href="${cssUrl2}"/>

<div id=" masonry-page">
    <c:url var="eventVote" value="/eventVote"/>
    <form class="restaurantChoice" action="${eventVote}" method="POST">
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



                    <div class="thumbnail">
                        <img class="displayRestaurantImage" src="<c:url value="/img/${ restaurant.image }"/>"
                             alt="Restaurant Logo"/>
                        <div class="restaurantInfo">
                            <span>

                                <button type="submit" class="vote-submit-btn" value="${ restaurant.restaurantId }"
                                        formaction="${eventVote}" name="restaurantId"
                                        id="upvoteButton${ restaurant.restaurantId }"
                                        class="voteButton"
                                        ><span
                                        class="glyphicon glyphicon-ok"
                                        ></span></button>
<%--                          <button type="button" class="btn btn-default btn-sm" id="downvoteButton"--%>
<%--                                style="margin-top: 5px; background: lightcoral; display: inline-block; width: 49%"><span--%>
<%--                                class="glyphicon glyphicon-remove"--%>
<%--                                style="color: darkred; font-size: 150%;"></span></button>--%>
                            </span>
                            <h3><strong>${ restaurant.restaurantName }</strong></h3>
                            <p><strong>Cuisine: </strong>${ restaurant.typeOfEstablishment }</p>
                            <p style="color: ${ openCloseColor };"><strong>${ isOpen }</strong></p>
                            <p><strong>Hours: </strong>${ restaurant.openTime }AM - ${ restaurant.closeTime.minusHours(12) }PM
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
                </c:forEach>
            </div>
    </form>
</div>

<%--<script>--%>
<%--restaurantChoice.addEventListener('input',() => {--%>
<%--    if(upvoteButton.value === true || downvoteButton.value === true){--%>
<%--        upvoteButton.setAttribute(disabled);--%>
<%--        downvoteButton.setAttribute(disabled);--%>
<%--    }--%>
<%--});--%>
<%--</script>--%>

<%@ include file="common/footer.jspf" %>
