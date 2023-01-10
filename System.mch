/* System
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    System
INCLUDES
    Permissions,
    PossedeD,
    Page,
    Donnee
OPERATIONS
    Inscription=
    PRE pages <<: PAGES
    THEN
        ANY
           pa, do WHERE pa:PAGES-pages & do:Donnees-donnees
       THEN
           AjoutPage(pa) ||
           ajoutD(do, photo) ||
           AjoutPossedeDonnee(pa, do)
       END
   END;

   Desinscription(pa)=
   PRE pa:pages
   THEN
       //Faire la suppression de toutes les données d'une page possedeD|>{pa} ||
       SuppPage(pa)
   END;
   
   AjoutDonnees(ty, pa)=
   PRE donnees <<: Donnees & ty:Types & pa:pages
   THEN
       ANY
           do WHERE do:Donnees-donnees
       THEN
           ajoutD(do, ty) ||
           AjoutPossedeDonnee(pa, do)
       END
   END;
   
   SupprimeDonnee(do, pa)=
      PRE do:donnees & pa:pages & pa=possedeD(do)
   THEN
       SuppPossedeDonnee(possedeD(do), do) ||
       suppressionD(do)
   END
END
