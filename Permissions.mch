/* Permissions
 * Author: basile
 * Creation date: 09/01/2023
 */
MACHINE
    Permissions
USES 
    PossedeD, Page, Donnee 
VARIABLES
    Lit, Ecrit, Regarde
INVARIANT
    Lit:donnees<->pages&
    Ecrit:donnees<->pages&
    Regarde:donnees<->pages& //On choisit de traiter regarde (si un utilisateur veut voir la donnée ou non) ici car la propriété se comporte comme Lit et Ecrit ici. Elle est traitée différement dans System
    
    ran(Ecrit)<:ran(Lit)& //On peut écrire ssi on peut déjà lire
    !do.(do:donnees=>possedeD(do):Lit[{do}]/\Ecrit[{do}]) //i.e. le propriétaire d'une donnée a tous les droits dessus
    
INITIALISATION
    Lit, Ecrit, Regarde := {},{},{}
OPERATIONS
    
    //Lit
    AjoutLit(pa, do)=
    PRE
        pa:pages&
        do:donnees
    THEN
        Lit:=Lit \/ {do|->pa}
    END;
    
    SuppLit(pa, do)=
    PRE
        pa:pages&
        do:donnees&
        (do|->pa):Lit&
        (do|->pa)/:Ecrit&
        pa/=possedeD(do)
    THEN
        Lit:= Lit - {do|->pa}
    END;
    
    //Ecrit
    AjoutEcrit(pa, do)=
    PRE
        pa:pages&
        do:donnees&
        (do|->pa):Lit
    THEN
        Ecrit:=Ecrit \/ {do|->pa}
    END;
    
    SuppEcrit(pa, do)=
    PRE
        pa:pages&
        do:donnees&
        (do|->pa):Ecrit&
        pa/=possedeD(do)
    THEN
        Ecrit:=Ecrit - {do|->pa}
    END;
    
    
    //Regarde
    AjoutRegarde(pa, do)=
    PRE
        pa:pages&
        do:donnees
    THEN
        Regarde:=Regarde \/ {do|->pa}
    END;
    
    SuppRegarde(pa, do)=
    PRE
        pa:pages&
        do:donnees&
        (do|->pa):Regarde
    THEN
        Regarde:= Regarde - {do|->pa}
    END;
    
    //Flush
    SoustraireDroits(do)=
    PRE
        do:donnees
    THEN
        Lit:={do}<<|Lit||
        Ecrit:={do}<<|Ecrit||
        Regarde:={do}<<|Regarde
    END;
    
    //Master
    AjoutPermissionsProprietaire(pa, do)= //Appellée à l'ajout d'une nouvelle donnée pour donner les droits au propriétaire
    PRE
        pa:pages &
        do:DONNEES & //S'execute en parallèle de l'attribution de la donnée, donc donnée : Donnees et pas à donnees
        pa=possedeD(do)
    THEN
        Lit:=Lit \/ {do|->pa}||
        Ecrit:=Ecrit \/ {do|->pa}||
        Regarde:=Regarde \/ {do|->pa}
    END;
    
    //Inscription (+Master)
    AjoutPremieresPermissions(pa, do)= //Appellée à l'ajout de la première donnée, uniquement pour l'inscription
    PRE
        pa:PAGES &
        do:DONNEES
    THEN
        Lit:=Lit \/ {do|->pa}||
        Ecrit:=Ecrit \/ {do|->pa}||
        Regarde:=Regarde \/ {do|->pa}
    END



END
