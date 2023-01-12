Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(System))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(System))==(Machine(System));
  Level(Machine(System))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(System)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(System))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(System))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(System))==(Donnee,Page,PossedeD,Permissions);
  List_Includes(Machine(System))==(Permissions,PossedeD,Page,Donnee)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(System))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(System))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(System))==(?);
  Context_List_Variables(Machine(System))==(?);
  Abstract_List_Variables(Machine(System))==(?);
  Local_List_Variables(Machine(System))==(?);
  List_Variables(Machine(System))==(Regarde,Ecrit,Lit,possedeD,pages,types,donnees);
  External_List_Variables(Machine(System))==(Regarde,Ecrit,Lit,possedeD,pages,types,donnees)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(System))==(?);
  Abstract_List_VisibleVariables(Machine(System))==(?);
  External_List_VisibleVariables(Machine(System))==(?);
  Expanded_List_VisibleVariables(Machine(System))==(?);
  List_VisibleVariables(Machine(System))==(?);
  Internal_List_VisibleVariables(Machine(System))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(System))==(btrue);
  Gluing_List_Invariant(Machine(System))==(btrue);
  Abstract_List_Invariant(Machine(System))==(btrue);
  Expanded_List_Invariant(Machine(System))==(ran(Ecrit) <: ran(Lit) & pages <: PAGES & donnees <: DONNEES & types: donnees --> TYPES);
  Context_List_Invariant(Machine(System))==(btrue);
  List_Invariant(Machine(System))==(Lit: donnees <-> pages & Ecrit: donnees <-> pages & Regarde: donnees <-> pages & !do.(do: donnees => possedeD(do): Lit[{do}]/\Ecrit[{do}]) & possedeD: donnees --> pages & !pa.(pa: pages => card(possedeD|>{pa})>=1))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(System))==(btrue);
  Expanded_List_Assertions(Machine(System))==(btrue);
  Context_List_Assertions(Machine(System))==(btrue);
  List_Assertions(Machine(System))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(System))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(System))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(System))==(Lit,Ecrit,Regarde:={},{},{};possedeD:={};pages:={};donnees,types:={},{});
  Context_List_Initialisation(Machine(System))==(skip);
  List_Initialisation(Machine(System))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(System))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(System),Machine(Permissions))==(?);
  List_Instanciated_Parameters(Machine(System),Machine(PossedeD))==(?);
  List_Instanciated_Parameters(Machine(System),Machine(Page))==(?);
  List_Instanciated_Parameters(Machine(System),Machine(Donnee))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(System),Machine(Donnee))==(btrue);
  List_Context_Constraints(Machine(System))==(btrue);
  List_Constraints(Machine(System))==(btrue);
  List_Constraints(Machine(System),Machine(Page))==(btrue);
  List_Constraints(Machine(System),Machine(PossedeD))==(btrue);
  List_Constraints(Machine(System),Machine(Permissions))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(System))==(Inscription,Publier,SupprimeDonnee,DonneLit,RetireLit,DonneEcrit,RetireEcrit,CommenceRegarde,ArreteRegarde);
  List_Operations(Machine(System))==(Inscription,Publier,SupprimeDonnee,DonneLit,RetireLit,DonneEcrit,RetireEcrit,CommenceRegarde,ArreteRegarde)
END
&
THEORY ListInputX IS
  List_Input(Machine(System),Inscription)==(?);
  List_Input(Machine(System),Publier)==(ty,pa);
  List_Input(Machine(System),SupprimeDonnee)==(do,pa);
  List_Input(Machine(System),DonneLit)==(proprio,pa,do);
  List_Input(Machine(System),RetireLit)==(proprio,pa,do);
  List_Input(Machine(System),DonneEcrit)==(proprio,pa,do);
  List_Input(Machine(System),RetireEcrit)==(proprio,pa,do);
  List_Input(Machine(System),CommenceRegarde)==(pa,do);
  List_Input(Machine(System),ArreteRegarde)==(pa,do)
