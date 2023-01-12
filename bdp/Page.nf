Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Page))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Page))==(Machine(Page));
  Level(Machine(Page))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Page)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Page))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Page))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Page))==(?);
  List_Includes(Machine(Page))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Page))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Page))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Page))==(?);
  Context_List_Variables(Machine(Page))==(?);
  Abstract_List_Variables(Machine(Page))==(?);
  Local_List_Variables(Machine(Page))==(pages);
  List_Variables(Machine(Page))==(pages);
  External_List_Variables(Machine(Page))==(pages)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Page))==(?);
  Abstract_List_VisibleVariables(Machine(Page))==(?);
  External_List_VisibleVariables(Machine(Page))==(?);
  Expanded_List_VisibleVariables(Machine(Page))==(?);
  List_VisibleVariables(Machine(Page))==(?);
  Internal_List_VisibleVariables(Machine(Page))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Page))==(btrue);
  Gluing_List_Invariant(Machine(Page))==(btrue);
  Expanded_List_Invariant(Machine(Page))==(btrue);
  Abstract_List_Invariant(Machine(Page))==(btrue);
  Context_List_Invariant(Machine(Page))==(btrue);
  List_Invariant(Machine(Page))==(pages <: PAGES)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Page))==(btrue);
  Abstract_List_Assertions(Machine(Page))==(btrue);
  Context_List_Assertions(Machine(Page))==(btrue);
  List_Assertions(Machine(Page))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Page))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Page))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Page))==(pages:={});
  Context_List_Initialisation(Machine(Page))==(skip);
  List_Initialisation(Machine(Page))==(pages:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Page))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Page))==(btrue);
  List_Constraints(Machine(Page))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Page))==(AjoutPage,SuppPage);
  List_Operations(Machine(Page))==(AjoutPage,SuppPage)
END
&
THEORY ListInputX IS
  List_Input(Machine(Page),AjoutPage)==(pa);
  List_Input(Machine(Page),SuppPage)==(pa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Page),AjoutPage)==(?);
  List_Output(Machine(Page),SuppPage)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Page),AjoutPage)==(AjoutPage(pa));
  List_Header(Machine(Page),SuppPage)==(SuppPage(pa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Page),AjoutPage)==(pa: PAGES-pages);
  List_Precondition(Machine(Page),SuppPage)==(pa: pages)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Page),SuppPage)==(pa: pages | pages:=pages-{pa});
  Expanded_List_Substitution(Machine(Page),AjoutPage)==(pa: PAGES-pages | pages:=pages\/{pa});
  List_Substitution(Machine(Page),AjoutPage)==(pages:=pages\/{pa});
  List_Substitution(Machine(Page),SuppPage)==(pages:=pages-{pa})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Page))==(?);
  Inherited_List_Constants(Machine(Page))==(?);
  List_Constants(Machine(Page))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Page),PAGES)==(?);
  Context_List_Enumerated(Machine(Page))==(?);
  Context_List_Defered(Machine(Page))==(?);
  Context_List_Sets(Machine(Page))==(?);
  List_Valuable_Sets(Machine(Page))==(PAGES);
  Inherited_List_Enumerated(Machine(Page))==(?);
  Inherited_List_Defered(Machine(Page))==(?);
  Inherited_List_Sets(Machine(Page))==(?);
  List_Enumerated(Machine(Page))==(?);
  List_Defered(Machine(Page))==(PAGES);
  List_Sets(Machine(Page))==(PAGES)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Page))==(?);
  Expanded_List_HiddenConstants(Machine(Page))==(?);
  List_HiddenConstants(Machine(Page))==(?);
  External_List_HiddenConstants(Machine(Page))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Page))==(btrue);
  Context_List_Properties(Machine(Page))==(btrue);
  Inherited_List_Properties(Machine(Page))==(btrue);
  List_Properties(Machine(Page))==(PAGES: FIN(INTEGER) & not(PAGES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Page),AjoutPage)==(?);
  List_ANY_Var(Machine(Page),SuppPage)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Page)) == (PAGES | ? | pages | ? | AjoutPage,SuppPage | ? | ? | ? | Page);
  List_Of_HiddenCst_Ids(Machine(Page)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Page)) == (?);
  List_Of_VisibleVar_Ids(Machine(Page)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Page)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Page)) == (Type(PAGES) == Cst(SetOf(atype(PAGES,"[PAGES","]PAGES"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Page)) == (Type(pages) == Mvl(SetOf(atype(PAGES,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Page)) == (Type(SuppPage) == Cst(No_type,atype(PAGES,?,?));Type(AjoutPage) == Cst(No_type,atype(PAGES,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
