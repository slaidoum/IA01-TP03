;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PARTIE MAMMIFERES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Empreintes de mains
;;;;;;;;;;;;;;;;;;;;;;;;

(defparameter R1
  '( ((typeEmpreintes mains)(patte non-palmee)(nombreDoigts 5 =)) ((sous-ordre insectivore) "L'animal est un insectivore") ))
(defparameter R2
  '( ((typeEmpreintes mains)(patte palme-arriere)(nombreDoigts 5 =))
    ((sous-ordre rongeur) "L'animal est un rongueur" (classe-abst rongeur5doigts)) ))
(defparameter R3
  '( ((typeEmpreintes mains)(nombreDoigts 4 =)) ((sous-ordre rongeur) "L'animal est un rongeur") ))
(defparameter R4
  '( ((nombreDoigts 4 =)(sous-ordre rongeur)) ((famille leoporide) "L'animal est un léoporidé") ))
;; Léoporids
(defparameter R5
  '( ((famille leoporide) (tailleDoigts 3 =>) (tailleDoigts 4 =<)) ((animal lapin)) ))
(defparameter R6
  '( ((famille leoporide) (tailleDoigts 5 =)) ((animal lievre)) ))
;; Insectivores
(defparameter R7
  '( ((sous-ordre insectivore)(tailleDoigts 1 <))
    ((famille soricide) "L'animal est un soricidé" (animal musaraigne)) ))
(defparameter R8
  '( ((sous-ordre insectivore)(tailleDoigts 1 =>)(tailleDoigts 2 =<))
    ((famille talpide) "L'animal est un talpidé" (animal taupe)) ))
(defparameter R9
  '( ((sous-ordre insectivore)(tailleDoigts 3 =>)(tailleDoigts 4 =<))
    ((famille erinaceide) "L'animal est un erinacéidé" (animal herisson)) ))
;; Rongueurs à 5 doigts
(defparameter R10
  '( ((classe-abst rongeur5doigts)(famille myocastoride)) ((animal ragondin)) ))
(defparameter R11
  '( ((classe-abst rongeur5doigts)(famille castoride)) ((animal castor)) ))
 
;;;;;;;;;;;;;;;;;;;;;;;;
;; Empreintes de pelotes
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter R12
  '( ((typeEmpreintes pelotes)(nombreDoigts 4 =)(griffes presentes)) ((famille canide) "L'animal est un canidé.") ))
(defparameter R13
  '( ((typeEmpreintes pelotes)(nombreDoigts 4 =)(griffes retractiles)) ((famille felide) "L'animal est un félidé.") ))
(defparameter R14
  '( ((typeEmpreintes pelotes)(nombreDoigts 5 =)(griffes retractiles)) ((famille viverride) "L'animal est un viverridé.") ))
(defparameter R15
  '( ((typeEmpreintes pelotes)(nombreDoigts 5 =)(griffes presentes)) ((classe-abs 5pelotes-griffes) "L'animal a des pattes à 5 pelottes et des griffes.") ))
(defparameter R16
  '( ((classe-abs 5pelotes-griffes)(disposition cercle)) ((famille mustelide) "L'animal est un mustelidé.") ))
(defparameter R17
  '( ((classe-abs 5pelotes-griffes)(disposition etoile)) ((famille mustelide) "L'animal est un mustelidé.") ))
(defparameter R18
  '( ((classe-abs 5pelotes-griffes)(disposition ligne)(tailleDoigts 6 =)) ((famille mustelide) "L'animal est un mustelidé.") )) ;; cas spécial
(defparameter R19
  '( ((classe-abs 5pelotes-griffes)(disposition ligne)(tailleDoigts 9 >)(tailleDoigts < 16)) ((famille urside) "L'animal est un ursidé.") ))

;; Canidés
(defparameter R20
  '( ((famille canide)(tailleDoigts 5 =)) ((animal renard)) ))
(defparameter R21
  '( ((famille canide)(tailleDoigts 7 =)) ((animal loup)) ))
;; Félidés
(defparameter R22
  '( ((famille felide)(tailleDoigts 3 =)) ((animal chat-domestique)) ))
(defparameter R23
  '( ((famille felide)(tailleDoigts 4 =)) ((animal chat-sauvage)) ))
;; Viverridés
(defparameter R24
  '( ((famille viverride)) ((animal genette)) )) ;; animal unique dans les sources
;; Ursidés
(defparameter R25
  '( ((famille urside)) ((animal ours)) )) ;; animal unique dans les sources
;; Mustelidés
(defparameter R26
  '( ((famille mustelide)(tailleDoigts 1 =)) ((animal belette)) ))
(defparameter R27
  '( ((famille mustelide)(tailleDoigts 2 =)) ((animal putois)) ))
(defparameter R28
  '( ((famille mustelide)(tailleDoigts 3 =)) ((animal vison)) ))
(defparameter R29
  '( ((famille mustelide)(tailleDoigts 4 =)(poils non)) ((animal fouine)) ))
(defparameter R30
  '( ((famille mustelide)(tailleDoigts 4 =)(poils oui)) ((animal martre)) ))
(defparameter R31
  '( ((famille mustelide)(tailleDoigts 5 =)) ((animal loutre)) ))
(defparameter R32
  '( ((famille mustelide)(tailleDoigts 6 =)) ((animal blaireau)) ))

;;;;;;;;;;;;;;;;;;;;;;;;
;; Empreintes de sabots
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter R33
  '( ((typeEmpreintes sabots)(nombreDoigts 4 =)) ((famille suide)(sous-ordre suide) "L'animal est un suidé.") ))
(defparameter R34
  '( ((typeEmpreintes sabots)(nombreDoigts 1 =)) ((famille equide)(sous-ordre equide) "L'animal est un équidé.") ))
(defparameter R35
  '( ((typeEmpreintes sabots)(nombreDoigts 2 =)) ((sous-ordre ruminant) "L'animal est un ruminant.") ))
(defparameter R36
  '( ((sous-ordre ruminant)(doigts-mediaux oui)) ((famille cervide) "L'animal est un cervidé.") ))
(defparameter R37
  '( ((sous-ordre ruminant)(doigts-mediaux non)) ((famille bovide) "L'animal est un bovidé.") ))
;; Suidés
(defparameter R38
  '( ((famille suide)) ((animal sanglier)) )) ;; unique animal suidé dans les sources
;; Cervidé
(defparameter R39
  '( ((famille cervide)(tailleDoigts 5 =)) ((animal chevreuil)) ))
(defparameter R40
  '( ((famille cervide)(tailleDoigts 6 =)) ((animal daim)) ))
(defparameter R41
  '( ((famille cervide)(tailleDoigts 6 >)(tailleDoigts 11 <)) ((animal cerf)) ))
;; Bovidés
(defparameter R42
  '( ((famille bovide)(bords convexes)) ((famille-abst bovideConvexe) "L'animal est un bovidé à sabots convexes.") )) ;; déclaration de famille abstraite
(defparameter R43
  '( ((famille bovide)(bords concaves)) ((famille-abst bovideConcave) "L'animal est un bovidé à sabots concaves.") )) ;; déclaration de famille abstraite
(defparameter R44
  '( ((famille bovide)(bords circulaires)) ((famille-abst bovideCirculaire) "L'animal est un bovidé à sabots circulaires.") )) ;; déclaration de famille abstraite
(defparameter R45
  '( ((famille-abst bovideConvexe)(tailleDoigts 5 =)) ((animal mouton)) ))
(defparameter R46
  '( ((famille-abst bovideConvexe)(tailleDoigts 5 >)(tailleDoigts < 8)) ((animal chevre)) ))
(defparameter R47
  '( ((famille-abst bovideConcave)(tailleDoigts 5 =)) ((animal chamois)) ))
(defparameter R48
  '( ((famille-abst bovideConcave)(tailleDoigts 7 =)) ((animal bouquetin)) ))
(defparameter R49
  '( ((famille-abst bovideCirculaire)) ((animal vache)) ))
(defparameter R50
  '( ((famille bovide)(tailleDoigts 10 =)) ((animal vache)) ))

;;;; Définition de la base de règle (AUTOMATISE)

;; Fonction utilitaire
(defun mashup-symbol (&rest objects)
  (intern ( symbol-name (intern (format nil "~{~a~}" objects)))))

(defparameter *BR* ()) ;; Initialisation
(defparameter nombreDeRegles 50)
(dotimes (i nombreDeRegles t)
  (let ((k (+ i 1)))
    (setq *BR* (append *BR* (list (mashup-symbol 'R k))))
    )
  )

