Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Permissions))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Permissions))==(Machine(Permissions));
  Level(Machine(Permissions))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Permissions)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Permissions))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Permissions))==(PossedeD,Page,Donnee)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Permissions))==(?);
  List_Includes(Machine(Permissions))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Permissions))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Permissions))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Permissions))==(possedeD,pages,types,donnees);
  Context_List_Variables(Machine(Permissions))==(possedeD,pages,types,donnees);
  Abstract_List_Variables(Machine(Permissions))==(?);
  Local_List_Variables(Machine(Permissions))==(Regarde,Ecrit,Lit);
  List_Variables(Machine(Permissions))==(Regarde,Ecrit,Lit);
  External_List_Variables(Machine(Permissions))==(Regarde,Ecrit,Lit)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Permissions))==(?);
  Abstract_List_VisibleVariables(Machine(Permissions))==(?);
  External_List_VisibleVariables(Machine(Permissions))==(?);
  Expanded_List_VisibleVariables(Machine(Permissions))==(?);
  List_VisibleVariables(Machine(Permissions))==(?);
  Internal_List_VisibleVariables(Machine(Permissions))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Permissions))==(btrue);
  Gluing_List_Invariant(Machine(Permissions))==(Lit: donnees <-> pages & Ecrit: donnees <-> pages & Regarde: donnees <-> pages & !do.(do: donnees => possedeD(do): Lit[{do}]/\Ecrit[{do}]));
  Expanded_List_Invariant(Machine(Permissions))==(btrue);
  Abstract_List_Invariant(Machine(Permissions))==(btrue);
  Context_List_Invariant(Machine(Permissions))==(pages <: PAGES & donnees <: DONNEES & types: donnees --> TYPES);
  List_Invariant(Machine(Permissions))==(ran(Ecrit) <: ran(Lit))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Permissions))==(btrue);
  Abstract_List_Assertions(Machine(Permissions))==(btrue);
  Context_List_Assertions(Machine(Permissions))==(btrue);
  List_Assertions(Machine(Permissions))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Permissions))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Permissions))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Permissions))==(Lit,Ecrit,Regarde:={},{},{});
  Context_List_Initialisation(Machine(Permissions))==(possedeD:={};pages:={};donnees,types:={},{});
  List_Initialisation(Machine(Permissions))==(Lit,Ecrit,Regarde:={},{},{})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Permissions))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Permissions),Machine(PossedeD))==(?);
  List_Instanciated_Parameters(Machine(Permissions),Machine(Page))==(?);
  List_Instanciated_Parameters(Machine(Permissions),Machine(Donnee))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Permissions))==(btrue);
  List_Constraints(Machine(Permissions))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Permissions))==(AjoutLit,SuppLit,AjoutEcrit,SuppEcrit,AjoutRegarde,SuppRegarde,SoustraireDroits,AjoutPermissionsProprietaire,AjoutPremieresPermissions);
  List_Operations(Machine(Permissions))==(AjoutLit,SuppLit,AjoutEcrit,SuppEcrit,AjoutRegarde,SuppRegarde,SoustraireDroits,AjoutPermissionsProprietaire,AjoutPremieresPermissions)
