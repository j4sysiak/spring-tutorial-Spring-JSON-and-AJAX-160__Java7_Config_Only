<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<table class="offers">

	<c:forEach var="offer" items="${offers}">
		<tr class="offerrow">

			<td class="name"><c:out value="${offer.user.name}"></c:out></td>

			<td class="contact"><a href="<c:url value='/message?uid=${offer.username}'/>">contact</a></td>

			<td class="offer"><c:out value="${offer.text}"></c:out></td>

		</tr>
	</c:forEach>
</table>

<p/>
<c:choose>
	<c:when test="${hasOffer}">
		<a href="${pageContext.request.contextPath}/createoffer">Edit or delete your current offer.</a>
	</c:when>
	<c:otherwise>
		<p>
			<a href="${pageContext.request.contextPath}/createoffer">Add a new offer.</a>
		</p>
</c:otherwise>

</c:choose>



<sec:authorize access="hasRole('ROLE_ADMIN')">
	<p>
		<a href="<c:url value='/admin'/>">Admin</a>
	</p>
</sec:authorize>

















































