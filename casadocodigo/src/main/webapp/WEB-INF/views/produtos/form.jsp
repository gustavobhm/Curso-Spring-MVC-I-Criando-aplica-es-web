<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>

	<h1>Casa do Código</h1>
	<form:form action="${s:mvcUrl('PC#gravar').build() }" method="POST"
		commandName="produto">
		<div>
			<label>Título</label>
			<form:input path="titulo" />
			<form:errors path="titulo" />
		</div>
		<div>
			<label>Descrição</label>
			<form:textarea path="descricao" rows="10" cols="20" />
			<form:errors path="descricao" />
		</div>
		<div>
			<label>Páginas</label>
			<form:input path="paginas" />
			<form:errors path="paginas" />
		</div>
		<div>
			<label>Data de Lançamento</label>
			<form:input path="dataLancamento" />
			<form:errors path="dataLancamento"></form:errors>
		</div>
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco}</label>
				<form:input path="precos[${status.index}].valor" />
				<form:hidden path="precos[${status.index}].tipo"
					value="${tipoPreco}" />
			</div>
		</c:forEach>

		<button type="submit">Cadastrar</button>
	</form:form>
</body>
</html>