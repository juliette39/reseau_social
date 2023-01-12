Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Donnee))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Donnee))==(Machine(Donnee));
  Level(Machine(Donnee))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Donnee)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Donnee))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Donnee))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Donnee))==(?);
  List_Includes(Machine(Donnee))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Donnee))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Donnee))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Donnee))==(?);
  Context_List_Variables(Machine(Donnee))==(?);
  Abstract_List_Variables(Machine(Donnee))==(?);
  Local_List_Variables(Machine(Donnee))==(types,donnees);
  List_Variables(Machine(Donnee))==(types,donnees);
  External_List_Variables(Machine(Donnee))==(types,donnees)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Donnee))==(?);
  Abstract_List_VisibleVariables(Machine(Donnee))==(?);
  External_List_VisibleVariables(Machine(Donnee))==(?);
  Expanded_List_VisibleVariables(Machine(Donnee))==(?);
  List_VisibleVariables(Machine(Donnee))==(?);
  Internal_List_VisibleVariables(Machine(Donnee))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Donnee))==(btrue);
  Gluing_List_Invariant(Machine(Donnee))==(btrue);
  Expanded_List_Invariant(Machine(Donnee))==(btrue);
  Abstract_List_Invariant(Machine(Donnee))==(btrue);
  Context_List_Invariant(Machine(Donnee))==(btrue);
  List_Invariant(Machine(Donnee))==(donnees <: DONNEES & types: donnees --> TYPES)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Donnee))==(btrue);
  Abstract_List_Assertions(Machine(Donnee))==(btrue);
  Context_List_Assertions(Machine(Donnee))==(btrue);
  List_Assertions(Machine(Donnee))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Donnee))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Donnee))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Donnee))==(donnees,types:={},{});
  Context_List_Initialisation(Machine(Donnee))==(skip);
  List_Initialisation(Machine(Donnee))==(donnees,types:={},{})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Donnee))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Donnee))==(btrue);
  List_Constraints(Machine(Donnee))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Donnee))==(ajoutD,suppressionD);
  List_Operations(Machine(Donnee))==(ajoutD,suppressionD)
END
&
THEORY ListInputX IS
  List_Input(Machine(Donnee),ajoutD)==(do,ty);
  List_Input(Machine(Donnee),suppressionD)==(do)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Donnee),ajoutD)==(?);
  List_Output(Machine(Donnee),suppressionD)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Donnee),ajoutD)==(ajoutD(do,ty));
  List_Header(Machine(Donnee),suppressionD)==(suppressionD(do))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Donnee),ajoutD)==(ty: TYPES & do: DONNEES-donnees);
  List_Precondition(Machine(Donnee),suppressionD)==(do: donnees)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Donnee),suppressionD)==(do: donnees | donnees,types:=donnees-{do},{do}<<|types);
  Expanded_List_Substitution(Machine(Donnee),ajoutD)==(ty: TYPES & do: DONNEES-donnees | donnees,types:=donnees\/{do},types<+{do|->ty});
  List_Substitution(Machine(Donnee),ajoutD)==(donnees:=donnees\/{do} || types(do):=ty);
  List_Substitution(Machine(Donnee),suppressionD)==(donnees:=donnees-{do} || types:={do}<<|types)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Donnee))==(?);
  Inherited_List_Constants(Machine(Donnee))==(?);
  List_Constants(Machine(Donnee))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Donnee),DONNEES)==(?);
  Context_List_Enumerated(Machine(Donnee))==(?);
  Context_List_Defered(Machine(Donnee))==(?);
  Context_List_Sets(Machine(Donnee))==(?);
  List_Valuable_Sets(Machine(Donnee))==(DONNEES);
  Inherited_List_Enumerated(Machine(Donnee))==(?);
  Inherited_List_Defered(Machine(Donnee))==(?);
  Inherited_List_Sets(Machine(Donnee))==(?);
  List_Enumerated(Machine(Donnee))==(TYPES);
  List_Defered(Machine(Donnee))==(DONNEES);
  List_Sets(Machine(Donnee))==(DONNEES,TYPES);
  Set_Definition(Machine(Donnee),TYPES)==({photo,audio,video})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Donnee))==(?);
  Expanded_List_HiddenConstants(Machine(Donnee))==(?);
  List_HiddenConstants(Machine(Donnee))==(?);
  External_List_HiddenConstants(Machine(Donnee))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Donnee))==(btrue);
  Context_List_Properties(Machine(Donnee))==(btrue);
  Inherited_List_Properties(Machine(Donnee))==(btrue);
  List_Properties(Machine(Donnee))==(DONNEES: FIN(INTEGER) & not(DONNEES = {}) & TYPES: FIN(INTEGER) & not(TYPES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Donnee),ajoutD)==(?);
  List_ANY_Var(Machine(Donnee),suppressionD)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Donnee)) == (DONNEES,TYPES,photo,audio,video | ? | types,donnees | ? | ajoutD,suppressionD | ? | ? | ? | Donnee);
  List_Of_HiddenCst_Ids(Machine(Donnee)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Donnee)) == (?);
  List_Of_VisibleVar_Ids(Machine(Donnee)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Donnee)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Donnee)) == (Type(DONNEES) == Cst(SetOf(atype(DONNEES,"[DONNEES","]DONNEES")));Type(TYPES) == Cst(SetOf(etype(TYPES,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Donnee)) == (Type(photo) == Cst(etype(TYPES,0,2));Type(audio) == Cst(etype(TYPES,0,2));Type(video) == Cst(etype(TYPES,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Donnee)) == (Type(types) == Mvl(SetOf(atype(DONNEES,?,?)*etype(TYPES,0,2)));Type(donnees) == Mvl(SetOf(atype(DONNEES,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Donnee)) == (Type(suppressionD) == Cst(No_type,atype(DONNEES,?,?));Type(ajoutD) == Cst(No_type,atype(DONNEES,?,?)*etype(TYPES,?,?)))
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
