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
    pa<--AjoutPage =
    PRE pages <<: PAGES
    THEN
        ANY
            pag, ide WHERE pag : PAGES- pages &
            ide:NAT-ran(identifiant_pa)
        THEN
            pa:=pag ||
            pages := pages \/{pag} ||
            identifiant_pa(pag):=ide
        END
   END;
   SuppPage(pa) =
   PRE pa: pages
    THEN
        pages := pages - {pa}
    END
END