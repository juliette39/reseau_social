/* Donnee
 * Author: basile
 * Creation date: 15/12/2022
 */
MACHINE
    Donnee
INCLUDES
    PossedeD
SETS
    Donnees ; Noms ; Types = { photo , audio , video }
ABSTRACT_VARIABLES
    donnees , noms , designe , type , identifiant_do
INVARIANT
    donnees <: Donnees &
    noms <: Noms &
    designe : noms --> donnees &
    type : donnees --> Types &
    identifiant_do : donnees >-> NAT

INITIALISATION
    donnees , noms , designe , type , identifiant_do := {} , {} , {} , {} , {}
OPERATIONS
    ajoutD ( nom , ty ) =
    PRE
        //ici un nom est unique entre tous les utilisateurs
        /*si on veut faire qu'il soit unique pour un seul utilisateur (ie Jo ne peut pas avoir 2 vacances.png, mais Jo et Jean peuvent poster leurs propres vacances.png) il faut probablement passer par possedeP 
        Simplement j'ai peur que ne pas avoir d'unitcité des noms pose des problèmes d'intégrité (ex remonter une 
        méthode qui utilise les noms...) et en meme temps, on a envie d'autoriser les doublons de noms.
        
        solution proposée: le nom est un ensemble de nom + id
        à réfléchir...*/
        nom : Noms - noms &
        ty : Types
    THEN
        ANY do , iu WHERE do : Donnees - donnees & iu : NAT - ran ( identifiant_do )
        THEN
            donnees := donnees \/ { do } ||
            noms := noms \/ { nom } ||
            designe ( nom ) := do ||
            type ( do ) := ty ||
            identifiant_do ( do ) := iu
            //aussi ajouter le lien avec l'utilisateur? ou c'est fait dans possedeP?
        END
    END ;

    suppressionD ( do ) =
    PRE
        do : donnees
    THEN
            donnees := donnees - { do } ||
            //ici aussi le problème d'unicité des noms se pose
            noms := noms - designe ~ [ { do } ] ||
            designe := designe |>> { do } ||
            type := { do } <<| type ||
            identifiant_do := { do } <<| identifiant_do
            //aussi supprimer le lien possedeP? Ou c'est fait dans possedeP
    END
END
