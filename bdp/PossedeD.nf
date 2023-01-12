Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(PossedeD))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(PossedeD))==(Machine(PossedeD));
  Level(Machine(PossedeD))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(PossedeD)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(PossedeD))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(PossedeD))==(Page,Donnee)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(PossedeD))==(?);
  List_Includes(Machine(PossedeD))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(PossedeD))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(PossedeD))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(PossedeD))==(pages,types,donnees);
  Context_List_Variables(Machine(PossedeD))==(pages,types,donnees);
  Abstract_List_Variables(Machine(PossedeD))==(?);
  Local_List_Variables(Machine(PossedeD))==(possedeD);
  List_Variables(Machine(PossedeD))==(possedeD);
  External_List_Variables(Machine(PossedeD))==(possedeD)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(PossedeD))==(?);
  Abstract_List_VisibleVariables(Machine(PossedeD))==(?);
  External_List_VisibleVariables(Machine(PossedeD))==(?);
  Expanded_List_VisibleVariables(Machine(PossedeD))==(?);
  List_VisibleVariables(Machine(PossedeD))==(?);
  Internal_List_VisibleVariables(Machine(PossedeD))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(PossedeD))==(btrue);
  Gluing_List_Invariant(Machine(PossedeD))==(possedeD: donnees --> pages & !pa.(pa: pages => card(possedeD|>{pa})>=1));
  Expanded_List_Invariant(Machine(PossedeD))==(btrue);
  Abstract_List_Invariant(Machine(PossedeD))==(btrue);
  Context_List_Invariant(Machine(PossedeD))==(pages <: PAGES & donnees <: DONNEES & types: donnees --> TYPES);
  List_Invariant(Machine(PossedeD))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(PossedeD))==(btrue);
  Abstract_List_Assertions(Machine(PossedeD))==(btrue);
  Context_List_Assertions(Machine(PossedeD))==(btrue);
  List_Assertions(Machine(PossedeD))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(PossedeD))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(PossedeD))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(PossedeD))==(possedeD:={});
  Context_List_Initialisation(Machine(PossedeD))==(pages:={};donnees,types:={},{});
  List_Initialisation(Machine(PossedeD))==(possedeD:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(PossedeD))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(PossedeD),Machine(Page))==(?);
  List_Instanciated_Parameters(Machine(PossedeD),Machine(Donnee))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(PossedeD))==(btrue);
  List_Constraints(Machine(PossedeD))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(PossedeD))==(AjoutPossedeDonnee,SuppPossedeDonnee,AjoutPremiereDonnee);
  List_Operations(Machine(PossedeD))==(AjoutPossedeDonnee,SuppPossedeDonnee,AjoutPremiereDonnee)
END
&
THEORY ListInputX IS
  List_Input(Machine(PossedeD),AjoutPossedeDonnee)==(pa,do);
  List_Input(Machine(PossedeD),SuppPossedeDonnee)==(pa,do);
  List_Input(Machine(PossedeD),AjoutPremiereDonnee)==(pa,do)
