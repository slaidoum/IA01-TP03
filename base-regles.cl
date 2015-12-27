;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PARTIE OISEAUX
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Patte semi-plamée
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter R1 
  '( ((patte semi-palmee)(tailleDoigts 13 =)) ((animal spatule)) ))
(defparameter R2
  '( ((patte semi-palmee)(tailleDoigts 4 =)) ((animal avocette)) ))
(defparameter R3
  '( ((patte semi-palmee)(tailleDoigts 3 =)) ((animal sterne)) ))
;;;;;;;;;;;;;;;;;;;;;;;;
;; Patte lobée
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter R4
  '( ((patte lobee)(doigts aplatis)) ((animal grebe-castagneux)) ))
(defparameter R5
  '( ((patte lobee)(tailleDoigts 4 <)(tailleDoigts 10 <)) ((animal grebe-castagneux)) ))
(defparameter R6
  '( ((patte lobee)(doigts franges-festonnees)) ((animal foulque)) ))
(defparameter R7
  '( ((patte lobee)(tailleDoigts 12 =)) ((animal foulque)) ))
;;;;;;;;;;;;;;;;;;;;;;;;
;; Patte palmée
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter R8
  '( ((patte palmee)(doigtsReunis 4 =)) ((animal cormoran)) ))
(defparameter R9
  '( ((patte palmee)(empreinte allongee)(pouce absent)) ((animal guillemot)) ))
(defparameter R10
  '( ((patte palmee)(empreinte allongee)(pouce present)(tailleDoigts 5 =)) ((animal puffin)) ))
(defparameter R11
  '( ((patte palmee)(empreinte allongee)(pouce present)(tailleDoigts 10 =)) ((animal plongeon)) ))
(defparameter R12
  '( ((patte palmee)(empreinte condensee)(pouce plat)) ((animal fuligule)) ))
(defparameter R13
  '( ((patte palmee)(empreinte condensee)(tailleDoigts 5 =)) ((animal fuligule)) ))
(defparameter R14
  '( ((patte palmee)(empreinte condensee)(pouce reduit)(tailleDoigts 10 =)) ((animal flamant)) ))
(defparameter R15
  '( ((patte palmee)(empreinte condensee)(pouce reduit)(tailleDoigts 7 =)) ((animal labbe)) ))
(defparameter R16
  '( ((patte palmee)(empreinte condensee)(pouce reduit)(tailleDoigts 6 =)) ((animal goeland)) ))
(defparameter R17
  '( ((patte palmee)(empreinte condensee)(pouce reduit)(tailleDoigts 4 =)) ((animal mouette)) ))
(defparameter R18
  '( ((patte palmee)(empreinte condensee)(pouce droit)(tailleDoigts 9 =)) ((animal oie)) ))
(defparameter R19
  '( ((patte palmee)(empreinte condensee)(pouce droit)(tailleDoigts 4 =)) ((animal sarcelle)) ))
(defparameter R20
  '( ((patte palmee)(empreinte condensee)(pouce droit)(tailleDoigts 6 =)) ((animal canard)) ))
(defparameter R21
  '( ((patte palmee)(empreinte condensee)(pouce droit)(tailleDoigts 6 =)(frange laterale)) ((animal tadorne)) ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PARTIE MAMMIFERES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;
;; Empreintes de mains
;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;
;; Empreintes de pelotes
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter R22
  '( ((typeEmpreintes pelotes)(nombreDoigts 4 =)(griffes presentes)) ((famille canide)) ))
(defparameter R23
  '( ((typeEmpreintes pelotes)(nombreDoigts 4 =)(griffes retractiles)) ((famille felide)) ))
(defparameter R24
  '( ((typeEmpreintes pelotes)(nombreDoigts 5 =)(griffes retractiles)) ((famille viverride)) ))
(defparameter R25
  '( ((typeEmpreintes pelotes)(nombreDoigts 5 =)(griffes presentes)) ((classe-abs 5pelotes-griffes)) ))
(defparameter R26
  '( ((classe-abs 5pelotes-griffes)(disposition cercle)) ((famille mustelide)) ))
(defparameter R27
  '( ((classe-abs 5pelotes-griffes)(disposition etoile)) ((famille mustelide)) ))
(defparameter R28
  '( ((classe-abs 5pelotes-griffes)(disposition ligne)(tailleDoigts 6 =)) ((famille mustelide)) )) ;; cas spécial
(defparameter R29
  '( ((classe-abs 5pelotes-griffes)(disposition ligne)(tailleDoigts 9 >)(tailleDoigts < 16)) ((famille urside)) ))

;; Canidés
(defparameter R30
  '( ((famille canide)(tailleDoigts 5 =)) ((animal renard)) ))
(defparameter R31
  '( ((famille canide)(tailleDoigts 7 =)) ((animal loup)) ))
;; Félidés
(defparameter R32
  '( ((famille felide)(tailleDoigts 3 =)) ((animal chat-domestique)) ))
(defparameter R33
  '( ((famille felide)(tailleDoigts 4 =)) ((animal chat-sauvage)) ))
;; Viverridés
(defparameter R34
  '( ((famille viverride)) ((animal genette)) )) ;; animal unique dans les sources
;; Ursidés
(defparameter R35
  '( ((famille urside)) ((animal ours)) )) ;; animal unique dans les sources
;; Mustelidés
(defparameter R36
  '( ((famille mustelide)(tailleDoigts 1 =)) ((animal belette)) ))
(defparameter R37
  '( ((famille mustelide)(tailleDoigts 2 =)) ((animal putois)) ))
(defparameter R38
  '( ((famille mustelide)(tailleDoigts 3 =)) ((animal vison)) ))
(defparameter R39
  '( ((famille mustelide)(tailleDoigts 4 =)(poils non)) ((animal fouine)) ))
(defparameter R40
  '( ((famille mustelide)(tailleDoigts 4 =)(poils oui)) ((animal martre)) ))
(defparameter R41
  '( ((famille mustelide)(tailleDoigts 5 =)) ((animal loutre)) ))
(defparameter R42
  '( ((famille mustelide)(tailleDoigts 6 =)) ((animal blaireau)) ))

;;;;;;;;;;;;;;;;;;;;;;;;
;; Empreintes de sabots
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter R43
  '( ((typeEmpreinte sabots)(nombreDoigts 4 =)) ((famille suide)(sous-ordre suide)) ))
(defparameter R44
  '( ((typeEmpreinte sabots)(nombreDoigts 1 =)) ((famille equide)(sous-ordre equide)) ))
(defparameter R45
  '( ((typeEmpreinte sabots)(nombreDoigts 2 =)) ((sous-ordre ruminant)) ))
(defparameter R46
  '( ((sous-ordre ruminant)(doigts-mediaux oui)) ((famille cervide)) ))
(defparameter R47
  '( ((sous-ordre ruminant)(doigts-mediaux non)) ((famille bovide)) ))
;; Suidés
(defparameter R48
  '( ((famille suide)) ((animal sanglier)) )) ;; unique animal suidé dans les sources
;; Cervidé
(defparameter R49
  '( ((famille cervide)(tailleDoigts 5 =)) ((animal chevreuil)) ))
(defparameter R50
  '( ((famille cervide)(tailleDoigts 6 =)) ((animal daim)) ))
(defparameter R51
  '( ((famille cervide)(tailleDoigts 6 >)(tailleDoigts 11 <)) ((animal cerf)) ))
;; Bovidés
(defparameter R52
  '( ((famille bovide)(bords convexes)) ((famille-abst bovideConvexe)) )) ;; déclaration de famille abstraite
(defparameter R53
  '( ((famille bovide)(bords concaves)) ((famille-abst bovideConcave)) )) ;; déclaration de famille abstraite
(defparameter R54
  '( ((famille bovide)(bords circulaires)) ((famille-abst bovideCirculaire)) )) ;; déclaration de famille abstraite
(defparameter R55
  '( ((famille-abst bovideConvexe)(tailleDoigts 5 =)) ((animal mouton)) ))
(defparameter R56
  '( ((famille-abst bovideConvexe)(tailleDoigts 5 >)(tailleDoigts < 8)) ((animal chevre)) ))
(defparameter R57
  '( ((famille-abst bovideConcave)(tailleDoigts 5 =)) ((animal chamois)) ))
(defparameter R58
  '( ((famille-abst bovideConcave)(tailleDoigts 7 =)) ((animal bouquetin)) ))
(defparameter R59
  '( ((famille-abst bovideCirculaire)) ((animal vache)) ))
(defparameter R60
  '( ((famille bovide)(tailleDoigts 10 =)) ((animal vache)) ))

;;;; Définition de la base de règle (AUTOMATISE)

;; Fonction utilitaire
(defun mashup-symbol (&rest objects)
  (intern ( symbol-name (intern (format nil "~{~a~}" objects)))))

(defparameter *BR* ()) ;; Initialisation
(defparameter nombreDeRegles 60)
(dotimes (i nombreDeRegles t)
  (let ((k (+ i 1)))
    (setq *BR* (append *BR* (list (mashup-symbol 'R k))))
    )
  )

