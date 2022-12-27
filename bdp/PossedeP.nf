Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(PossedeP))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(PossedeP))==(Machine(PossedeP));
  Level(Machine(PossedeP))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(PossedeP)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(PossedeP))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(PossedeP))==(Utilisateur,Page)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(PossedeP))==(?);
  List_Includes(Machine(PossedeP))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(PossedeP))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(PossedeP))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(PossedeP))==(identifiant_ut,utilisateurs,identifiant_pa,pages);
  Context_List_Variables(Machine(PossedeP))==(identifiant_ut,utilisateurs,identifiant_pa,pages);
  Abstract_List_Variables(Machine(PossedeP))==(?);
  Local_List_Variables(Machine(PossedeP))==(possede);
  List_Variables(Machine(PossedeP))==(possede);
  External_List_Variables(Machine(PossedeP))==(possede)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(PossedeP))==(?);
  Abstract_List_VisibleVariables(Machine(PossedeP))==(?);
  External_List_VisibleVariables(Machine(PossedeP))==(?);
  Expanded_List_VisibleVariables(Machine(PossedeP))==(?);
  List_VisibleVariables(Machine(PossedeP))==(?);
  Internal_List_VisibleVariables(Machine(PossedeP))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(PossedeP))==(btrue);
  Gluing_List_Invariant(Machine(PossedeP))==(possede: utilisateurs --> pages);
  Expanded_List_Invariant(Machine(PossedeP))==(btrue);
  Abstract_List_Invariant(Machine(PossedeP))==(btrue);
  Context_List_Invariant(Machine(PossedeP))==(utilisateurs <: UTILISATEURS & identifiant_ut: utilisateurs >-> NATURAL & pages <: PAGES & identifiant_pa: pages >-> NATURAL);
  List_Invariant(Machine(PossedeP))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(PossedeP))==(btrue);
  Abstract_List_Assertions(Machine(PossedeP))==(btrue);
  Context_List_Assertions(Machine(PossedeP))==(btrue);
  List_Assertions(Machine(PossedeP))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(PossedeP))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(PossedeP))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(PossedeP))==(possede:={});
  Context_List_Initialisation(Machine(PossedeP))==(identifiant_ut,utilisateurs:={},{};identifiant_pa,pages:={},{});
  List_Initialisation(Machine(PossedeP))==(possede:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(PossedeP))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(PossedeP),Machine(Utilisateur))==(?);
  List_Instanciated_Parameters(Machine(PossedeP),Machine(Page))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(PossedeP))==(btrue);
  List_Constraints(Machine(PossedeP))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(PossedeP))==(AjoutPossedePage);
  List_Operations(Machine(PossedeP))==(AjoutPossedePage)
END
&
THEORY ListInputX IS
  List_Input(Machine(PossedeP),AjoutPossedePage)==(ut,pa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(PossedeP),AjoutPossedePage)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(PossedeP),AjoutPossedePage)==(AjoutPossedePage(ut,pa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(PossedeP),AjoutPossedePage)==(ut: utilisateurs & pa: PAGES-pages)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(PossedeP),AjoutPossedePage)==(ut: utilisateurs & pa: PAGES-pages | possede:=possede<+{ut|->pa});
  List_Substitution(Machine(PossedeP),AjoutPossedePage)==(possede(ut):=pa)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(PossedeP))==(?);
  Inherited_List_Constants(Machine(PossedeP))==(?);
  List_Constants(Machine(PossedeP))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(PossedeP))==(?);
  Context_List_Defered(Machine(PossedeP))==(UTILISATEURS,PAGES);
  Context_List_Sets(Machine(PossedeP))==(UTILISATEURS,PAGES);
  List_Valuable_Sets(Machine(PossedeP))==(?);
  Inherited_List_Enumerated(Machine(PossedeP))==(?);
  Inherited_List_Defered(Machine(PossedeP))==(?);
  Inherited_List_Sets(Machine(PossedeP))==(?);
  List_Enumerated(Machine(PossedeP))==(?);
  List_Defered(Machine(PossedeP))==(?);
  List_Sets(Machine(PossedeP))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(PossedeP))==(?);
  Expanded_List_HiddenConstants(Machine(PossedeP))==(?);
  List_HiddenConstants(Machine(PossedeP))==(?);
  External_List_HiddenConstants(Machine(PossedeP))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(PossedeP))==(btrue);
  Context_List_Properties(Machine(PossedeP))==(UTILISATEURS: FIN(INTEGER) & not(UTILISATEURS = {}) & PAGES: FIN(INTEGER) & not(PAGES = {}));
  Inherited_List_Properties(Machine(PossedeP))==(btrue);
  List_Properties(Machine(PossedeP))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(PossedeP),AjoutPossedePage)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(PossedeP)) == (? | ? | possede | ? | AjoutPossedePage | ? | used(Machine(Utilisateur)),used(Machine(Page)) | ? | PossedeP);
  List_Of_HiddenCst_Ids(Machine(PossedeP)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PossedeP)) == (?);
  List_Of_VisibleVar_Ids(Machine(PossedeP)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PossedeP)) == (?: ?);
  List_Of_Ids(Machine(Page)) == (PAGES | ? | identifiant_pa,pages | ? | AjoutPage,SuppPage | ? | ? | ? | Page);
  List_Of_HiddenCst_Ids(Machine(Page)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Page)) == (?);
  List_Of_VisibleVar_Ids(Machine(Page)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Page)) == (?: ?);
  List_Of_Ids(Machine(Utilisateur)) == (UTILISATEURS | ? | identifiant_ut,utilisateurs | ? | AjoutUtilisateur,SuppUtilisateur | ? | ? | ? | Utilisateur);
  List_Of_HiddenCst_Ids(Machine(Utilisateur)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Utilisateur)) == (?);
  List_Of_VisibleVar_Ids(Machine(Utilisateur)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Utilisateur)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(PossedeP)) == (Type(possede) == Mvl(SetOf(atype(UTILISATEURS,?,?)*atype(PAGES,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(PossedeP)) == (Type(AjoutPossedePage) == Cst(No_type,atype(UTILISATEURS,?,?)*atype(PAGES,?,?)))
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
