<%@ include file = "common/header.jspf" %>

<div id="grid" class="main-content ">
    <c:forEach var="restaurants" items="${restaurant}">
      <ul>
          <li>${restaurants.imageName}</li>
      </ul>
    </c:forEach>
</div>

<%@ include file = "common/footer.jspf" %>