/* Ecrit
 * Author: basile
 * Creation date: 15/12/2022
 */
MACHINE
    Ecrit

INCLUDES
    Utilisateur , Donnee , Lit
ABSTRACT_VARIABLES
    ecrit
INVARIANT
    //on utilise une relation et pas une fonction car un utilisateur peut lire/écrire plusieurs données
    //idée : rajouter une classe au dessus nommée "permissions" qui permet de check lecture/ecriture
    ecrit : utilisateurs <-> donnees
INITIALISATION
    ecrit := {}
OPERATIONS
    //ici ajouter les droits d'écriture donne aussi ceux de lecture mais ils ne sont pas supprimés au retrait de l'écriture. Soit on l'accepte, soit on oblige à posséder la lecture avant de recevoir l'écriture, et on peut ajouter dans système que l'ajout écriture ajoute aussi la lecture. à revoir
    ajoutEcrit ( ut , do ) =
    PRE
        ut : utilisateurs &
        do : donnees &
        ut |-> do /: ecrit

    THEN
        ecrit := ecrit \/ { ut |-> do } ||
        IF
            ut |-> do /: lit
        THEN
            ajoutLit ( ut , do )
        END
    END ;

    retraitEcrit ( ut , do ) =
    PRE
        ut : utilisateurs &
        do : donnees &
        ut |-> do : ecrit
    THEN
        ecrit := ecrit - { ut |-> do }
    END


END
