<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><c:out value="${tit}"></c:out></title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<h1 class="text-center">Todo List</h1>
	<div class="container">
		<div class="row">

			<c:if test="${not empty msg}">
				<div class="alart alart-success">
					<b><c:out value="${msg}"></c:out></b>
				</div>
			</c:if>

			<div class="col-md-3">
				<div class="list-group">

					<h3>Manu</h3>

					<a href='<c:url value="/add"></c:url>'
						class="list-group-item list-group-item-action list-group-item-primary">Add
						Todo</a> <a href='<c:url value="/"></c:url>'
						class="list-group-item list-group-item-action list-group-item-secondary">View
						todo</a>
				</div>
			</div>

			<div class="col-md-9">
				<h3 class="text-center">Content</h3>

				<c:if test="${page=='Home'}">
					<h3 class="text-center">view all todo</h3>
					<div class="container mt-2">
						<c:forEach var="t" items="${list}">
							<div class="card mt-2" style="width: 50rem;">
								<div class="card-body">
									<h5 class="card-tittle">
										<c:out value="${t.tittle}"></c:out>
									</h5>
									<p class="card-text">
										<c:out value="${t.content}"></c:out>
									</p>
									<p class="card-text">
										<c:out value="${t.date}"></c:out>
									</p>
								</div>
							</div>
						</c:forEach>
					</div>

				</c:if>

				<c:if test="${page=='Add'}">
					<f:form action="/savetodo" method="post" modelAttribute="todo">
						<div class="mt-2">
							<f:input path="tittle" placeholder="your titrtle"
								class="form-control" />
						</div>
						<div class="mt-2">
							<f:textarea path="content" placeholder="Discription"
								class="form-control" rows="5" />
						</div>
						<div class="mt-2">
							<f:button class="btn btn-primary">save</f:button>
						</div>
					</f:form>
				</c:if>


			</div>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>