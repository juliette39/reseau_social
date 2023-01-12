/* PossedeD
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    PossedeD
USES
    Page, Donnee
VARIABLES
    possedeD
INVARIANT
    possedeD:donnees-->pages&
    !pa.(pa:pages=>card(possedeD|>{pa})>=1) //Tout utilisateur possède au moins une donnée
INITIALISATION
    possedeD:={}
OPERATIONS
    
    AjoutPossedeDonnee(pa, do)=
    PRE
        pa:pages &
        do:DONNEES-donnees
    THEN
        possedeD(do):=pa
    END;
    
    SuppPossedeDonnee(pa, do)=
    PRE
        pa:pages & do:donnees
    THEN
        possedeD := possedeD - {do|->pa}
    END;
    
    //Inscription
    AjoutPremiereDonnee(pa, do)=
    PRE
        pa:PAGES &
        do:DONNEES-donnees
    THEN
        possedeD(do):=pa
    END
    
END