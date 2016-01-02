;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; FONCTIONS UTILITAIRES
;;;;;;;;;;;;;;;;;;;;;;;;
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
  ;; prémisse : (taille 3 >)
  ;; fait : (taille 4)
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
(defun regle_verifiee? (regle baseFaits)
  (let ((premisses (car (symbol-value regle))) (valide T))
    (loop
      (if (or (null premisses) (null valide)) (return))
      (if 
          (null (premisse_verifiee? (pop premisses) baseFaits))
          (setq valide nil))
      )
    valide
    )
  )

(defun premisse_verifiee? (premisseRegle baseFaits)
  ;; on récupère le fait associé à la prémisse dans la base de faits
  (let ((faitAssocie (assoc (getAttribut premisseRegle) baseFaits)))
    (cond
     ((null faitAssocie) nil)
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
;; FONCTIONS D'AFFICHAGE FORMATES
;;;;;;;;;;;;;;;;;;;;;;;;

(defun afficherConclusionRegle (texte)
  (format T "~%")
  (dotimes (x *tabu-conclu*)
    (format T "~T~T"))
  (format T (concatenate 'string "==> " texte))
  (incf *tabu-conclu*)
  )

(defun afficherConclusionChainage (conclusion but)
  (format T "~%----~%")
  (if conclusion
      (format T (concatenate 'string
                  "Les faits nous permettent de conclure que l'animal est un(e) "
                  (symbol-name (cadr but))))
    (format T (concatenate 'string
                  "Nous ne pouvons pas déterminer si l'animal est un(e) "
                (symbol-name (cadr but))))
    )
  (format T "~%----~%")
  )
