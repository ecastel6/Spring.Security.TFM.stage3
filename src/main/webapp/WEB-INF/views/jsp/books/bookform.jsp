<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/header.jsp" />

<div class="container">

	<c:choose>
		<c:when test="${bookForm['new']}">
			<h1>Add book</h1>
		</c:when>
		<c:otherwise>
			<h1>Update book</h1>
		</c:otherwise>
	</c:choose>
	<br />

	<spring:url value="/books" var="bookActionUrl" />

	<form:form class="form-horizontal" method="post" modelAttribute="bookForm" action="${bookActionUrl}">

		<form:hidden path="id" />

		<spring:bind path="author">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Author</label>
				<div class="col-sm-10">
					<form:input path="author" type="text" class="form-control " id="name" placeholder="Name" />
					<form:errors path="author" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="title">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Title</label>
				<div class="col-sm-10">
					<form:input path="title" class="form-control" id="title" placeholder="Title" />
					<form:errors path="title" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="price">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Price</label>
				<div class="col-sm-10">
					<form:input path="price" class="form-control" id="price" placeholder="price" />
					<form:errors path="price" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="description">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Description</label>
				<div class="col-sm-10">
					<form:textarea path="description" rows="5" class="form-control" id="description" placeholder="description" />
					<form:errors path="description" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<c:choose>
					<c:when test="${bookForm['new']}">
						<button type="submit" class="btn-lg btn-primary pull-right">Add</button>
					</c:when>
					<c:otherwise>
						<button type="submit" class="btn-lg btn-primary pull-right">Update</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</form:form>

</div>

<jsp:include page="../fragments/footer.jsp" />

</body>
</html>