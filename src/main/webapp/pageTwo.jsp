<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>PIT37 Page two</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<form action="pageTwo" method="post">
	
					<input type="hidden" name="peselPodatnika" value="${requestScope.person.peselPodatnika}"/>
					<input type="hidden" name="peselMalzonka" value="${requestScope.person.peselMalzonka}"/>
					<input type="hidden" name="rok" value="${requestScope.person.rok}"/>


		<jsp:include page="header.jsp" />
		<br>
		<br> <label>9. Urząd do którego adresowane jest zeznanie:
		</label>
		<div>
			<input type="text" name="nazwaUrzedu">
		</div>

		<label>10. Cel złożenia formularza (zaznaczyć właściwy
			kwadrat):</label>
		<div>
			<input type="radio" name="celZlozeniaFormularza"
				value="Złożenie zeznania"><label>1. Złożenie
				zeznania</label>
		</div>
		<div>
			<input type="radio" name="celZlozeniaFormularza"
				value="Korekta zeznania"><label>2. Korekta zeznania</label>
		</div>

		<button type="button" onclick="javascript:history.back();"
			class="btn btn-default btn-md">back</button>

        <input type="submit" value="next"/>

	</form>

</body>
</html>