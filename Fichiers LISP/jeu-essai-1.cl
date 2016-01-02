(format T 
    "~%-------
Base de faits : ~%~T- Type d'empreintes : pelotes
~%~T- Taille des doigts : 3cm
~%~T- Nombre de doigts : 4
~%~T- Griffes : rétractiles
~%-------
BUT:
~%~T- Animal = chat domestique
~%-------")

;;;;;;;;;;;;;;;;;;;;;;;;
;; BASE DE FAITS
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter *BF*
  '((typeEmpreintes pelotes)(tailleDoigts 3)
    (nombreDoigts 4) (griffes retractiles)))

;;;;;;;;;;;;;;;;;;;;;;;;
;; BUTS
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter *BUT*
  '(animal chat-domestique))
