/* System
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    System
INCLUDES
    PossedeP,
    Page,
    Utilisateur
OPERATIONS
    Inscription=
    PRE utilisateurs <<: UTILISATEURS
    THEN
        ANY
           ut, pa WHERE ut:UTILISATEURS-utilisateurs &
           pa:PAGES-pages
       THEN
           AjoutPage(pa) ||
           AjoutUtilisateur(ut) ||
           AjoutPossedePage(ut,pa)
       END
   END;

   Desinscription(ut, pa)=
   PRE ut:utilisateurs & pa:pages
   THEN
       SuppUtilisateur(ut)||
       SuppPage(pa)
   END
END
