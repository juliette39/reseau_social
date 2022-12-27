Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Chars))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Chars))==(Machine(Chars));
  Level(Machine(Chars))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Chars)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Chars))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Chars))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Chars))==(?);
  List_Includes(Machine(Chars))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Chars))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Chars))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Chars))==(?);
  Context_List_Variables(Machine(Chars))==(?);
  Abstract_List_Variables(Machine(Chars))==(?);
  Local_List_Variables(Machine(Chars))==(?);
  List_Variables(Machine(Chars))==(?);
  External_List_Variables(Machine(Chars))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Chars))==(?);
  Abstract_List_VisibleVariables(Machine(Chars))==(?);
  External_List_VisibleVariables(Machine(Chars))==(?);
  Expanded_List_VisibleVariables(Machine(Chars))==(?);
  List_VisibleVariables(Machine(Chars))==(?);
  Internal_List_VisibleVariables(Machine(Chars))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Chars))==(btrue);
  Gluing_List_Invariant(Machine(Chars))==(btrue);
  Expanded_List_Invariant(Machine(Chars))==(btrue);
  Abstract_List_Invariant(Machine(Chars))==(btrue);
  Context_List_Invariant(Machine(Chars))==(btrue);
  List_Invariant(Machine(Chars))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Chars))==(btrue);
  Abstract_List_Assertions(Machine(Chars))==(btrue);
  Context_List_Assertions(Machine(Chars))==(btrue);
  List_Assertions(Machine(Chars))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Chars))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Chars))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Chars))==(skip);
  Context_List_Initialisation(Machine(Chars))==(skip);
  List_Initialisation(Machine(Chars))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Chars))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Chars))==(btrue);
  List_Constraints(Machine(Chars))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Chars))==(?);
  List_Operations(Machine(Chars))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Chars))==(?);
  Inherited_List_Constants(Machine(Chars))==(?);
  List_Constants(Machine(Chars))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Chars),CHARS)==(?);
  Context_List_Enumerated(Machine(Chars))==(?);
  Context_List_Defered(Machine(Chars))==(?);
  Context_List_Sets(Machine(Chars))==(?);
  List_Valuable_Sets(Machine(Chars))==(CHARS);
  Inherited_List_Enumerated(Machine(Chars))==(?);
  Inherited_List_Defered(Machine(Chars))==(?);
  Inherited_List_Sets(Machine(Chars))==(?);
  List_Enumerated(Machine(Chars))==(?);
  List_Defered(Machine(Chars))==(CHARS);
  List_Sets(Machine(Chars))==(CHARS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Chars))==(?);
  Expanded_List_HiddenConstants(Machine(Chars))==(?);
  List_HiddenConstants(Machine(Chars))==(?);
  External_List_HiddenConstants(Machine(Chars))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Chars))==(btrue);
  Context_List_Properties(Machine(Chars))==(btrue);
  Inherited_List_Properties(Machine(Chars))==(btrue);
  List_Properties(Machine(Chars))==(CHARS: FIN(INTEGER) & not(CHARS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Chars)) == (CHARS | ? | ? | ? | ? | ? | ? | ? | Chars);
  List_Of_HiddenCst_Ids(Machine(Chars)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Chars)) == (?);
  List_Of_VisibleVar_Ids(Machine(Chars)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Chars)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Chars)) == (Type(CHARS) == Cst(SetOf(atype(CHARS,"[CHARS","]CHARS"))))
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
