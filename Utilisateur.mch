/* Utilisateur
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    Utilisateur
SETS
    UTILISATEURS
VARIABLES
    utilisateurs
INVARIANT 
    utilisateurs <: UTILISATEURS
INITIALISATION
    utilisateurs:={}
OPERATIONS
    AjoutUtilisateur(ut) =
    PRE utilisateurs <<: UTILISATEURS & ut:UTILISATEURS
    THEN
            utilisateurs := utilisateurs \/{ut}
   END;
   SuppUtilisateur(ut) =
   PRE ut:utilisateurs
    THEN
        utilisateurs := utilisateurs - {ut}
    END
END