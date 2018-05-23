<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/header.jsp" />

<body>

	<div class="container">

		<c:if test="${not empty msg}">
			<div class="alert alert-${css} alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong>${msg}</strong>
			</div>
		</c:if>

		<h1>All books</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>#ID</th>
					<th>Author</th>
					<th>Title</th>
					<th>Price</th>
					<th>Description</th>
				</tr>
			</thead>

			<c:forEach var="book" items="${books}">
				<tr>
					<td>
						${book.id}
					</td>
					<td>${book.author}</td>
					<td>${book.title}</td>
					<td>${book.price}</td>
					<td>${book.description}</td>
					<td>
						<spring:url value="/books/${book.id}" var="bookUrl" />
						<spring:url value="/books/${book.id}/delete?${_csrf.parameterName}=${_csrf.token}" var="deleteUrl" />
						<spring:url value="/books/${book.id}/update" var="updateUrl" />

						<button class="btn btn-info" onclick="location.href='${bookUrl}'">Query</button>
						<button class="btn btn-primary" onclick="location.href='${updateUrl}'">Update</button>
						<button class="btn btn-danger" onclick="this.disabled=true;post('${deleteUrl}')">Delete</button></td>
				</tr>
			</c:forEach>
		</table>

	</div>

	<jsp:include page="../fragments/footer.jsp" />

</body>
</html>