<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="fr.eni.encheres.exceptions.LecteurMessage" %>
<%@ page import="fr.eni.encheres.bo.Utilisateurs" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Inscription</title>
<!-- import des feuilles de styles bootstrap, j'ai mis la version sur le web, c'est plus simple pour l'instant -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>
<!-- AJOUTER HEADER (via fragment)  -->
	<c:if test="${!empty listeCodesErreur}">
		<div class="container">
			<div class="row">
		        <div class="col">
		          <div class="alert alert-danger alert-dismissible fade show" role="alert">
		          	<h4 class="alert-heading">Erreur</h4>
		          	<ul>
			          	<c:forEach var="code" items="${listeCodesErreur}">
			          		<li>${LecteurMessage.getMessageErreur(code)}</li>
			          	</c:forEach>
		          	</ul>
		          </div>
		         </div>
		     </div>
		</div>
	</c:if>
	
	<div class="container">
		<c:choose>
    		<c:when test="${!empty utilisateur}">
		        <ul class="list-group col col-lg-4">
		         	<li class=" d-flex justify-content-between align-items-center">
		         		<p>Pseudo : </p> ${utilisateur.getPseudo()}
					</li>
		         	<li class=" d-flex justify-content-between align-items-center">
		         		<p>Nom : </p> ${utilisateur.getNom()}
					</li>
		         	<li class="d-flex justify-content-between align-items-center">
		         		<p>Prénom : </p> ${utilisateur.getPrenom()}
					</li>
					<li class="d-flex justify-content-between align-items-center">
		         		<p>Email : </p> ${utilisateur.getEmail()}
					</li>
					<li class="d-flex justify-content-between align-items-center">
		         		<p>Téléphone : </p> ${utilisateur.getTelephone()}
					</li>
					<li class=" d-flex justify-content-between align-items-center">
		         		<p>Rue : </p> ${utilisateur.getRue()}
					</li>
					<li class="d-flex justify-content-between align-items-center">
		         		<p>Rue : </p> ${utilisateur.getCodePostal()}
					</li>
					<li class="d-flex justify-content-between align-items-center">
		         		<p>Rue : </p> ${utilisateur.getVille()}
					</li>
				 </ul>
				 <c:if test="">
				 <!-- Test connexion session pour afficher infos crédits et afficher le bouton modifier sont profile-->
				 </c:if>
	        </c:when>
	        <c:otherwise>
	        	<p class="alert alert-danger alert-dismissible fade show" role="alert">Pas de profile à afficher<p>
	        </c:otherwise>
        </c:choose>
	</div>

<!-- import javascript pour Boostrap -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"	crossorigin="anonymous"></script>
</body>
</html>