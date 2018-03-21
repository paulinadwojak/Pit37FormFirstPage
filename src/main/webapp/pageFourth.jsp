<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>PIT37 page fourth</title>
</head>
<body>

	<form action="pageFourth" method="post">
	
					<input type="hidden" name="peselPodatnika" value="${requestScope.person.peselPodatnika}"/>
					<input type="hidden" name="peselMalzonka" value="${requestScope.person.peselMalzonka}"/>
					<input type="hidden" name="rok" value="${requestScope.person.rok}"/>
					
					<input type="hidden" name="nazwaUrzedu" value="${requestScope.pitDetails.nazwaUrzedu}"/>
					<input type="hidden" name="celZlozeniaFormularza" value="${requestScope.pitDetails.celZlozeniaFormularza}"/>

					<input type="hidden" name="nazwisko" value="${requestScope.taxpayer.nazwisko}"/>
					<input type="hidden" name="pierwszeImie" value="${requestScope.taxpayer.pierwszeImie}"/>
					<input type="hidden" name="dataUrodzenia" value="${requestScope.taxpayer.dataUrodzenia}"/>
					<input type="hidden" name="kraj" value="${requestScope.taxpayer.kraj}"/>
					<input type="hidden" name="wojewodztwo" value="${requestScope.taxpayer.wojewodztwo}"/>
					<input type="hidden" name="powiat" value="${requestScope.taxpayer.powiat}"/>
					<input type="hidden" name="gmina" value="${requestScope.taxpayer.gmina}"/>
					<input type="hidden" name="ulica" value="${requestScope.taxpayer.ulica}"/>
					<input type="hidden" name="nrDomu" value="${requestScope.taxpayer.nrDomu}"/>
					<input type="hidden" name="nrLokalu" value="${requestScope.taxpayer.nrLokalu}"/>
					<input type="hidden" name="kodPocztowy" value="${requestScope.taxpayer.kodPocztowy}"/>
					<input type="hidden" name="miejscowosc" value="${requestScope.taxpayer.miejscowosc}"/>
					<input type="hidden" name="poczta" value="${requestScope.taxpayer.poczta}"/>


		<jsp:include page="header.jsp" /> <br> <br>

		<div id="taxerData">
			<b> B1. DANE MAŁŻONKA</b>
		</div>

		<label>11. Nazwisko</label>
		<div>
			<input type="text" name="nazwiskoMalzonka">
		</div>

		<label>12. Pierwsze imię</label>
		<div>
			<input type="text" name="pierwszeImieMalzonka">
		</div>

		<label>13. Data urodzenia</label>
		<div>
			<input type="text" name="dataUrodzeniaMalzonka">
		</div>

		<label>14. Kraj</label>
		<div>
			<input type="text" name="krajMalzonka">
		</div>

		<label>15. Województwo</label>
		<div>
			<input type="text" name="wojewodztwoMalzonka">
		</div>

		<label>16. Powiat</label>
		<div>
			<input type="text" name="powiatMalzonka">
		</div>

		<label>17. Gmina</label>
		<div>
			<input type="text" name="gminaMalzonka">
		</div>

		<label>18. Ulica</label>
		<div>
			<input type="text" name="ulicaMalzonka">
		</div>

		<label>19. Nr domu</label>
		<div>
			<input type="text" name="nrDomuMalzonka">
		</div>

		<label>20. Nr lokalu</label>
		<div>
			<input type="text" name="nrLokaluMalzonka">
		</div>

		<label>21. Miejscowość</label>
		<div>
			<input type="text" name="miejscowoscMalzonka">
		</div>

		<label>22. Kod pocztowy</label>
		<div>
			<input type="text" name="kodPocztowyMalzonka">
		</div>

		<label>23. Poczta</label>
		<div>
			<input type="text" name="pocztaMalzonka">
		</div>

		<button type="button" onclick="javascript:history.back();"
			class="btn btn-default btn-md">back</button>
        <input type="submit" value="login"/>

	</form>

</body>
</html>