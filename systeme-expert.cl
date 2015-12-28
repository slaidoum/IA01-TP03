;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; IA01 - TP03 ;;;;;;
;;; LAIDOUM Sebastien ;;
;;;;; LUCCI Tanguy ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;
;; BASE DE REGLES
;;;;;;;;;;;;;;;;;;;;;;;;

;; Importation de la base de règles
;; /!\ Fonctionne si Allegro lancé depuis le fichier directement
(defparameter regles-pathfile 
  (merge-pathnames "base-regles.cl" *default-pathname-defaults*))
;; /!\ Sinon, mettre son propre chemin absolu vers le fichier :
;; (defparameter regles-pathfile (make-pathname :name "A_MODIFIER"))
(load regles-pathfile)

;;;;;;;;;;;;;;;;;;;;;;;;
;; BASE DE FAITS
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter *BF*
  ((tailleMin 3) (tailleMax 3) (nombreDoigts 4) (griffes retractiles)))

;;;;;;;;;;;;;;;;;;;;;;;;
;; BUTS
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter *BUT*
  (animal chat-domestique))

;;;;;;;;;;;;;;;;;;;;;;;;
;; SYSTEME EXPERT
;;;;;;;;;;;;;;;;;;;;;;;;

(defun getAttribut (fait)
  (nth 0 fait))
(defun getValeur (fait)
  (nth 1 fait))
(defun getOperateur (fait)
  (nth 2 fait))
(defun isNumericCondition (triplet)
  (if (getOperateur triplet) T nil))
(defun evalNumericCondition (premisse fait)
  ;; exemple
  ;; prémisse (taille 3 >) fait (taille 4)
  ;; --> (eval (> 4 3))
  (eval (list
         (getOperateur premisse)
         (getValeur fait)
         (getValeur premisse)
         )
        )
  )

;;;;;;;;;;;;;;;;;;;;;;;;
;; MANIPULATION DES REGLES
;;;;;;;;;;;;;;;;;;;;;;;;

(defun getPremisses (regle) (car (symbol-value regle)))
(defun getConclusion (regle) (cadr (symbol-value regle)))
;; (defun regle_verifiee?) à FAIRE
(defun regle_verifiee? (regle baseFaits)
  (let ((premisses (car regle)) (valide T))
    (loop
      (if (or (nil premisses) (nil valide)) (return))
      (if 
          (nil (premisse_verifiee? (pop premisses) baseFaits))
          (setq valide nil))
      )
    valide
    )
  )

(defun premisse_verifiee? (premisseRegle baseFaits)
  ;; on récupère le fait associé à la prémisse dans la base de faits
  (let ((faitAssocie (assoc (getAttribut premisseRegle) baseFaits)))
    (cond
     ((nil faitAssocie) nil)
     ((isNumericCondition premisseRegle)
      ;; comparaison numérique
      (evalNumericCondition premisseRegle faitAssocie))
     (T
      ;; simple comparaison de valeur
      (equal premisseRegle faitAssocie))
     )
    )
  )

;;;;;;;;;;;;;;;;;;;;;;;;
;; MOTEUR AVANT
;;;;;;;;;;;;;;;;;;;;;;;;

(defun filtrageAvant (baseRegles baseFaits)
  (let ((ensembleConflits))
    (dolist (r baseRegles)
      (if (regle_verifiee? r baseFaits) (push r ensembleConflits))
      )
    )
  ensembleConflits
  )

(defun decisionAvant (ensembleConflits but)
  ;; On parcourt les règles filtrées pour voir si il y en a une qui amène au but
  ;; directement
  (let ((valeurRetour) (c ensembleConflits))
    (loop
      (if (nil c) (return (car ensembleConflits)))
      (if (equal (getConclusion (car c)) but) (return (car c)))
      (setq c (cdr c))
      )
    )
  )

(defun moteurAvant (baseRegles baseFaits but)
  (let
      ;; On utilise des variables locales pour pouvoir les manipuler 
      ((baseR baseRegles) (baseF baseFaits) (ensembleConflits) (conclusion))
    (loop
      ;; Si but établi
      (if (equal (assoc (car but) baseF) but)
          (progn (setq conclusion T) (return))
        )
      (setq ensembleConflits (filtrageAvant baseR baseF))
      ;; S'il n'y a plus de règles applicables
      (if (nil ensembleConflits) (progn (setq conclusion nil) (return)))
      (let ((regle))
        (setq regle (decisionAvant ensembleConflits but))
        (push baseF (getConclusion regle)) ;; ajout dans la base de faits
        (setq baseR (remove regle baseR)) ;; on ignore cette règle après
        )
      )
    conclusion
    )
  )




