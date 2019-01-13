<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Client</title>
<link type="text/css" rel="stylesheet" href="style.css" />
</head>

<body>
	<c:import url="nav.jsp" />
	<div>
		<c:out value="${text}" />
	</div>
	<c:if test="${ !erreur }">
		<div>
			<h1>Client</h1>
			<div>
				Nom :
				<c:out value="${client.nom}" />
			</div>
			<div>
				Prénom :
				<c:out value="${client.prenom}" />
			</div>
			<div>
				Adresse de livraison :
				<c:out value="${client.adresse}" />
			</div>
			<div>
				Numéro de téléphone :
				<c:out value="${client.telephone}" />
			</div>
			<div>
				Adresse e-mail :
				<c:out value="${client.mail}" />
			</div>
		</div>
	</c:if>
</body>
</html>
