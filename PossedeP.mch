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
    possede:pages-->utilisateurs
INITIALISATION
    possede:={}
OPERATIONS
    AjoutPossede(ut, pa)=
    PRE
        ut:utilisateurs &
        pa:PAGES-pages
    THEN
        possede(pa):=ut
    END
END
