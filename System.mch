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
    page<--Inscription=
    PRE pages <<: PAGES
    THEN
        ANY
           pa, do WHERE pa:PAGES-pages & do:DONNEES-donnees
       THEN
           AjoutPage(pa) ||
           ajoutD(do, photo) ||
           AjoutPremiereDonnee(pa, do)|| //On ne passe pas par AjoutPossedeDonnee  car pa : PAGES - pages et donc viole la précondition d'AjoutPossedeDonnee
            AjoutPremieresPermissions(pa, do)|| //Idem
           page:=pa
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
   PRE donnees <<: DONNEES & ty:TYPES & pa:pages
   THEN
       ANY
           do WHERE do:DONNEES-donnees
       THEN
           ajoutD(do, ty) ||
           AjoutPossedeDonnee(pa, do)||
           AjoutPermissionsProprietaire(pa, do)  //Ajout des droit Lecture/Ecriture au propriétaire de la donnée. L'ajout des 2 ne peut se faire en parallèle car Ecrit à besoin de Lit
       END
   END;
   
   SupprimeDonnee(do, pa)=
   PRE do:donnees & pa:pages & pa=possedeD(do)
   THEN
       SuppPossedeDonnee(possedeD(do), do) ||
       suppressionD(do)||
       SoustraireDroits(do)|| //Supprime tous les droits qui étaient accordés sur la donnée
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
       proprio/=pa&
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
       proprio/=pa&
       (do|->pa):Ecrit
   THEN
       SuppEcrit(pa, do)
   END;
   
   //Affichage
   CommenceRegarde(pa, do)=
   PRE
       pa:pages&
       do:donnees&
       (do|->pa):Lit
   THEN
       AjoutRegarde(pa, do)
   END;
   
   ArreteRegarde(pa, do)=
   PRE
       pa:pages&
       do:donnees&
       (do|->pa):Regarde
   THEN
       SuppRegarde(pa,do)
   END

       
END