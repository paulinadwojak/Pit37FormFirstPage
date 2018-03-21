<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Page PIT37</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<form action="pagePit37" method="post">
		<jsp:include page="header.jsp" /><br> <br>

<c:set var="person" value="scope" scope="session"  />


		<div id="container">

			<div id="upperSection">
				<div id="firstRow">
					<label>1. Identyfikator podatkowy NIP / numer PESEL
						podatnika</label>
					<div>
						${requestScope.person.peselPodatnika}"
					</div>

					<label>2. Identyfikator podatkowy NIP / numer PESEL
						małżonka</label>

					<div>
							${requestScope.person.peselMalzonka}
					</div>

				</div>
				<div class="square">3. Nr dokumentu</div>
				<div class="square">4. Status</div>
			</div>

			<div id="gingerSection">
				<b>

					<div id="firstSentence">
						<i><b>Prawidłowe wypełnienie formularza ułatwi
								wcześniejsze zapoznanie się z broszurą informacyjną dostepną w
								urzędach.</b></i>
					</div>
					<div id="secondSentence">
						<b>PIT-37</b>
					</div>

					<div id="thirdSentence">
						<div id="thirdSentenceOne">
							<b>ZEZNANIE O WYSOKOSCI OSIĄGNIĘTEGO DOCHODU (PONIESIONEJ
								STRATY) W ROKU PODATKOWYM </b>
						</div>
						<div id="thirdSentenceSecond">
							<label>5. ROK</label>
							<div>
								${requestScope.person.rok}
							</div>
						</div>

					</div> Formularz przeznaczony jest dla podatników, którzy w roku
					podatkowym:<br> 1) wyłącznie za pośrednictwem płatnika
					uzyskali przychody ze źródeł położonych na terytorium
					Rzeczypospolitej Polskiej, podlegające opodatkowaniu na ogólnych
					zasadach przy zastosowaniu skali podatkowej, tj. w szczególności z
					tytułu: <br>

					<div id="text">
						<div id="textPart1">
							- wynagrodzeń i innych przychodów ze stosunku służbowego,
							stosunku pracy (w tym społdzielczego stosunku pracy) oraz pracy
							nakładczej,<br> - emerytur lub rent krajowych (w tym rent
							strukturalnych, rent socjalnych),<br> - świadczeń
							przedemerytalnych, zasiłków przedemerytalnych,<br> -
							należności z tytułu członkostwa w rolniczych społdzielniach
							produkcyjnych lub innych społdzielniach zajmujących się produkcją
							rolną,<br> - zasiłków pieniężnych z ubezpieczenia
							społecznego,<br> - stypendiów,
						</div>
						<div id="textPart2">
							- przychodów z dzialałności wykonywanej osobiście (między innymi
							z umów zlecenia, kontraktów menedżerskich, zasiadania w radach
							nadzorczych, pełnienia obowiązkow społecznych, działalności
							sportowej),<br> - przychodów z praw autorskich i innych praw
							majątkowych,<br> - świadczeń wypłaconych z Funduszu Pracy
							lub z Funduszu Gwarantowanych świadczeń Pracowniczych,<br> -
							należnosci za prace przypadających tymczasowo aresztowanym oraz
							skazanym,<br> - należnosci z umowy aktywizacyjnej,
						</div>
					</div> 2) nie prowadzili pozarolniczej działalności gospodarczej oraz
					działów specjalnych produkcji rolnej opodatkowanych na ogólnych
					zasadach przy zastosowaniu skali podatkowej,<br> 3) nie są
					obowiązani doliczać do uzyskanych dochodów dochodów małoletnich
					dzieci,<br> 4) nie obnizają dochodów o straty z lat ubiegłych.

				</b>
			</div>

			<div id="graySection">

				Podstawa prawna:&nbsp;&nbsp;Art. 45 ust. 1 ustawy z dnia 26 lipca
				1991 r. o podatku dochodowym od osób fizycznych (Dz. U. z 2012 r.
				poz. 361, z pozn. zm.), zwanej dalej "ustawą".<br> Termin
				&nbsp;składania:&nbsp;&nbsp;Do dnia 30 kwietnia roku następującego
				po roku podatkowym.<br> Miejsce składania:&nbsp;&nbsp;Urząd, o
				którym mowa w art. 45 ustawy, zwany dalej "urzędem".<br>

			</div>

			<div id="selectionSection">

				<div>
					Wybór sposobu opodatkowania (zaznaczyć właściwe kwadraty):<br>
				</div>
				<div id="selectionSectionOne">
					<div class="odp0">6.</div>
					<div class="odp1">
						<input type="radio" name="sposobOpodatkowania"
							value=  /> <label>1.indywidualnie</label>
					</div>
					<div class="odp2">
						<input type="radio" name="sposobOpodatkowania" onclick=\
							"getAnswer('wspólnie z małżonkiem
							Art6Ust2') value="wspólnie z małżonkiem Art6Ust2"><label>2.
							wspólnie z małżonkiem, zgodnie z wnioskiem, o którym mowa w art.
							6 ust. 2 ustawy</label>
					</div>
					<div class="odp3">
						<input type="radio" name="sposobOpodatkowania" onclick=\
							"getAnswer('wspolnie z małżonkiem
							Art6Ust1')
							value="wspolnie z małżonkiem Art6Ust1"><label>3.
							wspólnie z małżonkiem, zgodnie z wnioskiem, o którym mowa w art.
							6a ust. 1 ustawy</label>
					</div>
					<div class="odp4">
						<input type="radio" name="sposobOpodatkowania" onclick=\
							"getAnswer('osoba samotnie Wychowujaca
							dzieci')
							value="osoba samotnie Wychowujaca dzieci"><label>4.
							w sposób przewidziany dla osób samotnie wychowujżcych dzieci</label>
					</div>
				</div>
				<div id="selectionSectionTwo">
					<div class="odp5">7.</div>
					<div class="odp6">
						<input type="radio" name="sposobArt29Ust4" onclick=\
							"getAnswer('b') value="indywidualnie"><label>w
							sposób przewidziany w art. 29 ust. 4 ustawy – podatnik </label>
					</div>
				</div>
				<div id="selectionSectionTwo">
					<div class="odp5">8.</div>
					<div class="odp6">
						<input type="radio" name="sposobArt29Ust4" onclick=\
							"getAnswer('sposob przewidziawny w
							Art29Ust4') value="indywidualnie"><label>w sposób
							przewidziany w art. 29 ust. 4 ustawy – małżonek </label>
					</div>
				</div>
			</div>

			<div id="statement">Zaznaczenie odpowiednich kwadratów oraz
				złoenie podpisu(ów) w części K traktuje się na równi ze złożeniem
				wniosku o zastosowanie wskazanego sposobu opodatkowania. Kwadrat w
				poz.7 lub 8 zaznacza się łąznie z kwdratem 1,2,3 albo 4 w poz.6</div>

			<div id="A">
				<div id="placeAndGoal">
					<b> A. MIEJSCE I CEL SKŁADANIA ZEZNANIA</b>
					<div id="AB1">
						<label>9. Urząd do którego adresowane jest zeznanie</label>
						<div>
							${requestScope.pitDetails.nazwaUrzedu}
						</div>
					</div>
					<div id="AB2">


						<label>10. Cel złożenia formularza (zaznaczyć właściwy
							kwadrat):</label>
						<div id="celZeznania0">
							<div id="celZeznania1">
								<input type="radio" name="celZlozeniaFormularza" onclick=\
									"getAnswer('Złożenie
									zeznania')
									value="Złożenie zeznania"><label>1.
									Złożenie zeznania</label>
							</div>
							<div id="celZeznania2">
								<input type="radio" name="celZlozeniaFormularza" onclick=\
									"getAnswer('korekta
									zeznania')
									value="korekta zeznania"><label>2.
									Korekta zeznania</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="B1">
				<div id="dataAndAddress">
					<b> B. DANE IDENTYFIKACYJNE I AKTUALNY ADRES ZAMIESZKANIA</b>
				</div>
				<div id="taxerData">B1. DANE PODATNIKA</div>

				<div class="data">
					<div class="surrname">
						<label>11. Nazwisko</label>
						<div>
							${requestScope.taxpayer.nazwisko}
						</div>
					</div>
					<div class="name">
						<label>12. Pierwsze imię</label>
						<div>
							${requestScope.taxpayer.pierwszeImie}
						</div>
					</div>
					<div class="birthDate">
						<label>13. Data urodzenia</label>
						<div>
							${requestScope.taxpayer.dataUrodzenia}
						</div>
					</div>
				</div>
				<div class="data">
					<div class="country">
						<label>14. Kraj</label>
						<div>
							${requestScope.taxpayer.kraj}
						</div>
					</div>
					<div class="voivodeship">
						<label>15. Województwo</label>
						<div>
							${requestScope.taxpayer.wojewodztwo}
						</div>
					</div>
					<div class="country">
						<label>16. Powiat</label>
						<div>
							${requestScope.taxpayer.powiat}
						</div>
					</div>
				</div>
				<div class="data">
					<div class="townCommunity">
						<label>17. Gmina</label>
						<div>
							${requestScope.taxpayer.gmina}
						</div>
					</div>
					<div class="street">
						<label>18. Ulica</label>
						<div>
							${requestScope.taxpayer.ulica}
						</div>
					</div>
					<div class="houseNumber">
						<label>19. Nr domu</label>
						<div>
							${requestScope.taxpayer.nrDomu}
						</div>
					</div>
					<div class="flatNumber">
						<label>20. Nr lokalu</label>
						<div>
						${requestScope.taxpayer.nrLokalu}
						</div>
					</div>
				</div>
				<div class="data">
					<div class="city">
						<label>21. Miejscowość</label>
						<div>
							${requestScope.taxpayer.miejscowosc}
						</div>
					</div>
					<div class="zipCode">
						<label>22. Kod pocztowy</label>
						<div>
							${requestScope.taxpayer.kodPocztowy}
						</div>
					</div>
					<div class="postOffice">
						<label>23. Poczta</label>
						<div>
							${requestScope.taxpayer.poczta}
						</div>
					</div>

				</div>

			</div>

			<div id="B2">
				<div id="taxerData">B2. DANE MAŁŻONKA</div>

				<div class="data">
					<div class="surrname">
						<label>24. Nazwisko</label>
						<div>
							${requestScope.taxpayerSpouse.nazwiskoMalzonka}
						</div>
					</div>
					<div class="name">
						<label>25. Pierwsze imię</label>
						<div>
							${requestScope.taxpayerSpouse.pierwszeImieMalzonka}
							
						</div>
					</div>
					<div class="birthDate">
						<label>26. Data urodzenia</label>
						<div>
							${requestScope.taxpayerSpouse.dataUrodzeniaMalzonka}
						</div>
					</div>
				</div>
				<div class="data">
					<div class="country">
						<label>27. Kraj</label>
						<div>
							${requestScope.taxpayerSpouse.krajMalzonka}
						</div>
					</div>
					<div class="voivodeship">
						<label>28. Województwo</label>
						<div>
							${requestScope.taxpayerSpouse.wojewodztwoMalzonka}
						</div>
					</div>
					<div class="county">
						<label>29. Powiat</label>
						<div>
							${requestScope.taxpayerSpouse.powiatMalzonka}
						</div>
					</div>
				</div>
				<div class="data">
					<div class="townCommunity">
						<label>30. Gmina</label>
						<div>
							${requestScope.taxpayerSpouse.gminaMalzonka}
						</div>
					</div>
					<div class="street">
						<label>31. Ulica</label>
						<div>
							${requestScope.taxpayerSpouse.ulicaMalzonka}
						</div>
					</div>
					<div class="houseNumber">
						<label>32. Nr domu</label>
						<div>
							${requestScope.taxpayerSpouse.nrDomuMalzonka}
						</div>
					</div>
					<div class="flatNumber">
						<label>33. Nr lokalu</label>
						<div>
							${requestScope.taxpayerSpouse.nrLokaluMalzonka}
						</div>
					</div>
				</div>
				<div class="data">
					<div class="city">
						<label>34. Miejscowość</label>
						<div>
							${requestScope.taxpayerSpouse.miejscowoscMalzonka}
						</div>
					</div>
					<div class="zipCode">
						<label>35. Kod pocztowy</label>
						<div>
							${requestScope.taxpayerSpouse.kodPocztowyMalzonka}
						</div>
					</div>
					<div class="postOffice">
						<label>36. Poczta</label>
						<div>
							${requestScope.taxpayerSpouse.pocztaMalzonka}
						</div>
					</div>

				</div>

			</div>

			<div id="instruction">W wypadku niewypłacenia wobowiązującym
				terminie kwoty z poz.120 lub wpłacenia jej w niepełnej wysokości,
				niniejsze zeznanie stanowi podstawę do wystawienia tytułu
				wykonawczego, zgodnie z przepisami ustawy z dani 17 czerwca 1969r. o
				podsępowaniu egzekucyjnym w administaracji (Dz.U. z 2005r. Nr 229,
				poz.1954, z późn.zm.)</div>

			<div id="button">
				<button type="button" onclick="javascript:history.back();"
					class="btn btn-default btn-md">back</button>
			</div>

		</div>
	</form>
</body>
</html>