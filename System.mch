/* System
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    System
INCLUDES
    PossedeP,
    PossedeD,
    Page,
    Utilisateur,
    Donnee
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
       SuppPossedePage(ut, pa) ||
       SuppUtilisateur(ut)||
       SuppPage(pa)
   END;
   
   AjoutDonnees(nom, ty, ut)=
   PRE nom:Noms & ty:type & ut:utilisateurs
   THEN
       ajoutD(nom, ty) ||
       AjoutPossedeDonnee(ut, do)
   END
END
