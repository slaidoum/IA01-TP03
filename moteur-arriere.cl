;;;;;;;;;;;;;;;;;
;;Moteur arrière
;;;;;;;;;;;;;;;;;

;;On récupère toutes les règles qui ont pour conclusion but
(defun regleCandidate (but *BR*)
  (cond
   ((null *BR*) nil)
   ((equal but (car (getConclusion (car *BR*))))
    (cons (car *BR*) (regleCandidate but (cdr *BR*))))
   (T (regleCandidate but (cdr *BR*)))
  )
  )

(defun trouver (but baseF)
  (if (equal (assoc (car but) baseF) but)
          T
        )
  )

;;Fonction de lancement du moteur arrière
(defun moteurArriere (but)
  (or (trouver but baseFaits)
      (let ((regleCan (regleCandidate but *BR*)) OK)
        (loop 
          (if (or OK (null regleCan)) (return nil))
          (setq OK (verifie (pop regleCan)))
          )
        OK
        )
      )
  )

(defun verifie (regle)
  (let ((OK T) (premisse (getPremisses regle)))
    (loop
      (if (or (not OK) (null premisse)) (return nil))
      (setq OK (moteurArriere (pop premisse)))
      )
    OK
    )
  )

