<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>PIT37 Page one</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<form action="pageOne" method="post">
	

		<jsp:include page="header.jsp" /><br><br> 
		
		<label>1. Identyfikator podatkowy NIP / numer PESEL
			podatnika</label>
		<div>
			<input type="text" name="peselPodatnika"/>

		</div>
		<label>2. Identyfikator podatkowy NIP / numer PESEL małżonka</label>
		<div>
			<input type="text" name="peselMalzonka"/>
		</div>

		<div>
			5.Zeznanie o wysokości osiągniętego dochodu (poniesonej straty) w
			roku podatkowym: <input type="text" name="rok">
		</div>


		<div class="odp1">
			6.<input type="radio" name="sposobOpodatkowania"
				value="indywidualnie" /> <label>1.indywidualnie</label>
		</div>
		<div class="odp2">
			&nbsp;&nbsp; <input type="radio" name="sposobOpodatkowania"
				value="wspolnieArt6Ust2"><label>2. wspólnie z
				małżonkiem, zgodnie z wnioskiem, o którym mowa w art. 6 ust. 2
				ustawy</label>
		</div>
		<div class="odp3">
			&nbsp;&nbsp; <input type="radio" name="sposobOpodatkowania"
				value="wspolnieArt6Ust1"><label>3. wspólnie z
				małżonkiem, zgodnie z wnioskiem, o którym mowa w art. 6a ust. 1
				ustawy</label>
		</div>
		<div class="odp4">
			&nbsp;&nbsp; <input type="radio" name="sposobOpodatkowania"
				value="samotnieWychowujacychDzieci"><label>4. w
				sposób przewidziany dla osób samotnie wychowujżcych dzieci</label>
		</div>


		<div class="odp6">
			7.<input type="radio" name="sposobArt29Ust4" value="indywidualnie"><label>w
				sposób przewidziany w art. 29 ust. 4 ustawy – podatnik </label>
		</div>

		<div class="odp6">
			8.<input type="radio" name="sposobArt29Ust4" value="indywidualnie"><label>w
				sposób przewidziany w art. 29 ust. 4 ustawy – małżonek </label>
		</div>

        <input type="submit" value="next"/>

	</form>

</body>
</html>