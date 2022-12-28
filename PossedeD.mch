/* PossedeD
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    PossedeD
USES
    Utilisateur, Donnee
VARIABLES
    possedeD
INVARIANT
    possedeD:utilisateurs-->donnees
INITIALISATION
    possedeD:={}
OPERATIONS
    AjoutPossedeDonnee(ut, do)=
    PRE
        ut:utilisateurs &
        do:Donnees-donnees
    THEN
        possedeD(ut):=do
    END;
    SuppPossedeDonnee(ut, do)=
    PRE
        ut:utilisateurs & do:donnees
    THEN
        possedeD := possedeD - {ut|->do}
    END
END