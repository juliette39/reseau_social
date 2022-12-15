/* Utilisateur
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    Utilisateur
SETS
    UTILISATEURS
VARIABLES
    utilisateurs, identifiant
INVARIANT 
    utilisateurs <: UTILISATEURS &
    identifiant : utilisateurs >-> NATURAL
INITIALISATION
    identifiant, utilisateurs:={}, {}
OPERATIONS
    AjoutUtilisateur =
    PRE utilisateurs <<: UTILISATEURS
    THEN
        ANY
            ut, ide WHERE ut : UTILISATEURS- utilisateurs &
            ide:NAT-ran(identifiant)
        THEN
            utilisateurs := utilisateurs \/{ut} ||
            identifiant(ut):=ide
        END
   END
END