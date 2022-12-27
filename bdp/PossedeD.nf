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
  List_Uses(Machine(PossedeD))==(?)
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
  External_Context_List_Variables(Machine(PossedeD))==(?);
  Context_List_Variables(Machine(PossedeD))==(?);
  Abstract_List_Variables(Machine(PossedeD))==(?);
  Local_List_Variables(Machine(PossedeD))==(?);
  List_Variables(Machine(PossedeD))==(?);
  External_List_Variables(Machine(PossedeD))==(?)
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
  Gluing_List_Invariant(Machine(PossedeD))==(btrue);
  Expanded_List_Invariant(Machine(PossedeD))==(btrue);
  Abstract_List_Invariant(Machine(PossedeD))==(btrue);
  Context_List_Invariant(Machine(PossedeD))==(btrue);
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
  Expanded_List_Initialisation(Machine(PossedeD))==(skip);
  Context_List_Initialisation(Machine(PossedeD))==(skip);
  List_Initialisation(Machine(PossedeD))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(PossedeD))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(PossedeD))==(btrue);
  List_Constraints(Machine(PossedeD))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(PossedeD))==(?);
  List_Operations(Machine(PossedeD))==(?)
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
  List_Valuable_Constants(Machine(PossedeD))==(?);
  Inherited_List_Constants(Machine(PossedeD))==(?);
  List_Constants(Machine(PossedeD))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(PossedeD))==(?);
  Context_List_Defered(Machine(PossedeD))==(?);
  Context_List_Sets(Machine(PossedeD))==(?);
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
  Context_List_Properties(Machine(PossedeD))==(btrue);
  Inherited_List_Properties(Machine(PossedeD))==(btrue);
  List_Properties(Machine(PossedeD))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(PossedeD)) == (? | ? | ? | ? | ? | ? | ? | ? | PossedeD);
  List_Of_HiddenCst_Ids(Machine(PossedeD)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PossedeD)) == (?);
  List_Of_VisibleVar_Ids(Machine(PossedeD)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PossedeD)) == (?: ?)
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
