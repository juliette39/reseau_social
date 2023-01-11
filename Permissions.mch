/* Permissions
 * Author: basile
 * Creation date: 09/01/2023
 */
MACHINE
    Permissions
USES 
    Donnee, Page
VARIABLES
    Lit, Ecrit
INVARIANT
    Lit:donnees<->pages&
    Ecrit:donnees<->pages&
    //On peut écrire ssi on peut déjà lire
    ran(Ecrit)<:ran(Lit)
INITIALISATION
    Lit, Ecrit := {},{}
OPERATIONS
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
        (do|->pa)/:Ecrit
    THEN
        Lit:= Lit - {do|->pa}
    END;
    
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
        (do|->pa):Ecrit
    THEN
        Ecrit:=Ecrit - {do|->pa}
    END
    

END
