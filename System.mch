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
        utilisateur<--AjoutUtilisateur ||
        pa<--AjoutPage ||
        AjoutPossedePage(utilisateur, pa)
   END;
   Desinscription(ut)=
   PRE ut:utilisateurs
   THEN
       pa<--GetPage(ut) ||
       SuppPage(pa) ||
       SuppUtilisateur(ut)
   END
END
