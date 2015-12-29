;;;;;;;;;;;;;;;;;;;;;;;;
;; MOTEUR AVANT
;;;;;;;;;;;;;;;;;;;;;;;;

(defun filtrageAvant (baseRegles baseFaits)
  (let ((conflits))
    (dolist (r baseRegles)
      (if (regle_verifiee? r baseFaits) (push r conflits))
      )
    conflits
    )  
  )

(defun decisionAvant (listeConflits but)
  ;; On parcourt les règles filtrées pour voir si il y en a une qui amène au but
  ;; directement
  (let ((valeurRetour) (c listeConflits))
    (loop
      (if (null c) (return (car listeConflits)))
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
      (when (null ensembleConflits) (setq conclusion nil) (return))
      (let ((regle (decisionAvant ensembleConflits but)))
        (dolist (concl (getConclusion regle))
          (cond
           ((stringp concl) (afficherConclusionRegle concl)) ;; on affiche le texte informatif
           ((listp concl) ;; ajout dans la base de faits
            (setq baseF (MAJ-base-faits baseF concl))
            ) 
           (T nil)
           )
          )
        (setq baseR (remove regle baseR)) ;; on ignore cette règle après
        )
      )
    (afficherConclusionChainage conclusion but)
    conclusion
    )
  )

(defun MAJ-base-faits (base-faits conclusion)
  (let ((attribut (car conclusion)))
    
    (if (null (assoc attribut base-faits))
        (push conclusion base-faits) ;; on ajoute et on retourne
      (push conclusion
            (remove
             (assoc attribut base-faits) base-faits)) ;; on remplace,même si c'est la même valeur
      )
    base-faits)
  )

(defun triggerAvant ()
  (defparameter *tabu-conclu* 0)
  (moteurAvant *BR* *BF* *BUT*))