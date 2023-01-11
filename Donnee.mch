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
        ty:Types & do:Donnees-donnees
        THEN
            donnees:=donnees\/{do}||
            type(do):=ty
    END;
    
    suppressionD(do)=
    PRE
        do:donnees
    THEN
            donnees:=donnees-{do}||
            type:={do}<<|type
    END
END
