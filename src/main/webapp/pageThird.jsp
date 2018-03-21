<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>PIT37 page third</title>
</head>
<body>

	<form action="pageThird" method="post">
	
					<input type="hidden" name="peselPodatnika" value="${requestScope.person.peselPodatnika}"/>
					<input type="hidden" name="peselMalzonka" value="${requestScope.person.peselMalzonka}"/>
					<input type="hidden" name="rok" value="${requestScope.person.rok}"/>
					<input type="hidden" name="nazwaUrzedu" value="${requestScope.pitDetails.nazwaUrzedu}"/>
					<input type="hidden" name="celZlozeniaFormularza" value="${requestScope.pitDetails.celZlozeniaFormularza}"/>
					

		<jsp:include page="header.jsp" /> <br><br>


		<div id="taxerData">
			<b> B1. DANE PODATNIKA</b>
		</div>

		<label>11. Nazwisko</label>
		<div>
			<input type="text" name="nazwisko">
		</div>

		<label>12. Pierwsze imię</label>
		<div>
			<input type="text" name="pierwszeImie">
		</div>

		<label>13. Data urodzenia</label>
		<div>
			<input type="text" name="dataUrodzenia">
		</div>

		<label>14. Kraj</label>
		<div>
			<input type="text" name="kraj">
		</div>

		<label>15. Województwo</label>
		<div>
			<input type="text" name="wojewodztwo">
		</div>

		<label>16. Powiat</label>
		<div>
			<input type="text" name="powiat">
		</div>

		<label>17. Gmina</label>
		<div>
			<input type="text" name="gmina">
		</div>

		<label>18. Ulica</label>
		<div>
			<input type="text" name="ulica">
		</div>

		<label>19. Nr domu</label>
		<div>
			<input type="text" name="nrDomu">
		</div>

		<label>20. Nr lokalu</label>
		<div>
			<input type="text" name="nrLokalu">
		</div>

		<label>21. Miejscowość</label>
		<div>
			<input type="text" name="miejscowosc">
		</div>

		<label>22. Kod pocztowy</label>
		<div>
			<input type="text" name="kodPocztowy">
		</div>

		<label>23. Poczta</label>
		<div>
			<input type="text" name="poczta">
		</div>
		<button type="button" onclick="javascript:history.back();"
			class="btn btn-default btn-md">back</button>
        <input type="submit" value="next"/>
	</form>

</body>
</html>