/* Page
 * Author: Juliette
 * Creation date: 15/12/2022
 */
MACHINE
    Page
SETS 
    PAGES
VARIABLES
    pages
INVARIANT 
    pages <: PAGES
INITIALISATION
    pages:={}
OPERATIONS
    AjoutPage(pa) =
    PRE pa:PAGES-pages
    THEN
            pages := pages \/ {pa}
   END;
   SuppPage(pa) =
   PRE pa: pages
    THEN
        pages := pages - {pa}
    END
END