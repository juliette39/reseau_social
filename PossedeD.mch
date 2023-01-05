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
    possedeD:donnees-->utilisateurs
INITIALISATION
    possedeD:={}
OPERATIONS
    AjoutPossedeDonnee(ut, do)=
    PRE
        ut:utilisateurs &
        do:Donnees-donnees
    THEN
        possedeD(do):=ut
    END;
    
    SuppPossedeDonnee(ut, do)=
    PRE
        ut:utilisateurs & do:donnees
    THEN
        possedeD := possedeD - {do|->ut}
    END
END