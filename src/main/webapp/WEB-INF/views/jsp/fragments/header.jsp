<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
<title>Spring MVC Form Handling Example</title>

<spring:url value="/resources/core/css/app.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />

<spring:url value="/resources/images/MIWlogo.png" var="applogo"></spring:url>
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>

<spring:url value="/" var="urlHome" />
<spring:url value="/books/add" var="urlAddBook" />
<spring:url value="/logout" var="urlLogout"/>

<nav class="navbar navbar-inverse ">
	<div class="container">
		<div class="navbar-header">
			<%--<a class="navbar-brand" href="${urlHome}">Spring MVC Form</a>--%>
            <a href="${urlHome}"><img src="${applogo}" height="42"
                                      class="img-responsive center-block"></a>
		</div>
		<div id="navbar">
			<ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="${urlHome}">Home</a></li>
                <li class="active"><a href="${urlAddBook}">Add Book</a></li>
                <li class="active"> <a href="${urlLogout}">Logout</a></li>
			</ul>
		</div>
	</div>
</nav>