# Station Magazine — Gestion simple du magasin

**Version 2 — React 19 + Vite + Express + Prisma + SQLite**  
Interface française responsive, montants en DA, fonctionnement local Windows sans Docker.

Station Magazine relie **demande d’achat → approbation → réception → entrée en stock → vente → sortie de stock**. La quantité de stock n'est pas saisie manuellement au moment de la vente ou de la réception : elle est calculée par le serveur avec une transaction en base.

## Installer sous Windows

1. Installer Node.js 20 ou 22 (Node.js 22 recommandé) : https://nodejs.org/.
2. Extraire **tout** le fichier ZIP dans un dossier de votre choix, par exemple `C:\Users\GEEK\Desktop\station-magazine`.
3. Ouvrir le dossier dans Visual Studio Code, puis **Terminal → Nouveau terminal**.
4. Taper :

   ```powershell
   .\install.bat
   ```

5. Une fois terminé, ouvrir le fichier **`.env`** à la racine du dossier. Il contient les **mots de passe initiaux générés individuellement**.
6. Démarrer :      

   ```powershell
   .\start.bat
   ```

7. Dans votre navigateur, ouvrir **http://localhost:5173**.

Si le terminal bloque `npm.ps1`, utiliser `npm.cmd` (les deux fichiers `.bat` le font déjà) :

```powershell
npm.cmd install
npm.cmd run setup
npm.cmd run dev
```

**N’exécutez pas simplement `install.bat` dans PowerShell.** Il faut écrire ` .\install.bat `.

## Trois comptes et accès

Le premier démarrage crée **trois comptes par défaut**, avec des mots de passe différents et aléatoires enregistrés dans `.env` :

| Compte | Nom utilisateur | Permissions |
| --- | --- | --- |
| Responsable | `manager` | Tableau de bord, approuver/refuser les demandes, consulter les ventes, stock, articles, réceptions, audit et comptes utilisateurs ; corrections de stock justifiées |
| Magasinier | `magasinier` | Créer les demandes d'achat, enregistrer les réceptions validées, gérer les articles, importer Excel, lire/ajuster le stock avec motif |
| Vendeur | `vendeur` | Scanne les codes-barres, ajoute des produits, crée les ventes, consulte **ses propres** ventes |

**Accès appliqués sur le serveur** : cacher un bouton n'est pas la seule protection. Le vendeur ne peut pas utiliser les endpoints de demandes d’achat, de réceptions, de tableau de bord, d'inventaire ou de comptes. Les prix d’achat sont masqués dans les réponses produits et ventes envoyées au vendeur.

Le responsable peut ajouter d'autres collaborateurs depuis **Comptes et accès**, avec uniquement l'un de ces trois rôles. Il ne peut pas désactiver/dégrader son propre compte. Chaque utilisateur peut modifier son mot de passe.

**Important :** `.env` contient seulement les mots de passe **initiaux**. Une fois le mot de passe changé dans l’application, le mot de passe dans `.env` n'est plus valide pour ce compte.

## Utilisation simple

**Magasinier** : se connecter → Accueil → Demandes d’achat → Nouvelle demande. Le responsable approuve la demande. Ensuite, **Réception produits** → Nouvelle réception et saisir uniquement les produits livrés. Le stock augmente automatiquement. Les réceptions partielles sont acceptées.

**Responsable** : se connecter → Vue générale. Voir les demandes à valider, ventes, ruptures de stock et graphiques. Ouvrir **Demandes à valider**, sélectionner une demande, l'approuver ou la refuser. Consulte également le rapport de ventes et les comptes.

**Vendeur** : se connecter → Nouvelle vente. Scanner un article avec un lecteur code-barres USB HID en mode clavier (suffixe **Entrée**) ou chercher l’article sans code-barres. Entrer la quantité et valider. Le stock diminue automatiquement. Une vente avec quantité insuffisante est refusée.

### Huile, citerne, carton, sac

Chaque article possède une **unité de stock/vente** et une **unité d'achat** avec coefficient :

- Huile : unité stock `L`, unité achat `Citerne 1 000 L`, coefficient `1000`.
- 10 citernes réceptionnées = **10 000 L**.
- 10 L vendus = **9 990 L restants**, soit **9 citernes + 990 L** en équivalent de conditionnement.
- Cette décomposition est **théorique** : le système ne suit pas séparément chaque citerne physique.

