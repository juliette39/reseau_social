/* System
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    System
INCLUDES
    Page,
    Utilisateur
OPERATIONS
    utilisateur<--NouvelUtilisateur=
    PRE utilisateurs <<: UTILISATEURS
    THEN
        ut=AjoutUtilisateur ||
        pa=AjoutPage ||
        AjoutPossedePage(ut, pa)
   END
END
