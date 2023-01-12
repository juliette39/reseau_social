/* Donnee
 * Author: basile
 * Creation date: 15/12/2022
 */
MACHINE
    Donnee
SETS
    DONNEES; TYPES = {photo, audio, video}
VARIABLES
    donnees, types
INVARIANT
    donnees<:DONNEES&
    types:donnees-->TYPES
INITIALISATION
    donnees, types := {},{}
OPERATIONS
    ajoutD(do, ty)=
    PRE
        ty:TYPES & do:DONNEES-donnees
        THEN
            donnees:=donnees\/{do}||
            types(do):=ty
    END;
    
    suppressionD(do)=
    PRE
        do:donnees
    THEN
            donnees:=donnees-{do}||
            types:={do}<<|types
    END
END
