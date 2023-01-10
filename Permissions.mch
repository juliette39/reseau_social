/* Permissions
 * Author: basile
 * Creation date: 09/01/2023
 */
MACHINE
    Permissions
USES 
    Donnee
VARIABLES
    Lit, Ecrit
INVARIANT
    Lit:donnees<->utilisateurs&
    Ecrit:donnees<->utilisateurs
INITIALISATION
    Lit, Ecrit := {},{}
OPERATIONS
    AjoutLit(ut, do)=
    PRE
        ut:utilisateurs &
        do:donnees
    THEN
        Lit:=Lit \/ {do|->ut}
    END;
    
    SuppLit(ut, do)=
    PRE
        {do|->ut}:Lit &
        {do|->ut}/:Ecrit
    THEN
        Lit:= Lit - {do|->ut}
    END;
    
    AjoutEcrit(ut, do)=
    PRE
        ut:utilisateurs &
        do:donnees&
        ut:Lit[{do}]
    THEN
        Ecrit:=Ecrit \/ {do|->ut}
    END
    

END
