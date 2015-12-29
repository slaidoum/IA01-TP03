;;;;;;;;;;;;;;;;;
;;Moteur arrière
;;;;;;;;;;;;;;;;;

;;On récupère toutes les règles qui ont pour conclusion but
(defun regleCandidate (but baseRegle)
  (cond
   ((null baseRegle) nil)
   ((eq but (getConclusion (car baseRegle)))
    (cons (car baseRegle) (regleCandidate but (cdr baseRegle))))
   (T (regleCandidate but (cdr baseRegle)))
  )
)

(defun trouver (but baseFaits)
  (when (member but baseFaits) T)
 )

;;Fonction de lancement du moteur arrière
(defun moteurArriere (but)
  (or (trouver but baseFaits)
      (let ((regleCan (regleCandidate but baseRegles)) OK)
        (loop 
          (if (or OK (nill regleCan)) (return nil))
          (setq OK (verifie (pop regleCan)))
         )
      OK
      )
    )
)

(defun verifie (regle)
  (let ((OK T) (premisse (getPremisse regle)))
    (loop
      (if (or (not OK) (null premisse)) (return nil))
      (setq OK (moteurArrière (pop premisse)))
    )
  OK
  )
)

