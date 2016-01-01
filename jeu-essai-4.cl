(format T 
    "~%-------
Base de faits : ~Type d'empreintes : sabot
~%~T- Doigts mediaux: non
~%~T- sous-ordre: ruminant
~%~T- taille des doigts: 10
~%-------
BUT:
~%~T- Animal = vache
~%-------")

;;;;;;;;;;;;;;;;;;;;;;;;
;; BASE DE FAITS
;;;;;;;;;;;;;;;;;;;;;;;;

(defparameter baseFaits
  '((doigts-mediaux non)(sous-ordre ruminant)(tailleDoigts 10 =)))

;;;;;;;;;;;;;;;;;;;;;;;;
;; BUTS
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter *BUT*
  '(animal vache))
