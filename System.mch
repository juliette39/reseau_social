/* System
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    System
INCLUDES
    Page,
    Utilisateur,
    PossedeP
OPERATIONS
    Inscription=
    PRE utilisateurs <<: UTILISATEURS
    THEN
        ANY
           ut, pa WHERE ut:UTILISATEURS-utilisateurs &
           pa:PAGES-pages
       THEN
           AjoutUtilisateur(ut) ||
           AjoutPages(pa) ||
           AjoutPossedePage(ut, pa)
       END
   END;
   Desinscription(ut, pa)=
   PRE ut:utilisateurs & pa:pages
   THEN
       SuppPage(pa) ||
       SuppUtilisateur(ut)
   END
END
