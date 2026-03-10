<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Mes Notes - MyUniversity</title>
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

    <main class="container mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <%-- En-tête de la page --%>
        <header class="mb-8">
            <h1 class="text-3xl font-bold text-gray-900">Mes Notes</h1>
            <p class="mt-1 text-lg text-gray-600">Consultez vos résultats et votre moyenne générale.</p>
        </header>

        <%-- Section Résumé --%>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
            <div class="bg-white p-6 rounded-xl shadow-md">
                <p class="text-sm text-gray-500">Moyenne Générale</p>
                <p class="text-3xl font-bold text-blue-600">15.5 / 20</p>
            </div>
            <div class="bg-white p-6 rounded-xl shadow-md">
                <p class="text-sm text-gray-500">Crédits validés</p>
                <p class="text-3xl font-bold text-green-600">60 / 60</p>
            </div>
        </div>

        <%-- Tableau des notes --%>
        <div class="bg-white rounded-xl shadow-md overflow-hidden">
            <div class="p-6 flex justify-between items-center">
                <h3 class="text-xl font-bold text-gray-800">Détail des notes par matière</h3>
                <div>
                    <select class="form-select rounded-md border-gray-300 shadow-sm">
                        <option>Semestre 1</option>
                        <option>Semestre 2</option>
                    </select>
                </div>
            </div>
            <div class="overflow-x-auto">
                <table class="min-w-full text-sm text-left text-gray-500">
                    <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                        <tr>
                            <th scope="col" class="px-6 py-3">Matière</th>
                            <th scope="col" class="px-6 py-3">Professeur</th>
                            <th scope="col" class="px-6 py-3 text-center">Crédits ECTS</th>
                            <th scope="col" class="px-6 py-3 text-center">Note / 20</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="bg-white border-b hover:bg-gray-50">
                            <td class="px-6 py-4 font-medium text-gray-900">Technologie Web Avancées</td>
                            <td class="px-6 py-4">Prof. Fabrice</td>
                            <td class="px-6 py-4 text-center">6</td>
                            <td class="px-6 py-4 text-center font-bold text-green-600">16.5</td>
                        </tr>
                        <tr class="bg-white border-b hover:bg-gray-50">
                            <td class="px-6 py-4 font-medium text-gray-900">Programmation Web</td>
                            <td class="px-6 py-4">Prof. Rakoto</td>
                            <td class="px-6 py-4 text-center">5</td>
                            <td class="px-6 py-4 text-center font-bold text-orange-500">12.0</td>
                        </tr>
                        <tr class="bg-white border-b hover:bg-gray-50">
                            <td class="px-6 py-4 font-medium text-gray-900">Algorithme</td>
                            <td class="px-6 py-4">Prof. Rabe</td>
                            <td class="px-6 py-4 text-center">6</td>
                            <td class="px-6 py-4 text-center font-bold text-green-600">18.0</td>
                        </tr>
                        <tr class="bg-white border-b hover:bg-gray-50">
                            <td class="px-6 py-4 font-medium text-gray-900">Droit de l'Informatique</td>
                            <td class="px-6 py-4">Prof. Mexin</td>
                            <td class="px-6 py-4 text-center">3</td>
                            <td class="px-6 py-4 text-center font-bold text-red-500">8.5</td>
                        </tr>
                        <tr class="bg-white hover:bg-gray-50">
                            <td class="px-6 py-4 font-medium text-gray-900">Anglais Technique</td>
                            <td class="px-6 py-4">Prof. Smith</td>
                            <td class="px-6 py-4 text-center">2</td>
                            <td class="px-6 py-4 text-center font-bold text-green-600">17.0</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </main>

</body>
</html>