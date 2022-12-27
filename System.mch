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
    utilisateur<--Inscription=
    PRE utilisateurs <<: UTILISATEURS
    THEN
        ANY
           ut, pa WHERE ut:UTILISATEURS-utilisateurs &
           pa:PAGES-pages
       THEN
           AjoutUtilisateur(ut) ||
           utilisateur:=ut ||
           AjoutPages(pa) ||
           page:=pa ||
           AjoutPossedePage(ut, pa)
       END
   END;
   Desinscription(ut)=
   PRE ut:utilisateurs
   THEN
       pa<--GetPage(ut) ||
       SuppPage(pa) ||
       SuppUtilisateur(ut)
   END
END
