<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<nav class="bg-white shadow-md">
    <div class="container mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-16">
            <!-- Logo et liens principaux -->
            <div class="flex items-center">
                <a href="dashboard.jsp" class="text-2xl font-bold text-gray-900">MyUniversity</a>
                <div class="hidden sm:ml-6 sm:flex sm:space-x-8">
                    <a href="dashboard.jsp" class="text-gray-600 hover:text-blue-600 inline-flex items-center px-1 pt-1 text-sm font-medium">
                        Tableau de bord
                    </a>
                    <a href="cours.jsp" class="text-gray-600 hover:text-blue-600 inline-flex items-center px-1 pt-1 text-sm font-medium">
                        Mes Cours
                    </a>
                    <a href="notes.jsp" class="text-gray-600 hover:text-blue-600 inline-flex items-center px-1 pt-1 text-sm font-medium">
                        Mes Notes
                    </a>
                </div>
            </div>

            <!-- Section Profil et Déconnexion (grands écrans) -->
            <div class="hidden sm:ml-6 sm:flex sm:items-center">
                <a href="profil.jsp" class="p-1 text-gray-600 hover:text-gray-800">
                    <span class="sr-only">Voir le profil</span>
                    <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                    </svg>
                </a>
                <a href="logout" class="ml-3 bg-red-500 text-white px-3 py-1.5 rounded-md text-sm font-medium hover:bg-red-600 transition">
                    Déconnexion
                </a>
            </div>

            <!-- Bouton du menu mobile -->
            <div class="-mr-2 flex items-center sm:hidden">
                <button type="button" id="mobile-menu-button" class="bg-white inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none">
                    <span class="sr-only">Ouvrir le menu principal</span>
                    <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                        <path id="menu-open-icon" class="block" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        <path id="menu-close-icon" class="hidden" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Menu mobile (caché par défaut) -->
    <div class="sm:hidden hidden" id="mobile-menu">
        <div class="pt-2 pb-3 space-y-1">
            <a href="dashboard.jsp" class="block pl-3 pr-4 py-2 text-base font-medium text-gray-600 hover:bg-gray-50">Tableau de bord</a>
            <a href="cours.jsp" class="block pl-3 pr-4 py-2 text-base font-medium text-gray-600 hover:bg-gray-50">Mes Cours</a>
            <a href="notes.jsp" class="block pl-3 pr-4 py-2 text-base font-medium text-gray-600 hover:bg-gray-50">Mes Notes</a>
        </div>
        <div class="pt-4 pb-3 border-t border-gray-200">
            <div class="flex items-center px-4">
                <div class="text-base font-medium text-gray-800">Profil</div>
            </div>
            <div class="mt-3 space-y-1">
                <a href="profil.jsp" class="block px-4 py-2 text-base font-medium text-gray-500 hover:bg-gray-100">Voir mon profil</a>
                <a href="logout" class="block px-4 py-2 text-base font-medium text-gray-500 hover:bg-gray-100">Déconnexion</a>
            </div>
        </div>
    </div>
</nav>

<script>
  // Script pour gérer l'ouverture/fermeture du menu mobile
  (function() {
    var mobileMenuButton = document.getElementById('mobile-menu-button');
    if (mobileMenuButton) {
      var mobileMenu = document.getElementById('mobile-menu');
      var openIcon = document.getElementById('menu-open-icon');
      var closeIcon = document.getElementById('menu-close-icon');

      mobileMenuButton.addEventListener('click', function () {
        mobileMenu.classList.toggle('hidden');
        openIcon.classList.toggle('hidden');
        closeIcon.classList.toggle('hidden');
      });
    }
  })();

  // Script pour les accordéons
  document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('.accordion-toggle').forEach(button => {
        button.addEventListener('click', () => {
            const accordionContent = button.nextElementSibling;
            if (accordionContent.style.maxHeight) {
                accordionContent.style.maxHeight = null;
            } else {
                accordionContent.style.maxHeight = accordionContent.scrollHeight + "px";
            }
        });
    });
  });
</script>
