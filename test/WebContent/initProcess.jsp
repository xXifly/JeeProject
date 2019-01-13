<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Traitement des donn�es</title>
</head>
<body>
	<p>
		<b>Vous avez renseign� les informations suivantes :</b>
	</p>

	<%-- Parcourt chaque param�tre de la requ�te --%>
	<c:forEach items="${paramValues}" var="parametre">
		<div>
			<%-- Affiche le nom de chaque param�tre. --%>
			<c:out value="${parametre.key} :" />
			<%-- Parcourt la liste des valeurs de chaque param�tre. --%>
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
		<%-- Affiche les valeurs des param�tres nom et prenom --%>
		<c:out value="${ param.nom }" />
		<c:out value="${ param.prenom }" />
	</p>

	<p>
		<b>Vous avez visit� les pays suivants :</b>
	</p>
	<p>
		<%-- Teste l'existence du param�tre pays. S'il existe on le traite, 
	    sinon on affiche un message par d�faut.--%>
		<c:choose>
			<c:when test="${ !empty paramValues.pays }">
				<c:out value="${ param.nom }" />
				<c:out value="${ param.prenom }" /> a voyag� dans les pays suivants : 
	    		<c:forEach items="${ paramValues.pays }" var="pays">
					<c:out value="${ pays }"></c:out>
				</c:forEach>
			</c:when>
			<c:when test="${ empty paramValues.pays }">
				<c:out value="${ param.nom }" />
				<c:out value="${ param.prenom }" /> n'a pas voyag� dans ces pays.
	    	</c:when>
		</c:choose>

		<%-- Teste l'existence du param�tre autre. Si des donn�es existent on les traite, 
	    sinon on affiche un message par d�faut.--%>
		<c:choose>
			<c:when test="${ !empty param.autre }">
	    		Autre : <c:out value="${ param.autre }" />
			</c:when>
			<c:when test="${ empty param.autre }">
	    		Rien d'autre � ajouter ...
	    	</c:when>
		</c:choose>
	</p>
</body>
</html>