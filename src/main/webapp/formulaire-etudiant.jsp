<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Inscription Étudiant - MyUniversity</title>
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
        <div class="max-w-2xl mx-auto">
            <div class="bg-white rounded-xl shadow-md p-8">
                <div class="mb-8">
                    <h1 class="text-3xl font-bold text-gray-900">Inscription Étudiant</h1>
                    <p class="text-gray-600 mt-2">Veuillez remplir le formulaire ci-dessous pour vous inscrire en tant qu'étudiant</p>
                </div>

                <form action="inscription-etudiant" method="post" class="space-y-6">

                    <!-- Section Informations Personnelles -->
                    <fieldset class="border-t pt-6">
                        <legend class="text-xl font-semibold text-gray-900 mb-4">Informations Personnelles</legend>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="nom" class="block text-gray-700 text-sm font-bold mb-2">Nom *</label>
                                <input type="text" id="nom" name="nom" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="Votre nom de famille">
                            </div>

                            <div>
                                <label for="prenom" class="block text-gray-700 text-sm font-bold mb-2">Prénom *</label>
                                <input type="text" id="prenom" name="prenom" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="Votre prénom">
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
                            <div>
                                <label for="email" class="block text-gray-700 text-sm font-bold mb-2">Email Universitaire *</label>
                                <input type="email" id="email" name="email" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="prenom.nom@university.edu">
                            </div>

                            <div>
                                <label for="telephone" class="block text-gray-700 text-sm font-bold mb-2">Téléphone</label>
                                <input type="tel" id="telephone" name="telephone"
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="+261 3X XX XXX XX">
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
                            <div>
                                <label for="date-naissance" class="block text-gray-700 text-sm font-bold mb-2">Date de Naissance *</label>
                                <input type="date" id="date-naissance" name="date_naissance" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                            </div>

                            <div>
                                <label for="genre" class="block text-gray-700 text-sm font-bold mb-2">Genre</label>
                                <select id="genre" name="genre"
                                        class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                                    <option value="">-- Sélectionner --</option>
                                    <option value="M">Masculin</option>
                                    <option value="F">Féminin</option>
                                </select>
                            </div>
                        </div>
                    </fieldset>

                    <!-- Section Adresse -->
                    <fieldset class="border-t pt-6">
                        <legend class="text-xl font-semibold text-gray-900 mb-4">Adresse</legend>

                        <div>
                            <label for="adresse" class="block text-gray-700 text-sm font-bold mb-2">Adresse *</label>
                            <input type="text" id="adresse" name="adresse" required
                                   class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                   placeholder="Rue, numéro, etc.">
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mt-6">
                            <div>
                                <label for="code-postal" class="block text-gray-700 text-sm font-bold mb-2">Code Postal *</label>
                                <input type="text" id="code-postal" name="code_postal" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="101">
                            </div>

                            <div>
                                <label for="ville" class="block text-gray-700 text-sm font-bold mb-2">Ville *</label>
                                <input type="text" id="ville" name="ville" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="Antananarivo">
                            </div>
                        </div>
                    </fieldset>

                    <!-- Section Informations Académiques -->
                    <fieldset class="border-t pt-6">
                        <legend class="text-xl font-semibold text-gray-900 mb-4">Informations Académiques</legend>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="diplome" class="block text-gray-700 text-sm font-bold mb-2">Diplôme Visé *</label>
                                <select id="diplome" name="diplome" required
                                        class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                                    <option value="">-- Sélectionner --</option>
                                    <option value="Licence">Licence</option>
                                    <option value="Master">Master</option>
                                    <option value="Doctorat">Doctorat</option>
                                </select>
                            </div>

                            <div>
                                <label for="specialite" class="block text-gray-700 text-sm font-bold mb-2">Spécialité *</label>
                                <input type="text" id="specialite" name="specialite" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="ex: Informatique, Mathématiques">
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
                            <div>
                                <label for="annee" class="block text-gray-700 text-sm font-bold mb-2">Année d'Études *</label>
                                <select id="annee" name="annee" required
                                        class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                                    <option value="">-- Sélectionner --</option>
                                    <option value="1">1ère Année</option>
                                    <option value="2">2ème Année</option>
                                    <option value="3">3ème Année</option>
                                </select>
                            </div>

                            <div>
                                <label for="numero-etudiant" class="block text-gray-700 text-sm font-bold mb-2">Numéro Étudiant</label>
                                <input type="text" id="numero-etudiant" name="numero_etudiant" readonly
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight bg-gray-100 focus:outline-none"
                                       placeholder="Généré automatiquement">
                            </div>
                        </div>
                    </fieldset>

                    <!-- Section Compte -->
                    <fieldset class="border-t pt-6">
                        <legend class="text-xl font-semibold text-gray-900 mb-4">Créer un Compte</legend>

                        <div>
                            <label for="password" class="block text-gray-700 text-sm font-bold mb-2">Mot de passe *</label>
                            <input type="password" id="password" name="password" required
                                   class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                   placeholder="Minimum 8 caractères">
                            <p class="text-xs text-gray-500 mt-1">Doit contenir au moins 8 caractères, une majuscule et un chiffre</p>
                        </div>

                        <div class="mt-6">
                            <label for="confirm-password" class="block text-gray-700 text-sm font-bold mb-2">Confirmer le Mot de passe *</label>
                            <input type="password" id="confirm-password" name="confirm_password" required
                                   class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                   placeholder="Confirmez votre mot de passe">
                        </div>
                    </fieldset>

                    <!-- Section Conditions d'utilisation -->
                    <fieldset class="border-t pt-6">
                        <div class="flex items-center">
                            <input type="checkbox" id="conditions" name="conditions" required
                                   class="h-5 w-5 text-blue-600 rounded focus:ring-blue-600">
                            <label for="conditions" class="ml-3 text-gray-700">
                                J'accepte les <a href="#" class="text-blue-600 hover:underline">conditions d'utilisation</a> *
                            </label>
                        </div>
                    </fieldset>

                    <!-- Boutons -->
                    <div class="flex gap-4 pt-6 border-t">
                        <button type="submit"
                                class="flex-1 bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline transition duration-300">
                            S'inscrire
                        </button>
                        <button type="reset"
                                class="flex-1 bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline transition duration-300">
                            Réinitialiser
                        </button>
                    </div>
                </form>

                <div class="text-center mt-6">
                    <p class="text-gray-600">Vous avez déjà un compte ?
                        <a href="login.jsp" class="text-blue-600 hover:underline font-semibold">Se connecter</a>
                    </p>
                </div>
            </div>
        </div>
    </main>

</body>
</html>

