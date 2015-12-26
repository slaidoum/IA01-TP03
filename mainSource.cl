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


;;;;;
;; MANIPULATION DES REGLES
;;;;;

(defun getPremisses (regle) (car (symbol-value regle)))
(defun getConclusion (regle) (cadr (symbol-value regle)))

;;;;;
;; MOTEUR AVANT
;;;;;

;;

(defun filtrageAvantProfondeur (baseRegles baseFaits)
  (let ((ensembleConflits))
    (dolist (r baseRegles)
      (if (regle_verifiee? r baseFaits) (push r ensembleConflits))
      )
    )
  ensembleConflits
  )

(defun decisionAvantProfondeur (ensembleConflits but)
  ;; On parcourt les règles filtrées pour voir si il y en a une qui amène au but
  ;; directement
  (let ((valeurRetour))
    (dolist (r ensembleConflits)
      (if (equal (getConclusion r) but) (setq valeurRetour r))
      )
    (if (nil valeurRetour) (car ensembleConflits) valeurRetour)
    )
  )

(defun moteurAvant (baseRegles baseFaits but)
  (let
      ;; On met 
      ((baseR baseRegles)
       (baseF baseFaits))
    
    
