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
       ANY
           cc, nu WHERE cc : COMPTES- comptes &
           nu:NAT-ran(numero)
       THEN
           AjoutCompte(cc, nu) ||
           compte:=cc ||
           AjoutPossede(cl, cc)
       END
   END
END
