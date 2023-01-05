/* Donnee
 * Author: basile
 * Creation date: 15/12/2022
 */
MACHINE
    Donnee
SETS
    Donnees; Types = {photo, audio, video}
VARIABLES
    donnees, type
INVARIANT
    donnees<:Donnees&
    type:donnees-->Types
INITIALISATION
    donnees, type := {},{}
OPERATIONS
    ajoutD(do, ty)=
    PRE
        //ici un nom est unique entre tous les utilisateurs
        /*si on veut faire qu'il soit unique pour un seul utilisateur (ie Jo ne peut pas avoir 2 vacances.png, mais Jo et Jean peuvent poster leurs propres vacances.png) il faut probablement passer par possedeP 
        Simplement j'ai peur que ne pas avoir d'unitcité des noms pose des problèmes d'intégrité (ex remonter une 
        méthode qui utilise les noms...) et en meme temps, on a envie d'autoriser les doublons de noms.
        
        solution proposée: le nom est un ensemble de nom + id
        à réfléchir...*/
        ty:Types & do:Donnees-donnees
        THEN
            donnees:=donnees\/{do}||
            type(do):=ty
            //aussi ajouter le lien avec l'utilisateur? ou c'est fait dans possedeP?
    END;
    
    suppressionD(do)=
    PRE
        do:donnees
    THEN
            donnees:=donnees-{do}||
            //ici aussi le problème d'unicité des noms se pose
            type:={do}<<|type
            //aussi supprimer le lien possedeP? Ou c'est fait dans possedeP
    END
END
