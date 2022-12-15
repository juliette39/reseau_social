/* Affiche
 * Author: basile
 * Creation date: 15/12/2022
 */
MACHINE
    Affiche
USES
    Page,
    Donnee
VARIABLES
    affiche
INVARIANT
    affiche:pages-->donnees
INITIALISATION
    affiche:={}
OPERATIONS
    ajoutAffiche(pa, do)=
    PRE
        pa:pages&
        do:donnees
    THEN
        affiche(pa):=do
    END;
    
    suprAffiche(pa, do)=
    PRE
        pa:pages&
        do:donnees&
        pa|->do:affiche
    THEN
        affiche := affiche - {pa|->do}
    END
    
END
