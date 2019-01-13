<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Traitement des données</title>
</head>
<body>
	<p>
		<b>Vous avez renseigné les informations suivantes :</b>
	</p>

	<%-- Parcourt chaque paramètre de la requête --%>
	<c:forEach items="${paramValues}" var="parametre">
		<div>
			<%-- Affiche le nom de chaque paramètre. --%>
			<c:out value="${parametre.key} :" />
			<%-- Parcourt la liste des valeurs de chaque paramètre. --%>
			<c:forEach items="${parametre.value}" var="valeur">
				<%-- Affiche chacune des valeurs --%>
				<c:out value="${valeur}"></c:out>
			</c:forEach>
		</div>
	</c:forEach>


	<p>
		<b>Vous vous nommez :</b>
	</p>
	<p>
		<%-- Affiche les valeurs des paramètres nom et prenom --%>
		<c:out value="${ param.nom }" />
		<c:out value="${ param.prenom }" />
	</p>

	<p>
		<b>Vous avez visité les pays suivants :</b>
	</p>
	<p>
		<%-- Teste l'existence du paramètre pays. S'il existe on le traite, 
	    sinon on affiche un message par défaut.--%>
		<c:choose>
			<c:when test="${ !empty paramValues.pays }">
				<c:out value="${ param.nom }" />
				<c:out value="${ param.prenom }" /> a voyagé dans les pays suivants : 
	    		<c:forEach items="${ paramValues.pays }" var="pays">
					<c:out value="${ pays }"></c:out>
				</c:forEach>
			</c:when>
			<c:when test="${ empty paramValues.pays }">
				<c:out value="${ param.nom }" />
				<c:out value="${ param.prenom }" /> n'a pas voyagé dans ces pays.
	    	</c:when>
		</c:choose>

		<%-- Teste l'existence du paramètre autre. Si des données existent on les traite, 
	    sinon on affiche un message par défaut.--%>
		<c:choose>
			<c:when test="${ !empty param.autre }">
	    		Autre : <c:out value="${ param.autre }" />
			</c:when>
			<c:when test="${ empty param.autre }">
	    		Rien d'autre à ajouter ...
	    	</c:when>
		</c:choose>
	</p>
</body>
</html>