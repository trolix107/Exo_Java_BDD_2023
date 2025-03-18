<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Les tableaux</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les tableaux</h1>
    <form action="#" method="post">
        <p>Saisir au minimum 3 chiffres séparés par des espaces, exemple : 6 78 15 
        <input type="text" name="chaine"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération de la chaîne saisie --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null && !chaine.trim().isEmpty()) { 
        try {
            String[] tableauDeChiffres = chaine.trim().split("\\s+");
            int[] nombres = new int[tableauDeChiffres.length];

            for (int i = 0; i < tableauDeChiffres.length; i++) {
                nombres[i] = Integer.parseInt(tableauDeChiffres[i]);
            }
    %>

    <h2>Informations du tableau</h2>
    <p>Le tableau contient <%= nombres.length %> valeurs.</p>
    <ul>
        <% for (int i = 0; i < nombres.length; i++) { %>
            <li>Chiffre <%= i + 1 %> : <%= nombres[i] %></li>
        <% } %>
    </ul>

    <%-- Exercice 1 : Carré de la première valeur --%>
    <h2>Exercice 1 : Carré de la première valeur</h2>
    <p>Le carré de <%= nombres[0] %> est <%= nombres[0] * nombres[0] %></p>

    <%-- Exercice 2 : Somme des 2 premières valeurs --%>
    <h2>Exercice 2 : Somme des 2 premières valeurs</h2>
    <p>La somme de <%= nombres[0] %> et <%= nombres[1] %> est <%= nombres[0] + nombres[1] %></p>

    <%-- Exercice 3 : Somme de toutes les valeurs --%>
    <h2>Exercice 3 : Somme de toutes les valeurs</h2>
    <% int somme = 0;
       for (int nombre : nombres) {
           somme += nombre;
       }
    %>
    <p>La somme totale des valeurs est <%= somme %></p>

    <%-- Exercice 4 : Valeur maximale --%>
    <h2>Exercice 4 : La valeur maximale</h2>
    <% int max = nombres[0];
       for (int nombre : nombres) {
           if (nombre > max) {
               max = nombre;
           }
       }
    %>
    <p>La valeur maximale est <%= max %></p>

    <%-- Exercice 5 : Valeur minimale --%>
    <h2>Exercice 5 : La valeur minimale</h2>
    <% int min = nombres[0];
       for (int nombre : nombres) {
           if (nombre < min) {
               min = nombre;
           }
       }
    %>
    <p>La valeur minimale est <%= min %></p>

    <%-- Exercice 6 : Valeur la plus proche de 0 --%>
    <h2>Exercice 6 : La valeur la plus proche de 0</h2>
    <% int procheZero = nombres[0];
       for (int nombre : nombres) {
           if (Math.abs(nombre) < Math.abs(procheZero)) {
               procheZero = nombre;
           }
       }
    %>
    <p>La valeur la plus proche de 0 est <%= procheZero %></p>

    <%-- Exercice 7 : Valeur la plus proche de 0 (Version améliorée) --%>
    <h2>Exercice 7 : La valeur la plus proche de 0 (version améliorée)</h2>
    <% int procheZeroV2 = nombres[0];
       for (int nombre : nombres) {
           if (Math.abs(nombre) < Math.abs(procheZeroV2) || 
              (Math.abs(nombre) == Math.abs(procheZeroV2) && nombre > procheZeroV2)) {
               procheZeroV2 = nombre;
           }
       }
    %>
    <p>La valeur la plus proche de 0 (avec préférence pour les positifs) est <%= procheZeroV2 %></p>

    <%  } catch (NumberFormatException e) { %>
        <p style="color:red;">Veuillez entrer uniquement des nombres séparés par des espaces.</p>
    <%  } 
    } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