END
&
THEORY ListOutputX IS
  List_Output(Machine(System),Inscription)==(page);
  List_Output(Machine(System),Publier)==(?);
  List_Output(Machine(System),SupprimeDonnee)==(?);
  List_Output(Machine(System),DonneLit)==(?);
  List_Output(Machine(System),RetireLit)==(?);
  List_Output(Machine(System),DonneEcrit)==(?);
  List_Output(Machine(System),RetireEcrit)==(?);
  List_Output(Machine(System),CommenceRegarde)==(?);
  List_Output(Machine(System),ArreteRegarde)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(System),Inscription)==(page <-- Inscription);
  List_Header(Machine(System),Publier)==(Publier(ty,pa));
  List_Header(Machine(System),SupprimeDonnee)==(SupprimeDonnee(do,pa));
  List_Header(Machine(System),DonneLit)==(DonneLit(proprio,pa,do));
  List_Header(Machine(System),RetireLit)==(RetireLit(proprio,pa,do));
  List_Header(Machine(System),DonneEcrit)==(DonneEcrit(proprio,pa,do));
  List_Header(Machine(System),RetireEcrit)==(RetireEcrit(proprio,pa,do));
  List_Header(Machine(System),CommenceRegarde)==(CommenceRegarde(pa,do));
  List_Header(Machine(System),ArreteRegarde)==(ArreteRegarde(pa,do))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(System),Inscription)==(pages <<: PAGES);
  List_Precondition(Machine(System),Publier)==(donnees <<: DONNEES & ty: TYPES & pa: pages);
  List_Precondition(Machine(System),SupprimeDonnee)==(do: donnees & pa: pages & pa = possedeD(do));
  List_Precondition(Machine(System),DonneLit)==(proprio: pages & pa: pages & do: donnees & proprio = possedeD(do));
  List_Precondition(Machine(System),RetireLit)==(proprio: pages & pa: pages & do: donnees & proprio = possedeD(do) & proprio/=pa & do|->pa: Lit & do|->pa/:Ecrit);
  List_Precondition(Machine(System),DonneEcrit)==(proprio: pages & pa: pages & do: donnees & proprio = possedeD(do) & do|->pa: Lit);
  List_Precondition(Machine(System),RetireEcrit)==(proprio: pages & pa: pages & do: donnees & proprio = possedeD(do) & proprio/=pa & do|->pa: Ecrit);
  List_Precondition(Machine(System),CommenceRegarde)==(pa: pages & do: donnees & do|->pa: Lit);
  List_Precondition(Machine(System),ArreteRegarde)==(pa: pages & do: donnees & do|->pa: Regarde)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(System),ArreteRegarde)==(pa: pages & do: donnees & do|->pa: Regarde | Regarde:=Regarde-{do|->pa});
  Expanded_List_Substitution(Machine(System),CommenceRegarde)==(pa: pages & do: donnees & do|->pa: Lit & pa: pages & do: donnees | Regarde:=Regarde\/{do|->pa});
  Expanded_List_Substitution(Machine(System),RetireEcrit)==(proprio: pages & pa: pages & do: donnees & proprio = possedeD(do) & proprio/=pa & do|->pa: Ecrit & pa: pages & do: donnees & do|->pa: Ecrit & pa/=possedeD(do) | Ecrit:=Ecrit-{do|->pa});
  Expanded_List_Substitution(Machine(System),DonneEcrit)==(proprio: pages & pa: pages & do: donnees & proprio = possedeD(do) & do|->pa: Lit & pa: pages & do: donnees & do|->pa: Lit | Ecrit:=Ecrit\/{do|->pa});
  Expanded_List_Substitution(Machine(System),RetireLit)==(proprio: pages & pa: pages & do: donnees & proprio = possedeD(do) & proprio/=pa & do|->pa: Lit & do|->pa/:Ecrit & pa: pages & do: donnees & do|->pa: Ecrit & pa/=possedeD(do) | Ecrit:=Ecrit-{do|->pa});
  Expanded_List_Substitution(Machine(System),DonneLit)==(proprio: pages & pa: pages & do: donnees & proprio = possedeD(do) & pa: pages & do: donnees | Lit:=Lit\/{do|->pa});
  Expanded_List_Substitution(Machine(System),SupprimeDonnee)==(do: donnees & pa: pages & pa = possedeD(do) & possedeD(do): pages & do: donnees & do: donnees & do: donnees | possedeD:=possedeD-{do|->possedeD(do)} || donnees,types:=donnees-{do},{do}<<|types || Lit,Ecrit,Regarde:={do}<<|Lit,{do}<<|Ecrit,{do}<<|Regarde || (card(possedeD|>{pa})<=1 ==> (pa: pages | pages:=pages-{pa}) [] not(card(possedeD|>{pa})<=1) ==> skip));
  Expanded_List_Substitution(Machine(System),Publier)==(donnees <<: DONNEES & ty: TYPES & pa: pages | @do.(do: DONNEES-donnees ==> (ty: TYPES & do: DONNEES-donnees & pa: pages & do: DONNEES-donnees & pa: pages & do: DONNEES & pa = possedeD(do) | donnees,types:=donnees\/{do},types<+{do|->ty} || possedeD:=possedeD<+{do|->pa} || Lit,Ecrit,Regarde:=Lit\/{do|->pa},Ecrit\/{do|->pa},Regarde\/{do|->pa})));
  Expanded_List_Substitution(Machine(System),Inscription)==(pages <<: PAGES | @(pa,do).(pa: PAGES-pages & do: DONNEES-donnees ==> (pa: PAGES-pages & photo: TYPES & do: DONNEES-donnees & pa: PAGES & do: DONNEES-donnees & pa: PAGES & do: DONNEES | pages:=pages\/{pa} || donnees,types:=donnees\/{do},types<+{do|->photo} || possedeD:=possedeD<+{do|->pa} || Lit,Ecrit,Regarde:=Lit\/{do|->pa},Ecrit\/{do|->pa},Regarde\/{do|->pa} || page:=pa)));
  List_Substitution(Machine(System),Inscription)==(ANY pa,do WHERE pa: PAGES-pages & do: DONNEES-donnees THEN AjoutPage(pa) || ajoutD(do,photo) || AjoutPremiereDonnee(pa,do) || AjoutPremieresPermissions(pa,do) || page:=pa END);
  List_Substitution(Machine(System),Publier)==(ANY do WHERE do: DONNEES-donnees THEN ajoutD(do,ty) || AjoutPossedeDonnee(pa,do) || AjoutPermissionsProprietaire(pa,do) END);
  List_Substitution(Machine(System),SupprimeDonnee)==(SuppPossedeDonnee(possedeD(do),do) || suppressionD(do) || SoustraireDroits(do) || IF card(possedeD|>{pa})<=1 THEN SuppPage(pa) END);
  List_Substitution(Machine(System),DonneLit)==(AjoutLit(pa,do));
  List_Substitution(Machine(System),RetireLit)==(SuppEcrit(pa,do));
  List_Substitution(Machine(System),DonneEcrit)==(AjoutEcrit(pa,do));
  List_Substitution(Machine(System),RetireEcrit)==(SuppEcrit(pa,do));
  List_Substitution(Machine(System),CommenceRegarde)==(AjoutRegarde(pa,do));
  List_Substitution(Machine(System),ArreteRegarde)==(SuppRegarde(pa,do))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(System))==(?);
  Inherited_List_Constants(Machine(System))==(?);
  List_Constants(Machine(System))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(System),TYPES)==({photo,audio,video});
  Context_List_Enumerated(Machine(System))==(?);
  Context_List_Defered(Machine(System))==(?);
  Context_List_Sets(Machine(System))==(?);
  List_Valuable_Sets(Machine(System))==(PAGES,DONNEES);
  Inherited_List_Enumerated(Machine(System))==(TYPES);
  Inherited_List_Defered(Machine(System))==(PAGES,DONNEES);
  Inherited_List_Sets(Machine(System))==(PAGES,DONNEES,TYPES);
  List_Enumerated(Machine(System))==(?);
  List_Defered(Machine(System))==(?);
  List_Sets(Machine(System))==(?);
  Set_Definition(Machine(System),DONNEES)==(?);
  Set_Definition(Machine(System),PAGES)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(System))==(?);
  Expanded_List_HiddenConstants(Machine(System))==(?);
  List_HiddenConstants(Machine(System))==(?);
  External_List_HiddenConstants(Machine(System))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(System))==(btrue);
  Context_List_Properties(Machine(System))==(btrue);
  Inherited_List_Properties(Machine(System))==(PAGES: FIN(INTEGER) & not(PAGES = {}) & DONNEES: FIN(INTEGER) & not(DONNEES = {}) & TYPES: FIN(INTEGER) & not(TYPES = {}));
  List_Properties(Machine(System))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(System),Inscription)==((Var(pa) == atype(PAGES,?,?)),(Var(do) == atype(DONNEES,?,?)));
  List_ANY_Var(Machine(System),Publier)==(Var(do) == atype(DONNEES,?,?));
  List_ANY_Var(Machine(System),SupprimeDonnee)==(?);
  List_ANY_Var(Machine(System),DonneLit)==(?);
  List_ANY_Var(Machine(System),RetireLit)==(?);
  List_ANY_Var(Machine(System),DonneEcrit)==(?);
  List_ANY_Var(Machine(System),RetireEcrit)==(?);
  List_ANY_Var(Machine(System),CommenceRegarde)==(?);
  List_ANY_Var(Machine(System),ArreteRegarde)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(System)) == (? | DONNEES,TYPES,photo,audio,video,PAGES | ? | types,donnees,pages,possedeD,Regarde,Ecrit,Lit | Inscription,Publier,SupprimeDonnee,DonneLit,RetireLit,DonneEcrit,RetireEcrit,CommenceRegarde,ArreteRegarde | ? | included(Machine(Permissions)),included(Machine(PossedeD)),included(Machine(Page)),included(Machine(Donnee)) | ? | System);
  List_Of_HiddenCst_Ids(Machine(System)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(System)) == (?);
  List_Of_VisibleVar_Ids(Machine(System)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(System)) == (?: ?);
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
  List_Of_Ids_SeenBNU(Machine(PossedeD)) == (?: ?);
  List_Of_Ids(Machine(Permissions)) == (? | ? | Regarde,Ecrit,Lit | ? | AjoutLit,SuppLit,AjoutEcrit,SuppEcrit,AjoutRegarde,SuppRegarde,SoustraireDroits,AjoutPermissionsProprietaire,AjoutPremieresPermissions | ? | used(Machine(PossedeD)),used(Machine(Page)),used(Machine(Donnee)) | ? | Permissions);
  List_Of_HiddenCst_Ids(Machine(Permissions)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Permissions)) == (?);
  List_Of_VisibleVar_Ids(Machine(Permissions)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Permissions)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(System)) == (Type(PAGES) == Cst(SetOf(atype(PAGES,"[PAGES","]PAGES")));Type(TYPES) == Cst(SetOf(etype(TYPES,0,2)));Type(DONNEES) == Cst(SetOf(atype(DONNEES,"[DONNEES","]DONNEES"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(System)) == (Type(video) == Cst(etype(TYPES,0,2));Type(audio) == Cst(etype(TYPES,0,2));Type(photo) == Cst(etype(TYPES,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(System)) == (Type(Lit) == Mvl(SetOf(atype(DONNEES,?,?)*atype(PAGES,?,?)));Type(Ecrit) == Mvl(SetOf(atype(DONNEES,?,?)*atype(PAGES,?,?)));Type(Regarde) == Mvl(SetOf(atype(DONNEES,?,?)*atype(PAGES,?,?)));Type(possedeD) == Mvl(SetOf(atype(DONNEES,?,?)*atype(PAGES,?,?)));Type(pages) == Mvl(SetOf(atype(PAGES,?,?)));Type(donnees) == Mvl(SetOf(atype(DONNEES,?,?)));Type(types) == Mvl(SetOf(atype(DONNEES,?,?)*etype(TYPES,0,2))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(System)) == (Type(ArreteRegarde) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(CommenceRegarde) == Cst(No_type,atype(PAGES,?,?)*atype(DONNEES,?,?));Type(RetireEcrit) == Cst(No_type,atype(PAGES,?,?)*atype(PAGES,?,?)*atype(DONNEES,?,?));Type(DonneEcrit) == Cst(No_type,atype(PAGES,?,?)*atype(PAGES,?,?)*atype(DONNEES,?,?));Type(RetireLit) == Cst(No_type,atype(PAGES,?,?)*atype(PAGES,?,?)*atype(DONNEES,?,?));Type(DonneLit) == Cst(No_type,atype(PAGES,?,?)*atype(PAGES,?,?)*atype(DONNEES,?,?));Type(SupprimeDonnee) == Cst(No_type,atype(DONNEES,?,?)*atype(PAGES,?,?));Type(Publier) == Cst(No_type,etype(TYPES,?,?)*atype(PAGES,?,?));Type(Inscription) == Cst(atype(PAGES,?,?),No_type))
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
