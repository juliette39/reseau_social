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

   /* Pas besoin de désinscription : La page est uniquement suprimée lorsqu'on retire la dernière donnée
   Désinscription ci dessous requiert la supression de plusieurs données d'un coup, que l'on ne peut faire sans boucle
   Desinscription(pa)=
   PRE pa:pages
   THEN
       SuppPage(pa)
   END;*/
   
   //Données
   Publier(ty, pa)=
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
       suppressionD(do)||
       //supprimer les autres trucs qui pointent sur la donnée? ex permissions (idée : la virer du ran d'Ecrit/Lit)
       //if dernière donnée supprimée -> supprimer la page
       IF card(possedeD|>{pa})<=1 THEN
           SuppPage(pa)
       END
   END;
   
   //Permissions
   
   DonneLit(proprio, pa, do)=
   PRE
       proprio:pages&
       pa:pages&
       do:donnees&
       proprio=possedeD(do)
   THEN
       AjoutLit(pa, do)
   END;
   
   RetireLit(proprio, pa, do)=
   PRE
       proprio:pages&
       pa:pages&
       do:donnees&
       proprio=possedeD(do)&
       (do|->pa):Lit&
       (do|->pa)/:Ecrit
   THEN
       SuppEcrit(pa, do)
   END;
   
   DonneEcrit(proprio, pa, do)=
   PRE
       proprio:pages&
       pa:pages&
       do:donnees&
       proprio=possedeD(do)&
       (do|->pa):Lit
   THEN
       AjoutEcrit(pa, do)
   END;
   
   RetireEcrit(proprio, pa, do)=
   PRE
       proprio:pages&
       pa:pages&
       do:donnees&
       proprio=possedeD(do)&
       (do|->pa):Ecrit
   THEN
       SuppEcrit(pa, do)
   END;
   
   /*/Affichage
   Affiche(pa, do)=
   PRE
       pa:pages&
       do:donnees&
       pa=possedeD(do)
       */

       
END

//write|>>{donne}