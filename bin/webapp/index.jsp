<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>MyUniversity</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-50">

    <%-- Barre de navigation publique --%>
    <nav class="bg-white shadow-md fixed top-0 left-0 right-0 z-50">
        <div class="container mx-auto px-6 py-4 flex justify-between items-center">
            <h1 class="text-2xl font-bold text-gray-800">MyUniversity</h1>
            <a href="login.jsp" class="bg-blue-600 text-white px-5 py-2 rounded-full font-semibold hover:bg-blue-700 transition duration-300">Se connecter</a>
        </div>
    </nav>

    <%-- Section d'accueil --%>
    <header class="bg-blue-600 text-white text-center py-40">
        <div class="container mx-auto px-6">
            <h2 class="text-5xl font-extrabold mb-4">Bienvenue sur MyUniversity</h2>
            <p class="text-xl mb-8">Votre portail étudiant pour une gestion simple et efficace de votre scolarité.</p>
            <a href="login.jsp" class="bg-white text-blue-600 px-8 py-3 rounded-full font-bold text-lg hover:bg-gray-100 transition duration-300">Accédez à votre espace</a>
        </div>
    </header>

    <%-- Section des fonctionnalités --%>
    <section class="py-20">
        <div class="container mx-auto px-6">
            <h3 class="text-3xl font-bold text-center text-gray-800 mb-12">Fonctionnalités Clés</h3>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8 text-center">
                <div class="bg-white p-8 rounded-lg shadow-lg">
                    <h4 class="text-xl font-bold mb-2">Gestion des Notes</h4>
                    <p class="text-gray-600">Consultez vos notes et résultats en temps réel dès leur publication.</p>
                </div>
                <div class="bg-white p-8 rounded-lg shadow-lg">
                    <h4 class="text-xl font-bold mb-2">Emploi du Temps</h4>
                    <p class="text-gray-600">Accédez à votre emploi du temps personnalisé et ne manquez aucun cours.</p>
                </div>
                <div class="bg-white p-8 rounded-lg shadow-lg">
                    <h4 class="text-xl font-bold mb-2">Messagerie Interne</h4>
                    <p class="text-gray-600">Communiquez facilement avec vos professeurs et l'administration.</p>
                </div>
            </div>
        </div>
    </section>

    <%-- Pied de page --%>
    <footer class="bg-gray-800 text-white py-8">
        <div class="container mx-auto px-6 text-center">
            <p>&copy; 2024 MyUniversity. Tous droits réservés.</p>
        </div>
    </footer>

</body>
</html>