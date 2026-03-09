<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Mon Profil - MyUniversity</title>
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
            <h1 class="text-3xl font-bold text-gray-900">Mon Profil</h1>
            <p class="mt-1 text-lg text-gray-600">Gérez vos informations personnelles et de sécurité.</p>
        </header>

        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">

            <%-- Colonne de gauche: Photo et informations de base --%>
            <div class="lg:col-span-1">
                <div class="bg-white p-6 rounded-xl shadow-md text-center">
                    <img class="w-32 h-32 rounded-full mx-auto object-cover" src="https://via.placeholder.com/150" alt="Photo de profil">
                    <h2 class="mt-4 text-2xl font-semibold text-gray-800">${sessionScope.user.prenom} ${sessionScope.user.nom}</h2>
                    <p class="text-gray-500">N° Étudiant: ${sessionScope.user.id}</p>
                    <button class="mt-4 w-full bg-gray-200 text-gray-700 font-semibold py-2 px-4 rounded-lg hover:bg-gray-300 transition">
                        Changer la photo
                    </button>
                </div>
            </div>

            <%-- Colonne de droite: Formulaires d'édition --%>
            <div class="lg:col-span-2 space-y-8">
                <%-- Formulaire d'informations personnelles --%>
                <div class="bg-white p-6 rounded-xl shadow-md">
                    <h3 class="text-xl font-bold text-gray-800 mb-6">Informations Personnelles</h3>
                    <form action="updateProfile" method="post" class="space-y-4">
                        <div>
                            <label for="email" class="block text-sm font-medium text-gray-700">Adresse Email</label>
                            <input type="email" id="email" name="email" value="${sessionScope.user.email}" class="mt-1 block w-full px-3 py-2 bg-white border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                        </div>
                        <div>
                            <label for="phone" class="block text-sm font-medium text-gray-700">Téléphone</label>
                            <input type="tel" id="phone" name="phone" value="${sessionScope.user.telephone}" class="mt-1 block w-full px-3 py-2 bg-white border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                        </div>
                        <div class="text-right">
                            <button type="submit" class="bg-blue-600 text-white font-bold py-2 px-6 rounded-lg hover:bg-blue-700 transition">
                                Enregistrer
                            </button>
                        </div>
                    </form>
                </div>

                <%-- Formulaire de changement de mot de passe --%>
                <div class="bg-white p-6 rounded-xl shadow-md">
                    <h3 class="text-xl font-bold text-gray-800 mb-6">Sécurité</h3>
                    <form action="changePassword" method="post" class="space-y-4">
                        <div>
                            <label for="current_password" class="block text-sm font-medium text-gray-700">Mot de passe actuel</label>
                            <input type="password" id="current_password" name="current_password" class="mt-1 block w-full px-3 py-2 bg-white border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                        </div>
                        <div>
                            <label for="new_password" class="block text-sm font-medium text-gray-700">Nouveau mot de passe</label>
                            <input type="password" id="new_password" name="new_password" class="mt-1 block w-full px-3 py-2 bg-white border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                        </div>
                        <div>
                            <label for="confirm_password" class="block text-sm font-medium text-gray-700">Confirmer le nouveau mot de passe</label>
                            <input type="password" id="confirm_password" name="confirm_password" class="mt-1 block w-full px-3 py-2 bg-white border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500">
                        </div>
                        <div class="text-right">
                            <button type="submit" class="bg-gray-700 text-white font-bold py-2 px-6 rounded-lg hover:bg-gray-800 transition">
                                Changer le mot de passe
                            </button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </main>

</body>
</html>