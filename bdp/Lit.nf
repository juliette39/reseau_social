Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Lit))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Lit))==(Machine(Lit));
  Level(Machine(Lit))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Lit)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Lit))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Lit))==(Utilisateur,Donnee)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Lit))==(?);
  List_Includes(Machine(Lit))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Lit))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Lit))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Lit))==(identifiant_ut,utilisateurs,identifiant_do,type,designe,noms,donnees);
  Context_List_Variables(Machine(Lit))==(identifiant_ut,utilisateurs,identifiant_do,type,designe,noms,donnees);
  Abstract_List_Variables(Machine(Lit))==(?);
  Local_List_Variables(Machine(Lit))==(lit);
  List_Variables(Machine(Lit))==(lit);
  External_List_Variables(Machine(Lit))==(lit)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Lit))==(?);
  Abstract_List_VisibleVariables(Machine(Lit))==(?);
  External_List_VisibleVariables(Machine(Lit))==(?);
  Expanded_List_VisibleVariables(Machine(Lit))==(?);
  List_VisibleVariables(Machine(Lit))==(?);
  Internal_List_VisibleVariables(Machine(Lit))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Lit))==(btrue);
  Gluing_List_Invariant(Machine(Lit))==(lit: utilisateurs <-> donnees);
  Expanded_List_Invariant(Machine(Lit))==(btrue);
  Abstract_List_Invariant(Machine(Lit))==(btrue);
  Context_List_Invariant(Machine(Lit))==(utilisateurs <: UTILISATEURS & identifiant_ut: utilisateurs >-> NATURAL & donnees <: Donnees & noms <: Noms & designe: noms --> donnees & type: donnees --> Types & identifiant_do: donnees >-> NAT);
  List_Invariant(Machine(Lit))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Lit))==(btrue);
  Abstract_List_Assertions(Machine(Lit))==(btrue);
  Context_List_Assertions(Machine(Lit))==(btrue);
  List_Assertions(Machine(Lit))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Lit))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Lit))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Lit))==(lit:={});
  Context_List_Initialisation(Machine(Lit))==(identifiant_ut,utilisateurs:={},{};donnees,noms,designe,type,identifiant_do:={},{},{},{},{});
  List_Initialisation(Machine(Lit))==(lit:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Lit))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Lit),Machine(Utilisateur))==(?);
  List_Instanciated_Parameters(Machine(Lit),Machine(Donnee))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Lit))==(btrue);
  List_Constraints(Machine(Lit))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Lit))==(ajoutLit,retraitLit);
  List_Operations(Machine(Lit))==(ajoutLit,retraitLit)
END
&
THEORY ListInputX IS
  List_Input(Machine(Lit),ajoutLit)==(ut,do);
  List_Input(Machine(Lit),retraitLit)==(ut,do)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Lit),ajoutLit)==(?);
  List_Output(Machine(Lit),retraitLit)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Lit),ajoutLit)==(ajoutLit(ut,do));
  List_Header(Machine(Lit),retraitLit)==(retraitLit(ut,do))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Lit),ajoutLit)==(ut: utilisateurs & do: donnees & ut|->do/:lit);
  List_Precondition(Machine(Lit),retraitLit)==(ut: utilisateurs & do: donnees & ut|->do: lit)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Lit),retraitLit)==(ut: utilisateurs & do: donnees & ut|->do: lit | lit:=lit-{ut|->do});
  Expanded_List_Substitution(Machine(Lit),ajoutLit)==(ut: utilisateurs & do: donnees & ut|->do/:lit | lit:=lit\/{ut|->do});
  List_Substitution(Machine(Lit),ajoutLit)==(lit:=lit\/{ut|->do});
  List_Substitution(Machine(Lit),retraitLit)==(lit:=lit-{ut|->do})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Lit))==(?);
  Inherited_List_Constants(Machine(Lit))==(?);
  List_Constants(Machine(Lit))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Lit),Types)==({photo,audio,video});
  Context_List_Enumerated(Machine(Lit))==(Types);
  Context_List_Defered(Machine(Lit))==(UTILISATEURS,Donnees,Noms);
  Context_List_Sets(Machine(Lit))==(UTILISATEURS,Donnees,Noms,Types);
  List_Valuable_Sets(Machine(Lit))==(?);
  Inherited_List_Enumerated(Machine(Lit))==(?);
  Inherited_List_Defered(Machine(Lit))==(?);
  Inherited_List_Sets(Machine(Lit))==(?);
  List_Enumerated(Machine(Lit))==(?);
  List_Defered(Machine(Lit))==(?);
  List_Sets(Machine(Lit))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Lit))==(?);
  Expanded_List_HiddenConstants(Machine(Lit))==(?);
  List_HiddenConstants(Machine(Lit))==(?);
  External_List_HiddenConstants(Machine(Lit))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Lit))==(btrue);
  Context_List_Properties(Machine(Lit))==(UTILISATEURS: FIN(INTEGER) & not(UTILISATEURS = {}) & Donnees: FIN(INTEGER) & not(Donnees = {}) & Noms: FIN(INTEGER) & not(Noms = {}) & Types: FIN(INTEGER) & not(Types = {}));
  Inherited_List_Properties(Machine(Lit))==(btrue);
  List_Properties(Machine(Lit))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Lit),ajoutLit)==(?);
  List_ANY_Var(Machine(Lit),retraitLit)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Lit)) == (? | ? | lit | ? | ajoutLit,retraitLit | ? | used(Machine(Utilisateur)),used(Machine(Donnee)) | ? | Lit);
  List_Of_HiddenCst_Ids(Machine(Lit)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Lit)) == (?);
  List_Of_VisibleVar_Ids(Machine(Lit)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Lit)) == (?: ?);
  List_Of_Ids(Machine(Donnee)) == (Donnees,Noms,Types,photo,audio,video | ? | identifiant_do,type,designe,noms,donnees | ? | ajoutD,suppressionD | ? | included(Machine(PossedeD)) | ? | Donnee);
  List_Of_HiddenCst_Ids(Machine(Donnee)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Donnee)) == (?);
  List_Of_VisibleVar_Ids(Machine(Donnee)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Donnee)) == (?: ?);
  List_Of_Ids(Machine(PossedeD)) == (? | ? | ? | ? | ? | ? | ? | ? | PossedeD);
  List_Of_HiddenCst_Ids(Machine(PossedeD)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PossedeD)) == (?);
  List_Of_VisibleVar_Ids(Machine(PossedeD)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PossedeD)) == (?: ?);
  List_Of_Ids(Machine(Utilisateur)) == (UTILISATEURS | ? | identifiant_ut,utilisateurs | ? | AjoutUtilisateur,SuppUtilisateur | ? | ? | ? | Utilisateur);
  List_Of_HiddenCst_Ids(Machine(Utilisateur)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Utilisateur)) == (?);
  List_Of_VisibleVar_Ids(Machine(Utilisateur)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Utilisateur)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Lit)) == (Type(lit) == Mvl(SetOf(atype(UTILISATEURS,?,?)*atype(Donnees,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Lit)) == (Type(retraitLit) == Cst(No_type,atype(UTILISATEURS,?,?)*atype(Donnees,?,?));Type(ajoutLit) == Cst(No_type,atype(UTILISATEURS,?,?)*atype(Donnees,?,?)))
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
