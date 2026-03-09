<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - MyUniversity</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f7fafc;
        }
    </style>
</head>
<body>

    <%-- Barre de navigation --%>
    <%@ include file="components/navbar.jsp" %>

    <%-- Contenu principal --%>
    <main class="container mx-auto px-4 sm:px-6 lg:px-8 py-8">

        <%-- En-tête du tableau de bord --%>
        <header class="mb-8">
            <div class="flex justify-between items-center">
                <div>
                    <h1 class="text-3xl font-bold text-gray-900">Tableau de bord</h1>
                    <p class="mt-1 text-lg text-gray-600">Bienvenue, ${sessionScope.user.prenom} ${sessionScope.user.nom} !</p>
                </div>
                <div class="space-x-2">
                    <a href="profil.jsp" class="bg-white border border-gray-300 text-gray-700 font-semibold py-2 px-4 rounded-lg hover:bg-gray-100 transition">
                        Mon Profil
                    </a>
                    <a href="notes.jsp" class="bg-blue-600 text-white font-semibold py-2 px-4 rounded-lg hover:bg-blue-700 transition">
                        Mes Notes
                    </a>
                </div>
            </div>
        </header>

        <%-- Cartes de résumé --%>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <%-- Carte Mes Cours --%>
            <div class="bg-white p-6 rounded-xl shadow-md hover:shadow-lg transition-shadow">
                <div class="flex items-center">
                    <div class="ml-4">
                        <p class="text-sm text-gray-500">Inscrit à</p>
                        <p class="text-xl font-semibold text-gray-900">6 Cours</p>
                    </div>
                </div>
                <a href="cours.jsp" class="mt-4 inline-block text-blue-600 hover:underline">Voir mes cours &rarr;</a>
            </div>

            <%-- Carte Moyenne Générale --%>
            <div class="bg-white p-6 rounded-xl shadow-md hover:shadow-lg transition-shadow">
                <div class="flex items-center">
                    <div class="ml-4">
                        <p class="text-sm text-gray-500">Moyenne générale</p>
                        <p class="text-xl font-semibold text-gray-900">15.5 / 20</p>
                    </div>
                </div>
                <a href="notes.jsp" class="mt-4 inline-block text-green-600 hover:underline">Détail des notes &rarr;</a>
            </div>

            <%-- Carte Devoirs à rendre --%>
            <div class="bg-white p-6 rounded-xl shadow-md hover:shadow-lg transition-shadow">
                <div class="flex items-center">
                    <div class="ml-4">
                        <p class="text-sm text-gray-500">Prochains devoirs</p>
                        <p class="text-xl font-semibold text-gray-900">3 à rendre</p>
                    </div>
                </div>
                <a href="#" class="mt-4 inline-block text-yellow-600 hover:underline">Voir l'agenda &rarr;</a>
            </div>
        </div>

        <%-- Sections détaillées --%>
        <div class="mt-8 grid grid-cols-1 lg:grid-cols-2 gap-8">
            <%-- Annonces Récentes --%>
            <div>
                <h2 class="text-2xl font-bold text-gray-900 mb-4">Annonces Récentes</h2>
                <div class="bg-white p-6 rounded-xl shadow-md">
                    <ul class="space-y-4">
                        <li class="border-b pb-3">
                            <h3 class="font-semibold text-gray-800">Report du cours de Technologie Web Avancée</h3>
                            <p class="text-sm text-gray-600">Le cours de Lundi est reporté à Mercredi. La salle reste inchangée.</p>
                            <span class="text-xs text-gray-400">Posté il y a 2 heures</span>
                        </li>
                        <li class="border-b pb-3">
                            <h3 class="font-semibold text-gray-800">Nouvelles modalités d'examen</h3>
                            <p class="text-sm text-gray-600">Consultez le document joint sur la page du cours de Analyse de données.</p>
                            <span class="text-xs text-gray-400">Posté hier</span>
                        </li>
                        <li>
                            <h3 class="font-semibold text-gray-800">Bienvenue sur le nouveau portail</h3>
                            <p class="text-sm text-gray-600">N'hésitez pas à explorer les nouvelles fonctionnalités.</p>
                            <span class="text-xs text-gray-400">Posté il y a 3 jours</span>
                        </li>
                    </ul>
                </div>
            </div>

            <%-- Mes Tâches --%>
            <div>
                <h2 class="text-2xl font-bold text-gray-900 mb-4">Mes Tâches</h2>
                <div class="bg-white p-6 rounded-xl shadow-md">
                    <ul class="space-y-3">
                        <li class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                            <div>
                                <p class="font-semibold">Rendu Projet de Programmation</p>
                                <p class="text-sm text-gray-500">Date limite : 25 Mars 2026</p>
                            </div>
                            <span class="px-3 py-1 text-xs font-semibold text-red-800 bg-red-100 rounded-full">Urgent</span>
                        </li>
                        <li class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                            <div>
                                <p class="font-semibold">Lire le chapitre 5 de "Accord d'ADPIC"</p>
                                <p class="text-sm text-gray-500">Pour le cours du 28 Avril</p>
                            </div>
                        </li>
                        <li class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                            <div>
                                <p class="font-semibold">Exercices de Algorithme - M1</p>
                                <p class="text-sm text-gray-500">Date limite : 5 Mai 2026</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </main>

</body>
</html>