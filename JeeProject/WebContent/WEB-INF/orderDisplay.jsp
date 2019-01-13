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
				<c:out value="Nom : ${order.client.nom}" />
			</div>
			<div>
				<c:out value="Prénom : ${order.client.prenom}" />
			</div>
			<div>
				<c:out value="Adresse de livraison : ${order.client.adresse}" />
			</div>
			<div>
				<c:out value="Numéro de téléphone : ${order.client.telephone}" />
			</div>
			<div>
				<c:out value="Adresse e-mail : ${order.client.mail}" />
			</div>
		</div>

		<div>
			<h1>Commande</h1>
			<div>
				<c:out value="Date : ${order.date}" />
			</div>
			<div>
				<c:out value="Prénom : ${order.montant}" />
			</div>
			<div>
				<c:out value="Mode de paiement : ${order.modePaiement}" />
			</div>
			<div>
				<c:out value="Statut de paiement : ${order.statutPaiement}" />
			</div>
			<div>
				<c:out value="Mode de livraison : ${order.modeLivraison}" />
			</div>
			<div>
				<c:out value="Numéro de livraison : ${order.statutLivraison}" />
			</div>
		</div>
	</c:if>
</body>
</html>
