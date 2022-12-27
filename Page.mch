/* Page
 * Author: Juliette
 * Creation date: 1(/12/2022
 */
MACHINE
    Page
SETS PAGES
VARIABLES
    pages, identifiant_pa
INVARIANT 
    pages <: PAGES &
    identifiant_pa : pages >-> NATURAL
INITIALISATION
    identifiant_pa, pages:={}, {}
OPERATIONS
    AjoutPage(pa) =
    PRE pages <<: PAGES & pa:pages
    THEN
        ANY
            ide WHERE ide:NAT-ran(identifiant_pa)
        THEN
            pages := pages \/{pa} ||
            identifiant_pa(pa):=ide
        END
   END;
   SuppPage(pa) =
   PRE pa: pages
    THEN
        //il faut retirer identifiant_pa(pa) avant non?
        pages := pages - {pa}
    END
END