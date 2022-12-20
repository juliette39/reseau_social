/* PossedeP
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    PossedeP
USES
    Utilisateur, Page
VARIABLES
    possede
INVARIANT
    possede:utilisateurs-->pages
INITIALISATION
    possede:={}
OPERATIONS
    AjoutPossedePage(ut, pa)=
    PRE
        ut:utilisateurs &
        pa:PAGES-pages
    THEN
        possede(ut):=pa
    END;
    pa<--GetPage(ut)=
    PRE
        ut:utilisateurs
    THEN
        pa:=possede(ut)
    END
END
