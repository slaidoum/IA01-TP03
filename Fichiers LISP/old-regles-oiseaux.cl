;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PARTIE OISEAUX
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Pr�c�demment ins�r�es mais
;;  la profondeur n'est pas id�ale � g�rer.)
;;  De multiples classes abstraites devraient �tre cr�es
;;  Mais la base d'empreintes de mammif�res est suffisante et satisfaisante.
;;;;;;;;;;;;;;;;;;;;;;;;
;; Patte semi-plam�e
;;;;;;;;;;;;;;;;;;;;;;;;
(defparameter R1 
  '( ((patte semi-palmee)(tailleDoigts 13 =)) ((animal spatule)) ))
(defparameter R2
  '( ((patte semi-palmee)(tailleDoigts 4 =)) ((animal avocette)) ))
(defparameter R3
  '( ((patte semi-palmee)(tailleDoigts 3 =)) ((animal sterne)) ))
;;;;;;;;;;;;;;;;;;;;;;;;
;; Patte lob�e
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
;; Patte palm�e
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

