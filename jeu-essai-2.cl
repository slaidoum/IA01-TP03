(format T 
    "~%-------
Base de faits : ~%~T- Type d'empreintes : sabots
~%~T- Taille des sabots : 7cm
~%~T- Nombre de doigts : 2
~%~T- Bords de sabots : concaves
~%-------
BUT:
~%~T- Animal = bouquetin
~%-------")

;;;;;;;;;;;;;;;;;;;;;;;;
;; BASE DE FAITS
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter *BF*
  '((typeEmpreintes sabots)(nombreDoigts 2)
    (bords concaves)(tailleDoigts 7)(doigts-mediaux non)))

;;;;;;;;;;;;;;;;;;;;;;;;
;; BUTS
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter *BUT*
  '(animal bouquetin))
