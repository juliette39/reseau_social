/* Donnee
 * Author: basile
 * Creation date: 15/12/2022
 */
MACHINE
    Donnee
SETS
    Donnees; Noms; Types = {photo, audio, video}
VARIABLES
    donnees, noms, designe, type
INVARIANT
    donnees<:Donnees&
    noms<:Noms&
    designe:noms-->donnees&
    type:donnees-->Types
    
INITIALISATION
    donnees, noms, designe, type := {},{},{},{}
OPERATIONS
    donnee<--ajoutD(nom, ty)=
    PRE
        //cette ligne requiert l'unicité du nom de la donnée parmi tous les noms. A priori on veut que des données d'utilisateurs différents
        //puissent avoir le même nom. Plusieurs solutions: utiliser un Id pour identifier les données ou le couple nom,utilisateur
        //ou alors vu que "donnee" est unique, ça suffit comme identifiant? jsp c'est brouillon je suis fatigué
        nom:Noms-noms&
        ty:Types
    THEN
        ANY do WHERE do:Donnees
        THEN
            donnee:=do||
            donnees:=donnees\/{do}||
            noms:=noms\/{nom}||
            designe(nom):=donnee||
            type(donnee):=ty
        END
    END
END
