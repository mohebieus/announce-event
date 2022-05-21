## Script d'annonce d'événement
Voici un script que j'ai développer pour faire des annonce événement pour votre serveur.

## Installation

1 - Télécharger la ressource puis décompresser la dans votre répertoire `ressource` de votre serveur FiveM.

2 - Allez dans votre `server.cfg`, puis ajoutez cette ligne : `ensure eventAnnounce`

## Configuration

Dans ce script, j'ai adapté des moyens de configurations complet pour que ce script convienne à tout le monde.

La configuration est assez complèxe mais n'est pas compliqué à comprendre : 

|Nom|Valeur accépter|Détail|      
|----|-----|-------|      
|SecuriseScript|Boolean (`true` ou `false`)|Cette option permet d'activer la sécurisation supplémentaire du script.| 
|SecuriseWithBooleanValue|Boolean (`true` ou `false`)|Cette option permet d'activer la sécurisation par une valeur vrai ou fausse en fonction des conditions d'éxecution.| 
|UseESX|Boolean (`true` ou `false`)|Si vous utilisez la librairie ESX, cette valeur doit être sur `true`| 
|cl_GetPlayerGroupWithoutESX|Function|La fonction qui permet de détécter le groupe du joueur (coté `client`)| 
|sv_GetPlayerGroupWithoutESX|Function|La fonction qui permet de détécter le groupe du joueur (coté `server`)| 
## Crédit(s)
Auteur: 4z' Mohebieus#0001

