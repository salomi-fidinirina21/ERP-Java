<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Inscription Administrateur - MyUniversity</title>
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

    <main class="container mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div class="max-w-2xl mx-auto">
            <div class="bg-white rounded-xl shadow-md p-8">
                <div class="mb-8">
                    <div class="inline-flex items-center justify-center h-12 w-12 rounded-md bg-red-600 text-white mb-4">
                        <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                        </svg>
                    </div>
                    <h1 class="text-3xl font-bold text-gray-900">Inscription Administrateur</h1>
                    <p class="text-gray-600 mt-2">Créer un compte administrateur pour gérer l'université</p>
                </div>

                <form action="inscription-admin" method="post" class="space-y-6">

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
                                <label for="email" class="block text-gray-700 text-sm font-bold mb-2">Email</label>
                                <input type="email" id="email" name="email" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="admin@university.edu">
                            </div>

                            <div>
                                <label for="telephone" class="block text-gray-700 text-sm font-bold mb-2">Téléphone *</label>
                                <input type="tel" id="telephone" name="telephone" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="+261 20 XX XX XX XX">
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

                    <!-- Section Informations Administratives -->
                    <fieldset class="border-t pt-6">
                        <legend class="text-xl font-semibold text-gray-900 mb-4">Informations Administratives</legend>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="poste" class="block text-gray-700 text-sm font-bold mb-2">Poste *</label>
                                <select id="poste" name="poste" required
                                        class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                                    <option value="">-- Sélectionner --</option>
                                    <option value="Directeur">Directeur</option>
                                    <option value="Vice-Directeur">Vice-Directeur</option>
                                    <option value="Responsable RH">Responsable RH</option>
                                    <option value="Responsable Scolarité">Responsable Scolarité</option>
                                    <option value="Responsable Finances">Responsable Finances</option>
                                    <option value="Administrateur Système">Administrateur Système</option>
                                </select>
                            </div>

                            <div>
                                <label for="departement" class="block text-gray-700 text-sm font-bold mb-2">Département *</label>
                                <select id="departement" name="departement" required
                                        class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                                    <option value="">-- Sélectionner --</option>
                                    <option value="Direction">Direction</option>
                                    <option value="Ressources Humaines">Ressources Humaines</option>
                                    <option value="Scolarité">Scolarité</option>
                                    <option value="Finances">Finances</option>
                                    <option value="IT">Informatique</option>
                                </select>
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
                            <div>
                                <label for="date-embauche" class="block text-gray-700 text-sm font-bold mb-2">Date de Prise de Fonction *</label>
                                <input type="date" id="date-embauche" name="date_embauche" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                            </div>

                            <div>
                                <label for="bureau" class="block text-gray-700 text-sm font-bold mb-2">Bureau / Localisation</label>
                                <input type="text" id="bureau" name="bureau"
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="ex: Bâtiment Administration, Bureau 301">
                            </div>
                        </div>
                    </fieldset>

                    <!-- Section Permissions -->
                    <fieldset class="border-t pt-6">
                        <legend class="text-xl font-semibold text-gray-900 mb-4">Permissions d'Accès</legend>

                        <div class="space-y-4">
                            <div class="flex items-center">
                                <input type="checkbox" id="perm-users" name="permissions" value="gerer_utilisateurs"
                                       class="h-5 w-5 text-blue-600 rounded focus:ring-blue-600">
                                <label for="perm-users" class="ml-3 text-gray-700">
                                    Gérer les utilisateurs (étudiants, enseignants, administrateurs)
                                </label>
                            </div>

                            <div class="flex items-center">
                                <input type="checkbox" id="perm-cours" name="permissions" value="gerer_cours"
                                       class="h-5 w-5 text-blue-600 rounded focus:ring-blue-600">
                                <label for="perm-cours" class="ml-3 text-gray-700">
                                    Gérer les cours et les inscriptions
                                </label>
                            </div>

                            <div class="flex items-center">
                                <input type="checkbox" id="perm-rapports" name="permissions" value="consulter_rapports"
                                       class="h-5 w-5 text-blue-600 rounded focus:ring-blue-600">
                                <label for="perm-rapports" class="ml-3 text-gray-700">
                                    Consulter et générer des rapports
                                </label>
                            </div>

                            <div class="flex items-center">
                                <input type="checkbox" id="perm-finances" name="permissions" value="gerer_finances"
                                       class="h-5 w-5 text-blue-600 rounded focus:ring-blue-600">
                                <label for="perm-finances" class="ml-3 text-gray-700">
                                    Gérer les finances et les frais de scolarité
                                </label>
                            </div>

                            <div class="flex items-center">
                                <input type="checkbox" id="perm-system" name="permissions" value="acces_system"
                                       class="h-5 w-5 text-blue-600 rounded focus:ring-blue-600">
                                <label for="perm-system" class="ml-3 text-gray-700">
                                    Accès aux paramètres système (sauvegardes, logs, configuration)
                                </label>
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
                                J'accepte les <a href="#" class="text-blue-600 hover:underline">conditions d'utilisation</a> et la <a href="#" class="text-blue-600 hover:underline">politique de confidentialité</a> *
                            </label>
                        </div>

                        <div class="flex items-center mt-4">
                            <input type="checkbox" id="responsabilite" name="responsabilite" required
                                   class="h-5 w-5 text-blue-600 rounded focus:ring-blue-600">
                            <label for="responsabilite" class="ml-3 text-gray-700">
                                Je reconnais ma responsabilité en tant qu'administrateur et m'engage à respecter les protocoles de sécurité *
                            </label>
                        </div>
                    </fieldset>

                    <!-- Boutons -->
                    <div class="flex gap-4 pt-6 border-t">
                        <button type="submit"
                                class="flex-1 bg-red-600 hover:bg-red-700 text-white font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline transition duration-300">
                            Créer le Compte Administrateur
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

