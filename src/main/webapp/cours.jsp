<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Mes Cours - MyUniversity</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f7fafc;
        }
        .accordion-content {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease-out;
        }
    </style>
</head>
<body>

    <%-- Barre de navigation --%>
    <%@ include file="components/navbar.jsp" %>

    <main class="container mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <%-- En-tête de la page --%>
        <header class="mb-8">
            <h1 class="text-3xl font-bold text-gray-900">Mes Cours</h1>
            <p class="mt-1 text-lg text-gray-600">Suivez votre progression et accédez à vos supports de cours.</p>
        </header>

        <%-- Liste des cartes de cours --%>
        <div class="space-y-8">

            <%-- Carte de Cours: Tech Web --%>
            <div class="bg-white rounded-xl shadow-lg overflow-hidden">
                <div class="p-6">
                    <div class="md:flex md:justify-between">
                        <div>
                            <h2 class="text-2xl font-bold text-gray-800">Technologie Web Avancées</h2>
                            <p class="text-md text-gray-600">Prof. Fabrice</p>
                        </div>
                        <div class="mt-4 md:mt-0 text-right">
                            <p class="text-sm text-gray-500">Note actuelle</p>
                            <p class="text-2xl font-bold text-green-600">16.5/20</p>
                        </div>
                    </div>

                    <%-- Barre de progression --%>
                    <div class="mt-4">
                        <div class="flex justify-between mb-1">
                            <span class="text-sm font-medium text-gray-700">Progression</span>
                            <span class="text-sm font-medium text-blue-700">75%</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5">
                            <div class="bg-blue-600 h-2.5 rounded-full" style="width: 75%"></div>
                        </div>
                    </div>
                </div>

                <%-- Section des vidéos (Accordéon) --%>
                <div class="bg-gray-50 border-t border-gray-200">
                    <button class="accordion-toggle w-full text-left p-4 font-semibold text-gray-700 hover:bg-gray-100 focus:outline-none">
                        Voir les vidéos du cours (3)
                    </button>
                    <div class="accordion-content">
                        <ul class="p-4 space-y-3">
                            <li class="flex items-center justify-between">
                                <span>Chapitre 1: Intégrales et Dérivées</span>
                                <span class="text-sm text-gray-500">25:10</span>
                            </li>
                            <li class="flex items-center justify-between">
                                <span>Chapitre 2: Algèbre Linéaire</span>
                                <span class="text-sm text-gray-500">32:45</span>
                            </li>
                            <li class="flex items-center justify-between">
                                <span>Chapitre 3: Probabilités</span>
                                <span class="text-sm text-gray-500">18:55</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <%-- Carte de Cours: Programmation Web --%>
            <div class="bg-white rounded-xl shadow-lg overflow-hidden">
                <div class="p-6">
                    <div class="md:flex md:justify-between">
                        <div>
                            <h2 class="text-2xl font-bold text-gray-800">Programmation Web</h2>
                            <p class="text-md text-gray-600">Prof. Martin</p>
                        </div>
                        <div class="mt-4 md:mt-0 text-right">
                            <p class="text-sm text-gray-500">Note actuelle</p>
                            <p class="text-2xl font-bold text-orange-500">12.0/20</p>
                        </div>
                    </div>
                    <div class="mt-4">
                        <div class="flex justify-between mb-1">
                            <span class="text-sm font-medium text-gray-700">Progression</span>
                            <span class="text-sm font-medium text-blue-700">40%</span>
                        </div>
                        <div class="w-full bg-gray-200 rounded-full h-2.5">
                            <div class="bg-blue-600 h-2.5 rounded-full" style="width: 40%"></div>
                        </div>
                    </div>
                </div>
                <div class="bg-gray-50 border-t border-gray-200">
                    <button class="accordion-toggle w-full text-left p-4 font-semibold text-gray-700 hover:bg-gray-100 focus:outline-none">
                        Voir les vidéos du cours (2)
                    </button>
                    <div class="accordion-content">
                         <ul class="p-4 space-y-3">
                            <li class="flex items-center justify-between">
                                <span>Introduction à HTML & CSS</span>
                                <span class="text-sm text-gray-500">45:12</span>
                            </li>
                            <li class="flex items-center justify-between">
                                <span>Les bases de JavaScript</span>
                                <span class="text-sm text-gray-500">55:30</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </main>

</body>
</html>