END
&
THEORY ListInputX IS
  List_Input(Machine(Permissions),AjoutLit)==(pa,do);
  List_Input(Machine(Permissions),SuppLit)==(pa,do);
  List_Input(Machine(Permissions),AjoutEcrit)==(pa,do);
  List_Input(Machine(Permissions),SuppEcrit)==(pa,do);
  List_Input(Machine(Permissions),AjoutRegarde)==(pa,do);
  List_Input(Machine(Permissions),SuppRegarde)==(pa,do);
  List_Input(Machine(Permissions),SoustraireDroits)==(do);
  List_Input(Machine(Permissions),AjoutPermissionsProprietaire)==(pa,do);
  List_Input(Machine(Permissions),AjoutPremieresPermissions)==(pa,do)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Permissions),AjoutLit)==(?);
  List_Output(Machine(Permissions),SuppLit)==(?);
  List_Output(Machine(Permissions),AjoutEcrit)==(?);
  List_Output(Machine(Permissions),SuppEcrit)==(?);
  List_Output(Machine(Permissions),AjoutRegarde)==(?);
  List_Output(Machine(Permissions),SuppRegarde)==(?);
  List_Output(Machine(Permissions),SoustraireDroits)==(?);
  List_Output(Machine(Permissions),AjoutPermissionsProprietaire)==(?);
  List_Output(Machine(Permissions),AjoutPremieresPermissions)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Permissions),AjoutLit)==(AjoutLit(pa,do));
  List_Header(Machine(Permissions),SuppLit)==(SuppLit(pa,do));
  List_Header(Machine(Permissions),AjoutEcrit)==(AjoutEcrit(pa,do));
  List_Header(Machine(Permissions),SuppEcrit)==(SuppEcrit(pa,do));
  List_Header(Machine(Permissions),AjoutRegarde)==(AjoutRegarde(pa,do));
  List_Header(Machine(Permissions),SuppRegarde)==(SuppRegarde(pa,do));
  List_Header(Machine(Permissions),SoustraireDroits)==(SoustraireDroits(do));
  List_Header(Machine(Permissions),AjoutPermissionsProprietaire)==(AjoutPermissionsProprietaire(pa,do));
  List_Header(Machine(Permissions),AjoutPremieresPermissions)==(AjoutPremieresPermissions(pa,do))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Permissions),AjoutLit)==(pa: pages & do: donnees);
  List_Precondition(Machine(Permissions),SuppLit)==(pa: pages & do: donnees & do|->pa: Lit & do|->pa/:Ecrit & pa/=possedeD(do));
  List_Precondition(Machine(Permissions),AjoutEcrit)==(pa: pages & do: donnees & do|->pa: Lit);
  List_Precondition(Machine(Permissions),SuppEcrit)==(pa: pages & do: donnees & do|->pa: Ecrit & pa/=possedeD(do));
  List_Precondition(Machine(Permissions),AjoutRegarde)==(pa: pages & do: donnees);
  List_Precondition(Machine(Permissions),SuppRegarde)==(pa: pages & do: donnees & do|->pa: Regarde);
  List_Precondition(Machine(Permissions),SoustraireDroits)==(do: donnees);
  List_Precondition(Machine(Permissions),AjoutPermissionsProprietaire)==(pa: pages & do: DONNEES & pa = possedeD(do));
  List_Precondition(Machine(Permissions),AjoutPremieresPermissions)==(pa: PAGES & do: DONNEES)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Permissions),AjoutPremieresPermissions)==(pa: PAGES & do: DONNEES | Lit,Ecrit,Regarde:=Lit\/{do|->pa},Ecrit\/{do|->pa},Regarde\/{do|->pa});
  Expanded_List_Substitution(Machine(Permissions),AjoutPermissionsProprietaire)==(pa: pages & do: DONNEES & pa = possedeD(do) | Lit,Ecrit,Regarde:=Lit\/{do|->pa},Ecrit\/{do|->pa},Regarde\/{do|->pa});
  Expanded_List_Substitution(Machine(Permissions),SoustraireDroits)==(do: donnees | Lit,Ecrit,Regarde:={do}<<|Lit,{do}<<|Ecrit,{do}<<|Regarde);
  Expanded_List_Substitution(Machine(Permissions),SuppRegarde)==(pa: pages & do: donnees & do|->pa: Regarde | Regarde:=Regarde-{do|->pa});
  Expanded_List_Substitution(Machine(Permissions),AjoutRegarde)==(pa: pages & do: donnees | Regarde:=Regarde\/{do|->pa});
  Expanded_List_Substitution(Machine(Permissions),SuppEcrit)==(pa: pages & do: donnees & do|->pa: Ecrit & pa/=possedeD(do) | Ecrit:=Ecrit-{do|->pa});
  Expanded_List_Substitution(Machine(Permissions),AjoutEcrit)==(pa: pages & do: donnees & do|->pa: Lit | Ecrit:=Ecrit\/{do|->pa});
  Expanded_List_Substitution(Machine(Permissions),SuppLit)==(pa: pages & do: donnees & do|->pa: Lit & do|->pa/:Ecrit & pa/=possedeD(do) | Lit:=Lit-{do|->pa});
  Expanded_List_Substitution(Machine(Permissions),AjoutLit)==(pa: pages & do: donnees | Lit:=Lit\/{do|->pa});
  List_Substitution(Machine(Permissions),AjoutLit)==(Lit:=Lit\/{do|->pa});
  List_Substitution(Machine(Permissions),SuppLit)==(Lit:=Lit-{do|->pa});
  List_Substitution(Machine(Permissions),AjoutEcrit)==(Ecrit:=Ecrit\/{do|->pa});
  List_Substitution(Machine(Permissions),SuppEcrit)==(Ecrit:=Ecrit-{do|->pa});
  List_Substitution(Machine(Permissions),AjoutRegarde)==(Regarde:=Regarde\/{do|->pa});
  List_Substitution(Machine(Permissions),SuppRegarde)==(Regarde:=Regarde-{do|->pa});
  List_Substitution(Machine(Permissions),SoustraireDroits)==(Lit:={do}<<|Lit || Ecrit:={do}<<|Ecrit || Regarde:={do}<<|Regarde);
  List_Substitution(Machine(Permissions),AjoutPermissionsProprietaire)==(Lit:=Lit\/{do|->pa} || Ecrit:=Ecrit\/{do|->pa} || Regarde:=Regarde\/{do|->pa});
  List_Substitution(Machine(Permissions),AjoutPremieresPermissions)==(Lit:=Lit\/{do|->pa} || Ecrit:=Ecrit\/{do|->pa} || Regarde:=Regarde\/{do|->pa})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Permissions))==(?);
  Inherited_List_Constants(Machine(Permissions))==(?);
  List_Constants(Machine(Permissions))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Permissions),TYPES)==({photo,audio,video});
  Context_List_Enumerated(Machine(Permissions))==(TYPES);
  Context_List_Defered(Machine(Permissions))==(PAGES,DONNEES);
  Context_List_Sets(Machine(Permissions))==(PAGES,DONNEES,TYPES);
  List_Valuable_Sets(Machine(Permissions))==(?);
  Inherited_List_Enumerated(Machine(Permissions))==(?);
  Inherited_List_Defered(Machine(Permissions))==(?);
  Inherited_List_Sets(Machine(Permissions))==(?);
  List_Enumerated(Machine(Permissions))==(?);
  List_Defered(Machine(Permissions))==(?);
  List_Sets(Machine(Permissions))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Permissions))==(?);
  Expanded_List_HiddenConstants(Machine(Permissions))==(?);
  List_HiddenConstants(Machine(Permissions))==(?);
  External_List_HiddenConstants(Machine(Permissions))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Permissions))==(btrue);
  Context_List_Properties(Machine(Permissions))==(PAGES: FIN(INTEGER) & not(PAGES = {}) & DONNEES: FIN(INTEGER) & not(DONNEES = {}) & TYPES: FIN(INTEGER) & not(TYPES = {}));
  Inherited_List_Properties(Machine(Permissions))==(btrue);
  List_Properties(Machine(Permissions))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Permissions),AjoutLit)==(?);
  List_ANY_Var(Machine(Permissions),SuppLit)==(?);
  List_ANY_Var(Machine(Permissions),AjoutEcrit)==(?);
  List_ANY_Var(Machine(Permissions),SuppEcrit)==(?);
  List_ANY_Var(Machine(Permissions),AjoutRegarde)==(?);
  List_ANY_Var(Machine(Permissions),SuppRegarde)==(?);
  List_ANY_Var(Machine(Permissions),SoustraireDroits)==(?);
  List_ANY_Var(Machine(Permissions),AjoutPermissionsProprietaire)==(?);
  List_ANY_Var(Machine(Permissions),AjoutPremieresPermissions)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Permissions)) == (? | ? | Regarde,Ecrit,Lit | ? | AjoutLit,SuppLit,AjoutEcrit,SuppEcrit,AjoutRegarde,SuppRegarde,SoustraireDroits,AjoutPermissionsProprietaire,AjoutPremieresPermissions | ? | used(Machine(PossedeD)),used(Machine(Page)),used(Machine(Donnee)) | ? | Permissions);
  List_Of_HiddenCst_Ids(Machine(Permissions)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Permissions)) == (?);
  List_Of_VisibleVar_Ids(Machine(Permissions)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Permissions)) == (?: ?);
  List_Of_Ids(Machine(Donnee)) == (DONNEES,TYPES,photo,audio,video | ? | types,donnees | ? | ajoutD,suppressionD | ? | ? | ? | Donnee);
  List_Of_HiddenCst_Ids(Machine(Donnee)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Donnee)) == (?);
  List_Of_VisibleVar_Ids(Machine(Donnee)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Donnee)) == (?: ?);
  List_Of_Ids(Machine(Page)) == (PAGES | ? | pages | ? | AjoutPage,SuppPage | ? | ? | ? | Page);
  List_Of_HiddenCst_Ids(Machine(Page)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Page)) == (?);
  List_Of_VisibleVar_Ids(Machine(Page)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Page)) == (?: ?);
  List_Of_Ids(Machine(PossedeD)) == (? | ? | possedeD | ? | AjoutPossedeDonnee,SuppPossedeDonnee,AjoutPremiereDonnee | ? | used(Machine(Page)),used(Machine(Donnee)) | ? | PossedeD);
  List_Of_HiddenCst_Ids(Machine(PossedeD)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PossedeD)) == (?);
  List_Of_VisibleVar_Ids(Machine(PossedeD)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PossedeD)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Permissions)) == (Type(Regarde) == Mvl(SetOf(atype(DONNEES,?,?)*atype(PAGES,?,?)));Type(Ecrit) == Mvl(SetOf(atype(DONNEES,?,?)*atype(PAGES,?,?)));Type(Lit) == Mvl(SetOf(atype(DONNEES,?,?)*atype(PAGES,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Permissions)) == (Type(AjoutPremieresPermissions) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(AjoutPermissionsProprietaire) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(SoustraireDroits) == Cst(No_type,atype(DONNEES,?,?));Type(SuppRegarde) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(AjoutRegarde) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(SuppEcrit) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(AjoutEcrit) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(SuppLit) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(AjoutLit) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?)))
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