END
&
THEORY ListOutputX IS
  List_Output(Machine(PossedeD),AjoutPossedeDonnee)==(?);
  List_Output(Machine(PossedeD),SuppPossedeDonnee)==(?);
  List_Output(Machine(PossedeD),AjoutPremiereDonnee)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(PossedeD),AjoutPossedeDonnee)==(AjoutPossedeDonnee(pa,do));
  List_Header(Machine(PossedeD),SuppPossedeDonnee)==(SuppPossedeDonnee(pa,do));
  List_Header(Machine(PossedeD),AjoutPremiereDonnee)==(AjoutPremiereDonnee(pa,do))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(PossedeD),AjoutPossedeDonnee)==(pa: pages & do: DONNEES-donnees);
  List_Precondition(Machine(PossedeD),SuppPossedeDonnee)==(pa: pages & do: donnees & possedeD(do) = pa);
  List_Precondition(Machine(PossedeD),AjoutPremiereDonnee)==(pa: PAGES & do: DONNEES-donnees)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(PossedeD),AjoutPremiereDonnee)==(pa: PAGES & do: DONNEES-donnees | possedeD:=possedeD<+{do|->pa});
  Expanded_List_Substitution(Machine(PossedeD),SuppPossedeDonnee)==(pa: pages & do: donnees & possedeD(do) = pa | possedeD:=possedeD-{do|->pa});
  Expanded_List_Substitution(Machine(PossedeD),AjoutPossedeDonnee)==(pa: pages & do: DONNEES-donnees | possedeD:=possedeD<+{do|->pa});
  List_Substitution(Machine(PossedeD),AjoutPossedeDonnee)==(possedeD(do):=pa);
  List_Substitution(Machine(PossedeD),SuppPossedeDonnee)==(possedeD:=possedeD-{do|->pa});
  List_Substitution(Machine(PossedeD),AjoutPremiereDonnee)==(possedeD(do):=pa)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(PossedeD))==(?);
  Inherited_List_Constants(Machine(PossedeD))==(?);
  List_Constants(Machine(PossedeD))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(PossedeD),TYPES)==({photo,audio,video});
  Context_List_Enumerated(Machine(PossedeD))==(TYPES);
  Context_List_Defered(Machine(PossedeD))==(PAGES,DONNEES);
  Context_List_Sets(Machine(PossedeD))==(PAGES,DONNEES,TYPES);
  List_Valuable_Sets(Machine(PossedeD))==(?);
  Inherited_List_Enumerated(Machine(PossedeD))==(?);
  Inherited_List_Defered(Machine(PossedeD))==(?);
  Inherited_List_Sets(Machine(PossedeD))==(?);
  List_Enumerated(Machine(PossedeD))==(?);
  List_Defered(Machine(PossedeD))==(?);
  List_Sets(Machine(PossedeD))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(PossedeD))==(?);
  Expanded_List_HiddenConstants(Machine(PossedeD))==(?);
  List_HiddenConstants(Machine(PossedeD))==(?);
  External_List_HiddenConstants(Machine(PossedeD))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(PossedeD))==(btrue);
  Context_List_Properties(Machine(PossedeD))==(PAGES: FIN(INTEGER) & not(PAGES = {}) & DONNEES: FIN(INTEGER) & not(DONNEES = {}) & TYPES: FIN(INTEGER) & not(TYPES = {}));
  Inherited_List_Properties(Machine(PossedeD))==(btrue);
  List_Properties(Machine(PossedeD))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(PossedeD),AjoutPossedeDonnee)==(?);
  List_ANY_Var(Machine(PossedeD),SuppPossedeDonnee)==(?);
  List_ANY_Var(Machine(PossedeD),AjoutPremiereDonnee)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(PossedeD)) == (? | ? | possedeD | ? | AjoutPossedeDonnee,SuppPossedeDonnee,AjoutPremiereDonnee | ? | used(Machine(Page)),used(Machine(Donnee)) | ? | PossedeD);
  List_Of_HiddenCst_Ids(Machine(PossedeD)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PossedeD)) == (?);
  List_Of_VisibleVar_Ids(Machine(PossedeD)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PossedeD)) == (?: ?);
  List_Of_Ids(Machine(Donnee)) == (DONNEES,TYPES,photo,audio,video | ? | types,donnees | ? | ajoutD,suppressionD | ? | ? | ? | Donnee);
  List_Of_HiddenCst_Ids(Machine(Donnee)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Donnee)) == (?);
  List_Of_VisibleVar_Ids(Machine(Donnee)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Donnee)) == (?: ?);
  List_Of_Ids(Machine(Page)) == (PAGES | ? | pages | ? | AjoutPage,SuppPage | ? | ? | ? | Page);
  List_Of_HiddenCst_Ids(Machine(Page)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Page)) == (?);
  List_Of_VisibleVar_Ids(Machine(Page)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Page)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(PossedeD)) == (Type(possedeD) == Mvl(SetOf(atype(DONNEES,?,?)*atype(PAGES,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(PossedeD)) == (Type(AjoutPremiereDonnee) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(SuppPossedeDonnee) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(AjoutPossedeDonnee) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?)))
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
