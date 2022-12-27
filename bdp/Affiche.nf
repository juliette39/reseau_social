Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Affiche))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Affiche))==(Machine(Affiche));
  Level(Machine(Affiche))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Affiche)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Affiche))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Affiche))==(Page,Donnee)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Affiche))==(?);
  List_Includes(Machine(Affiche))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Affiche))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Affiche))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Affiche))==(identifiant_pa,pages,identifiant_do,type,designe,noms,donnees);
  Context_List_Variables(Machine(Affiche))==(identifiant_pa,pages,identifiant_do,type,designe,noms,donnees);
  Abstract_List_Variables(Machine(Affiche))==(?);
  Local_List_Variables(Machine(Affiche))==(affiche);
  List_Variables(Machine(Affiche))==(affiche);
  External_List_Variables(Machine(Affiche))==(affiche)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Affiche))==(?);
  Abstract_List_VisibleVariables(Machine(Affiche))==(?);
  External_List_VisibleVariables(Machine(Affiche))==(?);
  Expanded_List_VisibleVariables(Machine(Affiche))==(?);
  List_VisibleVariables(Machine(Affiche))==(?);
  Internal_List_VisibleVariables(Machine(Affiche))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Affiche))==(btrue);
  Gluing_List_Invariant(Machine(Affiche))==(affiche: pages --> donnees);
  Expanded_List_Invariant(Machine(Affiche))==(btrue);
  Abstract_List_Invariant(Machine(Affiche))==(btrue);
  Context_List_Invariant(Machine(Affiche))==(pages <: PAGES & identifiant_pa: pages >-> NATURAL & donnees <: Donnees & noms <: Noms & designe: noms --> donnees & type: donnees --> Types & identifiant_do: donnees >-> NAT);
  List_Invariant(Machine(Affiche))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Affiche))==(btrue);
  Abstract_List_Assertions(Machine(Affiche))==(btrue);
  Context_List_Assertions(Machine(Affiche))==(btrue);
  List_Assertions(Machine(Affiche))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Affiche))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Affiche))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Affiche))==(affiche:={});
  Context_List_Initialisation(Machine(Affiche))==(identifiant_pa,pages:={},{};donnees,noms,designe,type,identifiant_do:={},{},{},{},{});
  List_Initialisation(Machine(Affiche))==(affiche:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Affiche))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Affiche),Machine(Page))==(?);
  List_Instanciated_Parameters(Machine(Affiche),Machine(Donnee))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Affiche))==(btrue);
  List_Constraints(Machine(Affiche))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Affiche))==(ajoutAffiche,suprAffiche);
  List_Operations(Machine(Affiche))==(ajoutAffiche,suprAffiche)
END
&
THEORY ListInputX IS
  List_Input(Machine(Affiche),ajoutAffiche)==(pa,do);
  List_Input(Machine(Affiche),suprAffiche)==(pa,do)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Affiche),ajoutAffiche)==(?);
  List_Output(Machine(Affiche),suprAffiche)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Affiche),ajoutAffiche)==(ajoutAffiche(pa,do));
  List_Header(Machine(Affiche),suprAffiche)==(suprAffiche(pa,do))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Affiche),ajoutAffiche)==(pa: pages & do: donnees);
  List_Precondition(Machine(Affiche),suprAffiche)==(pa: pages & do: donnees & pa|->do: affiche)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Affiche),suprAffiche)==(pa: pages & do: donnees & pa|->do: affiche | affiche:=affiche-{pa|->do});
  Expanded_List_Substitution(Machine(Affiche),ajoutAffiche)==(pa: pages & do: donnees | affiche:=affiche<+{pa|->do});
  List_Substitution(Machine(Affiche),ajoutAffiche)==(affiche(pa):=do);
  List_Substitution(Machine(Affiche),suprAffiche)==(affiche:=affiche-{pa|->do})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Affiche))==(?);
  Inherited_List_Constants(Machine(Affiche))==(?);
  List_Constants(Machine(Affiche))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Affiche),Types)==({photo,audio,video});
  Context_List_Enumerated(Machine(Affiche))==(Types);
  Context_List_Defered(Machine(Affiche))==(PAGES,Donnees,Noms);
  Context_List_Sets(Machine(Affiche))==(PAGES,Donnees,Noms,Types);
  List_Valuable_Sets(Machine(Affiche))==(?);
  Inherited_List_Enumerated(Machine(Affiche))==(?);
  Inherited_List_Defered(Machine(Affiche))==(?);
  Inherited_List_Sets(Machine(Affiche))==(?);
  List_Enumerated(Machine(Affiche))==(?);
  List_Defered(Machine(Affiche))==(?);
  List_Sets(Machine(Affiche))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Affiche))==(?);
  Expanded_List_HiddenConstants(Machine(Affiche))==(?);
  List_HiddenConstants(Machine(Affiche))==(?);
  External_List_HiddenConstants(Machine(Affiche))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Affiche))==(btrue);
  Context_List_Properties(Machine(Affiche))==(PAGES: FIN(INTEGER) & not(PAGES = {}) & Donnees: FIN(INTEGER) & not(Donnees = {}) & Noms: FIN(INTEGER) & not(Noms = {}) & Types: FIN(INTEGER) & not(Types = {}));
  Inherited_List_Properties(Machine(Affiche))==(btrue);
  List_Properties(Machine(Affiche))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Affiche),ajoutAffiche)==(?);
  List_ANY_Var(Machine(Affiche),suprAffiche)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Affiche)) == (? | ? | affiche | ? | ajoutAffiche,suprAffiche | ? | used(Machine(Page)),used(Machine(Donnee)) | ? | Affiche);
  List_Of_HiddenCst_Ids(Machine(Affiche)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Affiche)) == (?);
  List_Of_VisibleVar_Ids(Machine(Affiche)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Affiche)) == (?: ?);
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
  List_Of_Ids(Machine(Page)) == (PAGES | ? | identifiant_pa,pages | ? | AjoutPage,SuppPage | ? | ? | ? | Page);
  List_Of_HiddenCst_Ids(Machine(Page)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Page)) == (?);
  List_Of_VisibleVar_Ids(Machine(Page)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Page)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Affiche)) == (Type(affiche) == Mvl(SetOf(atype(PAGES,?,?)*atype(Donnees,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Affiche)) == (Type(suprAffiche) == Cst(No_type,atype(PAGES,?,?)*atype(Donnees,?,?));Type(ajoutAffiche) == Cst(No_type,atype(PAGES,?,?)*atype(Donnees,?,?)))
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
