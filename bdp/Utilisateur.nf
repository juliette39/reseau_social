Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Utilisateur))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Utilisateur))==(Machine(Utilisateur));
  Level(Machine(Utilisateur))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Utilisateur)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Utilisateur))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Utilisateur))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Utilisateur))==(?);
  List_Includes(Machine(Utilisateur))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Utilisateur))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Utilisateur))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Utilisateur))==(?);
  Context_List_Variables(Machine(Utilisateur))==(?);
  Abstract_List_Variables(Machine(Utilisateur))==(?);
  Local_List_Variables(Machine(Utilisateur))==(identifiant_ut,utilisateurs);
  List_Variables(Machine(Utilisateur))==(identifiant_ut,utilisateurs);
  External_List_Variables(Machine(Utilisateur))==(identifiant_ut,utilisateurs)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Utilisateur))==(?);
  Abstract_List_VisibleVariables(Machine(Utilisateur))==(?);
  External_List_VisibleVariables(Machine(Utilisateur))==(?);
  Expanded_List_VisibleVariables(Machine(Utilisateur))==(?);
  List_VisibleVariables(Machine(Utilisateur))==(?);
  Internal_List_VisibleVariables(Machine(Utilisateur))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Utilisateur))==(btrue);
  Gluing_List_Invariant(Machine(Utilisateur))==(btrue);
  Expanded_List_Invariant(Machine(Utilisateur))==(btrue);
  Abstract_List_Invariant(Machine(Utilisateur))==(btrue);
  Context_List_Invariant(Machine(Utilisateur))==(btrue);
  List_Invariant(Machine(Utilisateur))==(utilisateurs <: UTILISATEURS & identifiant_ut: utilisateurs >-> NATURAL)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Utilisateur))==(btrue);
  Abstract_List_Assertions(Machine(Utilisateur))==(btrue);
  Context_List_Assertions(Machine(Utilisateur))==(btrue);
  List_Assertions(Machine(Utilisateur))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Utilisateur))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Utilisateur))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Utilisateur))==(identifiant_ut,utilisateurs:={},{});
  Context_List_Initialisation(Machine(Utilisateur))==(skip);
  List_Initialisation(Machine(Utilisateur))==(identifiant_ut,utilisateurs:={},{})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Utilisateur))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Utilisateur))==(btrue);
  List_Constraints(Machine(Utilisateur))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Utilisateur))==(AjoutUtilisateur,SuppUtilisateur);
  List_Operations(Machine(Utilisateur))==(AjoutUtilisateur,SuppUtilisateur)
END
&
THEORY ListInputX IS
  List_Input(Machine(Utilisateur),AjoutUtilisateur)==(ut);
  List_Input(Machine(Utilisateur),SuppUtilisateur)==(ut)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Utilisateur),AjoutUtilisateur)==(?);
  List_Output(Machine(Utilisateur),SuppUtilisateur)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Utilisateur),AjoutUtilisateur)==(AjoutUtilisateur(ut));
  List_Header(Machine(Utilisateur),SuppUtilisateur)==(SuppUtilisateur(ut))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Utilisateur),AjoutUtilisateur)==(utilisateurs <<: UTILISATEURS & ut: UTILISATEURS);
  List_Precondition(Machine(Utilisateur),SuppUtilisateur)==(ut: utilisateurs)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Utilisateur),SuppUtilisateur)==(ut: utilisateurs | utilisateurs:=utilisateurs-{ut});
  Expanded_List_Substitution(Machine(Utilisateur),AjoutUtilisateur)==(utilisateurs <<: UTILISATEURS & ut: UTILISATEURS | @ide.(ide: NAT-ran(identifiant_ut) ==> utilisateurs,identifiant_ut:=utilisateurs\/{ut},identifiant_ut<+{ut|->ide}));
  List_Substitution(Machine(Utilisateur),AjoutUtilisateur)==(ANY ide WHERE ide: NAT-ran(identifiant_ut) THEN utilisateurs:=utilisateurs\/{ut} || identifiant_ut(ut):=ide END);
  List_Substitution(Machine(Utilisateur),SuppUtilisateur)==(utilisateurs:=utilisateurs-{ut})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Utilisateur))==(?);
  Inherited_List_Constants(Machine(Utilisateur))==(?);
  List_Constants(Machine(Utilisateur))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Utilisateur),UTILISATEURS)==(?);
  Context_List_Enumerated(Machine(Utilisateur))==(?);
  Context_List_Defered(Machine(Utilisateur))==(?);
  Context_List_Sets(Machine(Utilisateur))==(?);
  List_Valuable_Sets(Machine(Utilisateur))==(UTILISATEURS);
  Inherited_List_Enumerated(Machine(Utilisateur))==(?);
  Inherited_List_Defered(Machine(Utilisateur))==(?);
  Inherited_List_Sets(Machine(Utilisateur))==(?);
  List_Enumerated(Machine(Utilisateur))==(?);
  List_Defered(Machine(Utilisateur))==(UTILISATEURS);
  List_Sets(Machine(Utilisateur))==(UTILISATEURS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Utilisateur))==(?);
  Expanded_List_HiddenConstants(Machine(Utilisateur))==(?);
  List_HiddenConstants(Machine(Utilisateur))==(?);
  External_List_HiddenConstants(Machine(Utilisateur))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Utilisateur))==(btrue);
  Context_List_Properties(Machine(Utilisateur))==(btrue);
  Inherited_List_Properties(Machine(Utilisateur))==(btrue);
  List_Properties(Machine(Utilisateur))==(UTILISATEURS: FIN(INTEGER) & not(UTILISATEURS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Utilisateur),AjoutUtilisateur)==(Var(ide) == btype(INTEGER,?,?));
  List_ANY_Var(Machine(Utilisateur),SuppUtilisateur)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Utilisateur)) == (UTILISATEURS | ? | identifiant_ut,utilisateurs | ? | AjoutUtilisateur,SuppUtilisateur | ? | ? | ? | Utilisateur);
  List_Of_HiddenCst_Ids(Machine(Utilisateur)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Utilisateur)) == (?);
  List_Of_VisibleVar_Ids(Machine(Utilisateur)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Utilisateur)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Utilisateur)) == (Type(UTILISATEURS) == Cst(SetOf(atype(UTILISATEURS,"[UTILISATEURS","]UTILISATEURS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Utilisateur)) == (Type(identifiant_ut) == Mvl(SetOf(atype(UTILISATEURS,?,?)*btype(INTEGER,?,?)));Type(utilisateurs) == Mvl(SetOf(atype(UTILISATEURS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Utilisateur)) == (Type(SuppUtilisateur) == Cst(No_type,atype(UTILISATEURS,?,?));Type(AjoutUtilisateur) == Cst(No_type,atype(UTILISATEURS,?,?)))
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
