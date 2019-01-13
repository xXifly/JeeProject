<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Création d'un client</title>
<link type="text/css" rel="stylesheet" href="style.css" />
</head>
<body>
	<c:import url="nav.jsp" />
	<div>
		<form method="post" action="<c:url value="/clientform"/>">
			<fieldset>
				<%@ include file="clientFormPart.jsp"%>
			</fieldset>
			<p class="info">${ form.resultat }</p>
			<input type="submit" value="Valider" /> <input type="reset" value="Remettre à zéro" />
		</form>
		<br />
	</div>
</body>
</html>