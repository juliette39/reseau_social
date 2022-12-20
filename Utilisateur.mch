/* Utilisateur
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    Utilisateur
SETS
    UTILISATEURS
VARIABLES
    utilisateurs, identifiant_ut
INVARIANT 
    utilisateurs <: UTILISATEURS &
    identifiant_ut : utilisateurs >-> NATURAL
INITIALISATION
    identifiant_ut, utilisateurs:={}, {}
OPERATIONS
    ut<--AjoutUtilisateur =
    PRE utilisateurs <<: UTILISATEURS
    THEN
        ANY
            util, ide WHERE util : UTILISATEURS- utilisateurs &
            ide:NAT-ran(identifiant_ut)
        THEN
            ut:=util ||
            utilisateurs := utilisateurs \/{util} ||
            identifiant_ut(util):=ide
        END
   END;
   SuppUtilisateur(ut) =
   PRE ut: utilisateurs
    THEN
        utilisateurs := utilisateurs - {ut}
    END
END