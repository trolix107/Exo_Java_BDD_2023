<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Les chaînes</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les chaînes de caractères</h1>
    <form action="#" method="post">
        <p>Saisir une chaîne (minimum 6 caractères) : <input type="text" id="inputValeur" name="chaine"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération de la valeur saisie --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null && chaine.length() >= 6) { %>

        <%-- Obtention de la longueur de la chaîne --%>
        <% int longueurChaine = chaine.length(); %>
        <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

        <%-- Extraction du 3e caractère --%>
        <% char caractereExtrait = chaine.charAt(2); %>
        <p>Le 3e caractère de votre chaîne est la lettre "<%= caractereExtrait %>"</p>

        <%-- Obtention d'une sous-chaîne --%>
        <% String sousChaine = chaine.substring(2, 6); %>
        <p>Une sous-chaîne de votre texte : "<%= sousChaine %>"</p>

        <%-- Recherche du premier "e" --%>
        <% char recherche = 'e'; 
           int position = chaine.indexOf(recherche); %>
        <p>Votre premier "e" est en position : <%= position %></p>

        <h2>Exercice 1 : Nombre de 'e'</h2>
        <%
            int countE = 0;
            for (int i = 0; i < chaine.length(); i++) {
                if (chaine.charAt(i) == 'e' || chaine.charAt(i) == 'E') {
                    countE++;
                }
            }
        %>
        <p>Votre texte contient <%= countE %> occurrence(s) de la lettre "e".</p>

        <h2>Exercice 2 : Affichage vertical</h2>
        <p>
        <% for (int i = 0; i < chaine.length(); i++) { %>
            <%= chaine.charAt(i) %><br>
        <% } %>
        </p>

        <h2>Exercice 3 : Retour à la ligne après chaque espace</h2>
        <p>
        <% String[] mots = chaine.split(" "); 
           for (String mot : mots) { %>
            <%= mot %><br>
        <% } %>
        </p>

        <h2>Exercice 4 : Afficher une lettre sur deux</h2>
        <p>
        <% for (int i = 0; i < chaine.length(); i += 2) { %>
            <%= chaine.charAt(i) %>
        <% } %>
        </p>

        <h2>Exercice 5 : La phrase en verlant</h2>
        <p>
        <% StringBuilder verlant = new StringBuilder(chaine).reverse(); %>
        <%= verlant %>
        </p>

        <h2>Exercice 6 : Consonnes et voyelles</h2>
        <%
            int voyelles = 0, consonnes = 0;
            String voyellesStr = "aeiouyAEIOUY";

            for (char c : chaine.toCharArray()) {
                if (Character.isLetter(c)) {
                    if (voyellesStr.indexOf(c) != -1) {
                        voyelles++;
                    } else {
                        consonnes++;
                    }
                }
            }
        %>
        <p>Nombre de voyelles : <%= voyelles %></p>
        <p>Nombre de consonnes : <%= consonnes %></p>

    <% } else if (chaine != null) { %>
        <p style="color: red;">Veuillez entrer une chaîne d'au moins 6 caractères.</p>
    <% } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
