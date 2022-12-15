/* Ecrit
 * Author: basile
 * Creation date: 15/12/2022
 */
MACHINE
    Ecrit
USES
    
    // /!\ dans l'implémentation avec une fonction
    Utilisateur, Donnee
VARIABLES
    ecrit
INVARIANT
    //on utilise une relation et pas une fonction car un utilisateur peut lire/écrire plusieurs données
    //idée : rajouter une classe au dessus nommée "permissions" qui permet de check lecture/ecriture
    ecrit:utilisateurs<->donnees
INITIALISATION
    ecrit := {}
OPERATIONS
    ajoutEcrit(ut,do)=
    PRE
        ut:utilisateurs&
        do:donnees&
        ut|->do/:ecrit
        
    THEN
        ecrit:=ecrit \/ {ut|->do}
    END;
    
    retraitLit(ut, do)=
    PRE
        ut:utilisateurs&
        do:donnees&
        ut|->do:ecrit
    THEN
        ecrit := ecrit - {ut|->do}
    END


END