### Articles et codes-barres

Le nom normalisé, l'ID interne et le code-barres (si présent) sont uniques en base. Un article peut ne pas avoir de code-barres : créer la fiche puis générer/imprimer son étiquette plus tard. Le formulaire **Ajouter un article** présente les champs essentiels ; les réglages avancés sont repliés.

Le module **Import Excel** accepte Excel/CSV pour intégrer une liste mixte d'articles, avec validation, détection de doublons et rapport d'erreurs. Un import d'articles **n'ajoute pas de quantité au stock** : utilisez une réception ou un ajustement motivé.

### Démonstration

Sur une **base vierge uniquement**, `setup` crée sept articles de démonstration et l'exemple 10 citernes - 10 L. **N’utilisez pas la base de démonstration pour des opérations réelles sans vérifier/effacer ces données.**

## Mise à jour depuis l'ancien Magasin Pro — conserver les données

1. Arrêter l'ancienne application.
2. Sauvegarder tout l'ancien dossier, surtout **`.env`** et **`prisma/magasin.db`** (et tout autre fichier `*.db*`).
3. Copier les **fichiers source** de Station Magazine dans l'ancien dossier **sans écraser `.env` ni les fichiers de base de données**. Vous pouvez aussi créer un nouveau dossier Station Magazine et y copier vos anciens `.env` et `prisma/magasin.db` **avant** installation.
4. Lancer ` .\install.bat ` dans le dossier contenant l'ancienne base. La procédure ajoute les deux nouveaux comptes et convertit l'ancien administrateur en **Responsable**.
5. Si vous aviez un ancien compte `admin@magasin.local`, utilisez désormais le nom utilisateur **`manager`** avec son ancien mot de passe ; le script ne remplace pas les mots de passe des comptes existants.
6. Vérifier le catalogue, les quantités de stock, les demandes, les ventes et les droits des comptes avant de travailler sur les données réelles.

**N'effacez jamais une base active pour réinstaller une interface.** Les comptes supplémentaires créés dans l'ancien projet restent en place : « trois comptes » signifie trois comptes de démarrage et trois types d'accès, pas la suppression des collaborateurs déjà enregistrés.

## Limites et précautions

Il s'agit d'une version pilote pour tester l'organisation du magasin, et non d'un logiciel ERP homologué / prêt pour déploiement Internet. Avant toute utilisation quotidienne avec plusieurs postes : prévoir PostgreSQL, HTTPS, sauvegardes automatisées restaurables, tests de charge et contrôle réel d'un lecteur code-barres. Les retours de vente, lots/citernes physiques, multi-entrepôts, facturation légale et accès réseau distant ne sont pas inclus dans ce prototype.

La base SQLite se trouve dans `prisma/magasin.db`. Sauvegardez-la **application arrêtée** et protégez le fichier `.env`. Le backend fonctionne sur le port `4000` et Vite sur le port `5173`.

### Commandes avancées

```powershell
npm.cmd run test
npm.cmd run build
npm.cmd run db:studio
```

## Déploiement cloud

Le projet contient une configuration Docker et PostgreSQL distincte de la base SQLite locale de test.

1. Copier `.env.production.example` vers `.env.production` et remplacer les valeurs d'exemple par des secrets forts.
2. Sur un serveur avec Docker, lancer `docker compose --env-file .env.production up --build`.
3. Pour Railway, créer une base PostgreSQL, connecter ce dépôt, puis définir les variables de `.env.production.example` dans le tableau de bord.

La première base PostgreSQL est initialisée avec les comptes et données de démonstration. Ne copiez pas `prisma/magasin.db` vers la production.

## Vérifications effectuées sur le code livré

- Syntaxe des fichiers JavaScript du serveur contrôlée.
- Les 15 fichiers JSX/JS du frontend passent l'analyse syntaxique.
- Huit tests unitaires passent : quantités, conversion citerne/litre, normalisation et matrice de permissions.
- **Limitation de la livraison :** l'installation des dépendances a expiré dans l'environnement de fabrication. Le lancement complet en navigateur et les migrations réelles de votre base devront être vérifiés sur votre PC.
