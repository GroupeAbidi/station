# Station Magazine — Version 2

- Renommage complet de l'application, du titre navigateur et des étiquettes.
- Interface plus simple, fond clair et contrastes renforcés ; grands boutons ; navigation mobile.
- Trois interfaces selon les rôles : Responsable, Magasinier, Vendeur.
- Trois comptes initiaux avec secrets de connexion générés indépendamment dans `.env`.
- Permissions API contrôlées côté serveur, en plus du filtrage de navigation.
- Responsable : dashboard simplifié, demandes à valider, suivi des ventes, utilisateurs, audit.
- Magasinier : accueil guidé, demandes, réceptions, stock, catalogue, import.
- Vendeur : caisse et recherche / scan, uniquement son historique, pas de prix d'achat accessibles.
- Formulaire article simplifié avec panneau d'options avancées repliable.
- Contrôle supplémentaire des quantités de panier combinées (vente au litre + conditionnement).
- Conservation des données existantes et compatibilité avec une ancienne configuration ADMIN_EMAIL/ADMIN_PASSWORD.
- 8 tests unitaires réussis (dont droits d'accès).
