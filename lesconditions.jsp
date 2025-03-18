<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Les conditions</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les conditions</h1>
    <form action="#" method="post">
        <p>Saisir la valeur 1 : <input type="text" name="valeur1"></p>
        <p>Saisir la valeur 2 : <input type="text" name="valeur2"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération des valeurs saisies --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <% if (valeur1 != null && valeur2 != null) { 
        try {
            int intValeur1 = Integer.parseInt(valeur1);
            int intValeur2 = Integer.parseInt(valeur2);
    %>
            <h2>Comparaison des deux valeurs</h2>
            <% if (intValeur1 > intValeur2) { %>
                <p>Valeur 1 (<%= intValeur1 %>) est supérieure à Valeur 2 (<%= intValeur2 %>).</p>
            <% } else if (intValeur1 < intValeur2) { %>
                <p>Valeur 1 (<%= intValeur1 %>) est inférieure à Valeur 2 (<%= intValeur2 %>).</p>
            <% } else { %>
                <p>Valeur 1 (<%= intValeur1 %>) est égale à Valeur 2 (<%= intValeur2 %>).</p>
            <% } %>

            <h2>Exercice 1 : Comparaison de 3 valeurs</h2>
            <form action="#" method="post">
                <p>Saisir A : <input type="text" name="valeurA"></p>
                <p>Saisir B : <input type="text" name="valeurB"></p>
                <p>Saisir C : <input type="text" name="valeurC"></p>
                <p><input type="submit" value="Vérifier"></p>
            </form>

            <% String valeurA = request.getParameter("valeurA");
               String valeurB = request.getParameter("valeurB");
               String valeurC = request.getParameter("valeurC");

               if (valeurA != null && valeurB != null && valeurC != null) {
                   try {
                       int A = Integer.parseInt(valeurA);
                       int B = Integer.parseInt(valeurB);
                       int C = Integer.parseInt(valeurC);
            %>
                       <p>
                       <% if (C >= Math.min(A, B) && C <= Math.max(A, B)) { %>
                           Oui, C (<%= C %>) est compris entre A (<%= A %>) et B (<%= B %>).
                       <% } else { %>
                           Non, C (<%= C %>) n'est pas compris entre A (<%= A %>) et B (<%= B %>).
                       <% } %>
                       </p>
            <%     } catch (NumberFormatException e) { %>
                       <p style="color:red;">Veuillez entrer des nombres valides.</p>
            <%     } 
               } %>

            <h2>Exercice 2 : Pair ou Impair ?</h2>
            <form action="#" method="post">
                <p>Saisir un nombre : <input type="text" name="nombrePairImpair"></p>
                <p><input type="submit" value="Vérifier"></p>
            </form>

            <% String nombrePairImpair = request.getParameter("nombrePairImpair");
               if (nombrePairImpair != null) {
                   try {
                       int nombre = Integer.parseInt(nombrePairImpair);
            %>
                       <p>Le nombre <%= nombre %> est 
                       <% if (nombre % 2 == 0) { %>
                           pair.
                       <% } else { %>
                           impair.
                       <% } %>
                       </p>
            <%     } catch (NumberFormatException e) { %>
                       <p style="color:red;">Veuillez entrer un nombre valide.</p>
            <%     } 
               } %>

    <%  } catch (NumberFormatException e) { %>
            <p style="color:red;">Veuillez entrer des nombres valides.</p>
    <%  } 
    } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
