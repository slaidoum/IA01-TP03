(format T 
    "~%-------
Base de faits : ~%~T- Type d'empreintes : pelotes
~%~T- Disposition des pelotes : en ligne
~%~T- Nombre de doigts : 4
~%~T- Griffes : présentes
~%-------
BUT:
~%~T- Animal = putois
~%-------")

;;;;;;;;;;;;;;;;;;;;;;;;
;; BASE DE FAITS
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter *BF*
  '((typeEmpreintes pelotes)(disposition ligne)
    (nombreDoigts 4)(griffes presentes)))

;;;;;;;;;;;;;;;;;;;;;;;;
;; BUTS
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter *BUT*
  '(animal putois))
