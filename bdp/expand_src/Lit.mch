/* Lit
 * Author: basile
 * Creation date: 15/12/2022
 */
MACHINE
    Lit
USES
    Utilisateur , Donnee
ABSTRACT_VARIABLES
    lit
INVARIANT
    //on utilise une relation et pas une fonction car un utilisateur peut lire/écrire plusieurs données
    //idée : rajouter une classe au dessus nommée "permissions" qui permet de check lecture/ecriture
    lit : utilisateurs <-> donnees
INITIALISATION
    lit := {}
OPERATIONS
    ajoutLit ( ut , do ) =
    PRE
        ut : utilisateurs &
        do : donnees &
        ut |-> do /: lit

    THEN
        lit := lit \/ { ut |-> do }
    END ;

    retraitLit ( ut , do ) =
    PRE
        ut : utilisateurs &
        do : donnees &
        ut |-> do : lit
    THEN
        lit := lit - { ut |-> do }
    END




END
