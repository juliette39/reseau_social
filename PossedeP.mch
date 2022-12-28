/* PossedeP
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    PossedeP
USES
    Utilisateur, Page
VARIABLES
    possedeP
INVARIANT
    possedeP:utilisateurs-->pages
INITIALISATION
    possedeP:={}
OPERATIONS
    AjoutPossedePage(ut, pa)=
    PRE
        ut:utilisateurs &
        pa:PAGES-pages
    THEN
        possedeP(ut):=pa
    END;
    SuppPossedePage(ut, pa)=
    PRE
        ut:utilisateurs & pa:pages
    THEN
        possedeP := possedeP - {ut|->pa}
    END
END
