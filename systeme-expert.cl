;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; IA01 - TP03 ;;;;;;
;;; LAIDOUM Sebastien ;;
;;;;; LUCCI Tanguy ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;

;; DEFINITION DU PATHFILE POUR IMPORTER LES DIFFERENTS FICHIERS
;; /!\ Fonctionne si Allegro lancé depuis le fichier directement
(defparameter pathfile *default-pathname-defaults*)
;; /!\ Sinon, mettre son propre chemin absolu vers le fichier :
;; (defparameter pathfile "CHEMIN_ABSOLU_VERS_DOSSIER_COURANT")

;; BASE DE REGLES
;;;;;;;;;;;;;;;;;;;;;;;;
;; Importation de la base de règles
(load (merge-pathnames "base-regles.cl" pathfile))

;; MOTEUR AVANT
;;;;;;;;;;;;;;;;;;;;;;;;
;; Importation du moteur en chaînage avant
(load (merge-pathnames "moteur-avant.cl" pathfile))

;; MOTEUR ARRIERE
;;;;;;;;;;;;;;;;;;;;;;;;
;; Importation du moteur en chaînage avant
(load (merge-pathnames "moteur-arriere.cl" pathfile))

;; FONCTIONS UTILITAIRES
;;;;;;;;;;;;;;;;;;;;;;;;
;; Importation des fonctions utilitaires
(load (merge-pathnames "fonctions-utilitaires.cl" pathfile))

;; JEU ESSAI n°1
;;;;;;;;;;;;;;;;;;;;;;;;
(load (merge-pathnames "jeu-essai-1.cl" pathfile))
;; ==> Jeu CONCLUANT (renvoie TRUE à l'essai)

;; JEU ESSAI n°2
;;;;;;;;;;;;;;;;;;;;;;;;
(load (merge-pathnames "jeu-essai-2.cl" pathfile))
;; ==> Jeu CONCLUANT (renvoie TRUE à l'essai)

;; JEU ESSAI n°3
;;;;;;;;;;;;;;;;;;;;;;;;
(load (merge-pathnames "jeu-essai-3.cl" pathfile))
;; ==> Jeu NON CONCLUANT (renvoie NIL à l'essai)

;; JEU ESSAI n°4
;;;;;;;;;;;;;;;;;;;;;;;;
(load (merge-pathnames "jeu-essai-4.cl" pathfile))
;; ==> Jeu NON CONCLUANT (renvoie T à l'essai)