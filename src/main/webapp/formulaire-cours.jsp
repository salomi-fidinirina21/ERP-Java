<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter un Cours - MyUniversity</title>
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
                    <h1 class="text-3xl font-bold text-gray-900">Ajouter un Cours</h1>
                    <p class="text-gray-600 mt-2">Veuillez remplir le formulaire ci-dessous pour créer un nouveau cours</p>
                </div>

                <form action="ajouter-cours" method="post" class="space-y-6">

                    <!-- Section Informations Générales -->
                    <fieldset class="border-t pt-6">
                        <legend class="text-xl font-semibold text-gray-900 mb-4">Informations Générales</legend>

                        <div>
                            <label for="code-cours" class="block text-gray-700 text-sm font-bold mb-2">Code du Cours *</label>
                            <input type="text" id="code-cours" name="code_cours" required
                                   class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                   placeholder="ex: INF-001, MATH-201">
                            <p class="text-xs text-gray-500 mt-1">Code unique pour identifier le cours</p>
                        </div>

                        <div class="mt-6">
                            <label for="nom-cours" class="block text-gray-700 text-sm font-bold mb-2">Titre du Cours *</label>
                            <input type="text" id="nom-cours" name="nom_cours" required
                                   class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                   placeholder="ex: Développement Web, Algorithmes Avancés">
                        </div>

                        <div class="mt-6">
                            <label for="description" class="block text-gray-700 text-sm font-bold mb-2">Description</label>
                            <textarea id="description" name="description" rows="4"
                                      class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                      placeholder="Décrivez le contenu et les objectifs du cours..."></textarea>
                        </div>
                    </fieldset>

                    <!-- Section Détails du Cours -->
                    <fieldset class="border-t pt-6">
                        <legend class="text-xl font-semibold text-gray-900 mb-4">Détails du Cours</legend>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="enseignant" class="block text-gray-700 text-sm font-bold mb-2">Enseignant Responsable *</label>
                                <select id="enseignant" name="enseignant_id" required
                                        class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                                    <option value="">-- Sélectionner un enseignant --</option>
                                    <option value="1">Pr. Fabrice RAZAFINDRAIBE</option>
                                    <option value="2">Pr. Jean RAKOTOBE</option>
                                    <option value="3">Dr. Soa RAKOTONIRINA</option>
                                </select>
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
                            <div>
                                <label for="semestre" class="block text-gray-700 text-sm font-bold mb-2">Semestre *</label>
                                <select id="semestre" name="semestre" required
                                        class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                                    <option value="">-- Sélectionner --</option>
                                    <option value="1">Semestre 1</option>
                                    <option value="2">Semestre 2</option>
                                    <option value="3">Semestre 3</option>
                                    <option value="4">Semestre 4</option>
                                </select>
                            </div>

                            <div>
                                <label for="niveau" class="block text-gray-700 text-sm font-bold mb-2">Niveau d'Études *</label>
                                <select id="niveau" name="niveau" required
                                        class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                                    <option value="">-- Sélectionner --</option>
                                    <option value="Licence 1">Licence 1</option>
                                    <option value="Licence 2">Licence 2</option>
                                    <option value="Licence 3">Licence 3</option>
                                    <option value="Master 1">Master 1</option>
                                    <option value="Master 2">Master 2</option>
                                </select>
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
                            <div>
                                <label for="capacite-max" class="block text-gray-700 text-sm font-bold mb-2">Capacité Maximum *</label>
                                <input type="number" id="capacite-max" name="capacite_max" required min="1"
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="ex: 50">
                            </div>

                            <div>
                                <label for="langue" class="block text-gray-700 text-sm font-bold mb-2">Langue d'Enseignement *</label>
                                <select id="langue" name="langue" required
                                        class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                                    <option value="">-- Sélectionner --</option>
                                    <option value="Français">Français</option>
                                    <option value="Anglais">Malagasy</option>
                                </select>
                            </div>
                        </div>
                    </fieldset>

                    <!-- Section Horaires et Localisation -->
                    <fieldset class="border-t pt-6">
                        <legend class="text-xl font-semibold text-gray-900 mb-4">Horaires et Localisation</legend>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="date-debut" class="block text-gray-700 text-sm font-bold mb-2">Date de Début *</label>
                                <input type="date" id="date-debut" name="date_debut" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                            </div>

                            <div>
                                <label for="date-fin" class="block text-gray-700 text-sm font-bold mb-2">Date de Fin *</label>
                                <input type="date" id="date-fin" name="date_fin" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
                            <div>
                                <label for="jour-cours" class="block text-gray-700 text-sm font-bold mb-2">Jour du Cours *</label>
                                <select id="jour-cours" name="jour_cours" required
                                        class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                                    <option value="">-- Sélectionner --</option>
                                    <option value="Lundi">Lundi</option>
                                    <option value="Mardi">Mardi</option>
                                    <option value="Mercredi">Mercredi</option>
                                    <option value="Jeudi">Jeudi</option>
                                    <option value="Vendredi">Vendredi</option>
                                </select>
                            </div>

                            <div>
                                <label for="heure-debut" class="block text-gray-700 text-sm font-bold mb-2">Heure de Début *</label>
                                <input type="time" id="heure-debut" name="heure_debut" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
                            <div>
                                <label for="heure-fin" class="block text-gray-700 text-sm font-bold mb-2">Heure de Fin *</label>
                                <input type="time" id="heure-fin" name="heure_fin" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent">
                            </div>

                            <div>
                                <label for="salle" class="block text-gray-700 text-sm font-bold mb-2">Salle / Localisation *</label>
                                <input type="text" id="salle" name="salle" required
                                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                       placeholder="ex: Pavillon A, Salle 101 ou Amphi-Madagascar">
                            </div>
                        </div>
                    </fieldset>

                    <!-- Section Prérequis -->
                    <fieldset class="border-t pt-6">
                        <legend class="text-xl font-semibold text-gray-900 mb-4">Prérequis</legend>

                        <div>
                            <label for="prerequis" class="block text-gray-700 text-sm font-bold mb-2">Prérequis (optionnel)</label>
                            <textarea id="prerequis" name="prerequis" rows="3"
                                      class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                      placeholder="Décrivez les prérequis nécessaires pour suivre ce cours..."></textarea>
                        </div>
                    </fieldset>

                    <!-- Boutons -->
                    <div class="flex gap-4 pt-6 border-t">
                        <button type="submit"
                                class="flex-1 bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline transition duration-300">
                            Créer le Cours
                        </button>
                        <button type="reset"
                                class="flex-1 bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline transition duration-300">
                            Réinitialiser
                        </button>
                    </div>
                </form>

                <div class="text-center mt-6">
                    <a href="cours.jsp" class="text-blue-600 hover:underline">
                        &larr; Retour aux cours
                    </a>
                </div>
            </div>
        </div>
    </main>

</body>
</html>

