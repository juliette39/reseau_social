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
    //On peut écrire ssi on peut déjà lire
    ran(Ecrit)<:ran(Lit)
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
    AjoutPermissionsUtilisateur(pa, do)=
    PRE
        pa:pages&
        do:donnees&
        pa=possedeD(do)
    THEN
        Lit:=Lit \/ {do|->pa}||
        Ecrit:=Ecrit \/ {do|->pa}
    END



END
