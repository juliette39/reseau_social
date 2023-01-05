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

   Desinscription(ut)=
   PRE ut:utilisateurs
   THEN
       SuppPossedePage(ut, possedeP(ut)) ||
       SuppUtilisateur(ut)||
       SuppPage(possedeP(ut))
   END;
   
   AjoutDonnees(ty, ut)=
   PRE donnees <<: Donnees & ty:Types & ut:utilisateurs
   THEN
       ANY
           do WHERE do:Donnees-donnees
       THEN
           ajoutD(do, ty) ||
           AjoutPossedeDonnee(ut, do)
       END
   END;
   
   SupprimeDonnee(do, ut)=
      PRE do:donnees & ut:utilisateurs
   THEN
       SuppPossedeDonnee(possedeD(do), do) ||
       suppressionD(do)
   END
END
