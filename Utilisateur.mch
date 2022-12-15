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
    ut<--AjoutUtilisateur =
    PRE utilisateurs <<: UTILISATEURS
    THEN
        ANY
            util, ide WHERE util : UTILISATEURS- utilisateurs &
            ide:NAT-ran(identifiant)
        THEN
            ut:=util ||
            utilisateurs := utilisateurs \/{util} ||
            identifiant(util):=ide
        END
   END
END