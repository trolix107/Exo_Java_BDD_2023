<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Exercices sur les boucles</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les boucles</h1>
    <form action="#" method="post">
        <label for="inputValeur">Saisir le nombre d'étoiles : </label>
        <input type="text" id="inputValeur" name="valeur">
        <input type="submit" value="Afficher">
    </form>

    <%-- Récupération de la valeur saisie par l'utilisateur --%>
    <% String valeur = request.getParameter("valeur"); %>
    
    <% if (valeur != null && !valeur.isEmpty()) { 
        int n = Integer.parseInt(valeur);
    %>

    <h2>Ligne d'étoiles</h2>
    <p>
    <% for (int i = 0; i < n; i++) { %>
        *
    <% } %>
    </p>

    <h2>Exercice 1 : Carré d'étoiles</h2>
    <% for (int i = 0; i < n; i++) { %>
        <% for (int j = 0; j < n; j++) { %>
            *
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 2 : Triangle rectangle gauche</h2>
    <% for (int i = 1; i <= n; i++) { %>
        <% for (int j = 0; j < i; j++) { %>
            *
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 3 : Triangle rectangle inversé</h2>
    <% for (int i = n; i > 0; i--) { %>
        <% for (int j = 0; j < i; j++) { %>
            *
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 4 : Triangle rectangle aligné sur la droite</h2>
    <% for (int i = 1; i <= n; i++) { %>
        <% for (int j = 0; j < n - i; j++) { %>
            &nbsp;
        <% } %>
        <% for (int j = 0; j < i; j++) { %>
            *
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 5 : Triangle isocèle</h2>
    <% for (int i = 1; i <= n; i++) { %>
        <% for (int j = 0; j < n - i; j++) { %>
            &nbsp;
        <% } %>
        <% for (int j = 0; j < (2 * i - 1); j++) { %>
            *
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 6 : Demi losange</h2>
    <% for (int i = 1; i <= n; i++) { %>
        <% for (int j = 0; j < n - i; j++) { %>
            &nbsp;
        <% } %>
        <% for (int j = 0; j < i; j++) { %>
            *
        <% } %>
        <br>
    <% } %>
    <% for (int i = n; i > 0; i--) { %>
        <% for (int j = 0; j < n - i; j++) { %>
            &nbsp;
        <% } %>
        <% for (int j = 0; j < i; j++) { %>
            *
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 7 : Table de multiplication</h2>
    <% for (int i = 1; i <= n; i++) { %>
        <p><%= n %> x <%= i %> = <%= (n * i) %></p>
    <% } %>

    <% } %>
    
    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
