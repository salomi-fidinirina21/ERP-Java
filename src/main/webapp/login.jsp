<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion - MyUniversity</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-50 flex items-center justify-center min-h-screen">

    <div class="bg-white p-10 rounded-lg shadow-2xl w-full max-w-md">
        <div class="text-center mb-8">
            <h1 class="text-3xl font-bold text-gray-800">MyUniversity</h1>
            <p class="text-gray-600 mt-2">Connectez-vous à votre espace étudiant</p>
        </div>

        <%-- Formulaire de connexion --%>
        <form action="login" method="post">
            <div class="mb-6">
                <label for="email" class="block text-gray-700 text-sm font-bold mb-2">Adresse Email</label>
                <input type="email" id="email" name="email" required
                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                       placeholder="votre.email@university.com">
            </div>

            <div class="mb-6">
                <label for="password" class="block text-gray-700 text-sm font-bold mb-2">Mot de passe</label>
                <input type="password" id="password" name="mdp" required
                       class="shadow-sm appearance-none border rounded-lg w-full py-3 px-4 text-gray-700 mb-3 leading-tight focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                       placeholder="******************">
            </div>

            <div class="flex items-center justify-between mb-6">
                <label class="inline-flex items-center">
                    <input type="checkbox" class="form-checkbox h-5 w-5 text-blue-600" name="remember-me">
                    <span class="ml-2 text-gray-700">Se souvenir de moi</span>
                </label>
                <a href="#" class="inline-block align-baseline font-bold text-sm text-blue-600 hover:text-blue-800">
                    Mot de passe oublié ?
                </a>
            </div>

            <div>
                <button type="submit"
                        class="w-full bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-4 rounded-lg focus:outline-none focus:shadow-outline transition duration-300">
                    Se connecter
                </button>
            </div>
        </form>

        <div class="text-center mt-6">
            <a href="index.jsp" class="text-blue-600 hover:underline">
                &larr; Retour à l'accueil
            </a>
        </div>
    </div>

</body>
</html>