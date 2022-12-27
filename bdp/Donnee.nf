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
  Inherited_List_Includes(Machine(Donnee))==(PossedeD);
  List_Includes(Machine(Donnee))==(PossedeD)
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
  Local_List_Variables(Machine(Donnee))==(identifiant_do,type,designe,noms,donnees);
  List_Variables(Machine(Donnee))==(identifiant_do,type,designe,noms,donnees);
  External_List_Variables(Machine(Donnee))==(identifiant_do,type,designe,noms,donnees)
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
  Abstract_List_Invariant(Machine(Donnee))==(btrue);
  Expanded_List_Invariant(Machine(Donnee))==(btrue);
  Context_List_Invariant(Machine(Donnee))==(btrue);
  List_Invariant(Machine(Donnee))==(donnees <: Donnees & noms <: Noms & designe: noms --> donnees & type: donnees --> Types & identifiant_do: donnees >-> NAT)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Donnee))==(btrue);
  Expanded_List_Assertions(Machine(Donnee))==(btrue);
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
  Expanded_List_Initialisation(Machine(Donnee))==(donnees,noms,designe,type,identifiant_do:={},{},{},{},{});
  Context_List_Initialisation(Machine(Donnee))==(skip);
  List_Initialisation(Machine(Donnee))==(donnees,noms,designe,type,identifiant_do:={},{},{},{},{})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Donnee))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Donnee),Machine(PossedeD))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Donnee),Machine(PossedeD))==(btrue);
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
  List_Input(Machine(Donnee),ajoutD)==(nom,ty);
  List_Input(Machine(Donnee),suppressionD)==(do)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Donnee),ajoutD)==(?);
  List_Output(Machine(Donnee),suppressionD)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Donnee),ajoutD)==(ajoutD(nom,ty));
  List_Header(Machine(Donnee),suppressionD)==(suppressionD(do))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Donnee),ajoutD)==(nom: Noms-noms & ty: Types);
  List_Precondition(Machine(Donnee),suppressionD)==(do: donnees)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Donnee),suppressionD)==(do: donnees | donnees,noms,designe,type,identifiant_do:=donnees-{do},noms-designe~[{do}],designe|>>{do},{do}<<|type,{do}<<|identifiant_do);
  Expanded_List_Substitution(Machine(Donnee),ajoutD)==(nom: Noms-noms & ty: Types | @(do,iu).(do: Donnees-donnees & iu: NAT-ran(identifiant_do) ==> donnees,noms,designe,type,identifiant_do:=donnees\/{do},noms\/{nom},designe<+{nom|->do},type<+{do|->ty},identifiant_do<+{do|->iu}));
  List_Substitution(Machine(Donnee),ajoutD)==(ANY do,iu WHERE do: Donnees-donnees & iu: NAT-ran(identifiant_do) THEN donnees:=donnees\/{do} || noms:=noms\/{nom} || designe(nom):=do || type(do):=ty || identifiant_do(do):=iu END);
  List_Substitution(Machine(Donnee),suppressionD)==(donnees:=donnees-{do} || noms:=noms-designe~[{do}] || designe:=designe|>>{do} || type:={do}<<|type || identifiant_do:={do}<<|identifiant_do)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Donnee))==(?);
  Inherited_List_Constants(Machine(Donnee))==(?);
  List_Constants(Machine(Donnee))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Donnee),Donnees)==(?);
  Context_List_Enumerated(Machine(Donnee))==(?);
  Context_List_Defered(Machine(Donnee))==(?);
  Context_List_Sets(Machine(Donnee))==(?);
  List_Valuable_Sets(Machine(Donnee))==(Donnees,Noms);
  Inherited_List_Enumerated(Machine(Donnee))==(?);
  Inherited_List_Defered(Machine(Donnee))==(?);
  Inherited_List_Sets(Machine(Donnee))==(?);
  List_Enumerated(Machine(Donnee))==(Types);
  List_Defered(Machine(Donnee))==(Donnees,Noms);
  List_Sets(Machine(Donnee))==(Donnees,Noms,Types);
  Set_Definition(Machine(Donnee),Noms)==(?);
  Set_Definition(Machine(Donnee),Types)==({photo,audio,video})
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
  List_Properties(Machine(Donnee))==(Donnees: FIN(INTEGER) & not(Donnees = {}) & Noms: FIN(INTEGER) & not(Noms = {}) & Types: FIN(INTEGER) & not(Types = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Donnee),ajoutD)==((Var(do) == atype(Donnees,?,?)),(Var(iu) == btype(INTEGER,?,?)));
  List_ANY_Var(Machine(Donnee),suppressionD)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Donnee)) == (Donnees,Noms,Types,photo,audio,video | ? | identifiant_do,type,designe,noms,donnees | ? | ajoutD,suppressionD | ? | included(Machine(PossedeD)) | ? | Donnee);
  List_Of_HiddenCst_Ids(Machine(Donnee)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Donnee)) == (?);
  List_Of_VisibleVar_Ids(Machine(Donnee)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Donnee)) == (?: ?);
  List_Of_Ids(Machine(PossedeD)) == (? | ? | ? | ? | ? | ? | ? | ? | PossedeD);
  List_Of_HiddenCst_Ids(Machine(PossedeD)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PossedeD)) == (?);
  List_Of_VisibleVar_Ids(Machine(PossedeD)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PossedeD)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Donnee)) == (Type(Donnees) == Cst(SetOf(atype(Donnees,"[Donnees","]Donnees")));Type(Noms) == Cst(SetOf(atype(Noms,"[Noms","]Noms")));Type(Types) == Cst(SetOf(etype(Types,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Donnee)) == (Type(photo) == Cst(etype(Types,0,2));Type(audio) == Cst(etype(Types,0,2));Type(video) == Cst(etype(Types,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Donnee)) == (Type(identifiant_do) == Mvl(SetOf(atype(Donnees,?,?)*btype(INTEGER,0,MAXINT)));Type(type) == Mvl(SetOf(atype(Donnees,?,?)*etype(Types,0,2)));Type(designe) == Mvl(SetOf(atype(Noms,?,?)*atype(Donnees,?,?)));Type(noms) == Mvl(SetOf(atype(Noms,?,?)));Type(donnees) == Mvl(SetOf(atype(Donnees,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Donnee)) == (Type(suppressionD) == Cst(No_type,atype(Donnees,?,?));Type(ajoutD) == Cst(No_type,atype(Noms,?,?)*etype(Types,?,?)))
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
