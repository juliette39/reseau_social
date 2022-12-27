/* Utilisateur
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    Utilisateur
SETS
    UTILISATEURS
ABSTRACT_VARIABLES
    utilisateurs , identifiant_ut
INVARIANT
    utilisateurs <: UTILISATEURS &
    identifiant_ut : utilisateurs >-> NATURAL
INITIALISATION
    identifiant_ut , utilisateurs := {} , {}
OPERATIONS
    AjoutUtilisateur ( ut ) =
    PRE utilisateurs <<: UTILISATEURS & ut : UTILISATEURS
    THEN
        ANY
            ide WHERE ide : NAT - ran ( identifiant_ut )
        THEN
            utilisateurs := utilisateurs \/ { ut } ||
            identifiant_ut ( ut ) := ide
        END
   END ;
   SuppUtilisateur ( ut ) =
   PRE ut : utilisateurs
    THEN
        utilisateurs := utilisateurs - { ut }
    END
END
