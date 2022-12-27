Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Ecrit))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Ecrit))==(Machine(Ecrit));
  Level(Machine(Ecrit))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Ecrit)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Ecrit))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Ecrit))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Ecrit))==(Lit,Donnee,Utilisateur,PossedeD);
  List_Includes(Machine(Ecrit))==(Utilisateur,Donnee,Lit)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Ecrit))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Ecrit))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Ecrit))==(?);
  Context_List_Variables(Machine(Ecrit))==(?);
  Abstract_List_Variables(Machine(Ecrit))==(?);
  Local_List_Variables(Machine(Ecrit))==(ecrit);
  List_Variables(Machine(Ecrit))==(ecrit,identifiant_ut,utilisateurs,identifiant_do,type,designe,noms,donnees,lit);
  External_List_Variables(Machine(Ecrit))==(ecrit,identifiant_ut,utilisateurs,identifiant_do,type,designe,noms,donnees,lit)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Ecrit))==(?);
  Abstract_List_VisibleVariables(Machine(Ecrit))==(?);
  External_List_VisibleVariables(Machine(Ecrit))==(?);
  Expanded_List_VisibleVariables(Machine(Ecrit))==(?);
  List_VisibleVariables(Machine(Ecrit))==(?);
  Internal_List_VisibleVariables(Machine(Ecrit))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Ecrit))==(btrue);
  Gluing_List_Invariant(Machine(Ecrit))==(btrue);
  Abstract_List_Invariant(Machine(Ecrit))==(btrue);
  Expanded_List_Invariant(Machine(Ecrit))==(utilisateurs <: UTILISATEURS & identifiant_ut: utilisateurs >-> NATURAL & donnees <: Donnees & noms <: Noms & designe: noms --> donnees & type: donnees --> Types & identifiant_do: donnees >-> NAT);
  Context_List_Invariant(Machine(Ecrit))==(btrue);
  List_Invariant(Machine(Ecrit))==(ecrit: utilisateurs <-> donnees & lit: utilisateurs <-> donnees)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Ecrit))==(btrue);
  Expanded_List_Assertions(Machine(Ecrit))==(btrue);
  Context_List_Assertions(Machine(Ecrit))==(btrue);
  List_Assertions(Machine(Ecrit))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Ecrit))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Ecrit))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Ecrit))==(identifiant_ut,utilisateurs:={},{};donnees,noms,designe,type,identifiant_do:={},{},{},{},{};lit:={};ecrit:={});
  Context_List_Initialisation(Machine(Ecrit))==(skip);
  List_Initialisation(Machine(Ecrit))==(ecrit:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Ecrit))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Ecrit),Machine(Utilisateur))==(?);
  List_Instanciated_Parameters(Machine(Ecrit),Machine(Donnee))==(?);
  List_Instanciated_Parameters(Machine(Ecrit),Machine(Lit))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Ecrit),Machine(Lit))==(btrue);
  List_Context_Constraints(Machine(Ecrit))==(btrue);
  List_Constraints(Machine(Ecrit))==(btrue);
  List_Constraints(Machine(Ecrit),Machine(Donnee))==(btrue);
  List_Constraints(Machine(Ecrit),Machine(Utilisateur))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Ecrit))==(ajoutEcrit,retraitEcrit);
  List_Operations(Machine(Ecrit))==(ajoutEcrit,retraitEcrit)
END
&
THEORY ListInputX IS
  List_Input(Machine(Ecrit),ajoutEcrit)==(ut,do);
  List_Input(Machine(Ecrit),retraitEcrit)==(ut,do)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Ecrit),ajoutEcrit)==(?);
  List_Output(Machine(Ecrit),retraitEcrit)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Ecrit),ajoutEcrit)==(ajoutEcrit(ut,do));
  List_Header(Machine(Ecrit),retraitEcrit)==(retraitEcrit(ut,do))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Ecrit),ajoutEcrit)==(ut: utilisateurs & do: donnees & ut|->do/:ecrit);
  List_Precondition(Machine(Ecrit),retraitEcrit)==(ut: utilisateurs & do: donnees & ut|->do: ecrit)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Ecrit),retraitEcrit)==(ut: utilisateurs & do: donnees & ut|->do: ecrit | ecrit:=ecrit-{ut|->do});
  Expanded_List_Substitution(Machine(Ecrit),ajoutEcrit)==(ut: utilisateurs & do: donnees & ut|->do/:ecrit | ecrit:=ecrit\/{ut|->do} || (ut|->do/:lit ==> (ut: utilisateurs & do: donnees & ut|->do/:lit | lit:=lit\/{ut|->do}) [] not(ut|->do/:lit) ==> skip));
  List_Substitution(Machine(Ecrit),ajoutEcrit)==(ecrit:=ecrit\/{ut|->do} || IF ut|->do/:lit THEN ajoutLit(ut,do) END);
  List_Substitution(Machine(Ecrit),retraitEcrit)==(ecrit:=ecrit-{ut|->do})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Ecrit))==(?);
  Inherited_List_Constants(Machine(Ecrit))==(?);
  List_Constants(Machine(Ecrit))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Ecrit),Types)==({photo,audio,video});
  Context_List_Enumerated(Machine(Ecrit))==(?);
  Context_List_Defered(Machine(Ecrit))==(?);
  Context_List_Sets(Machine(Ecrit))==(?);
  List_Valuable_Sets(Machine(Ecrit))==(UTILISATEURS,Donnees,Noms);
  Inherited_List_Enumerated(Machine(Ecrit))==(Types);
  Inherited_List_Defered(Machine(Ecrit))==(UTILISATEURS,Donnees,Noms);
  Inherited_List_Sets(Machine(Ecrit))==(UTILISATEURS,Donnees,Noms,Types);
  List_Enumerated(Machine(Ecrit))==(?);
  List_Defered(Machine(Ecrit))==(?);
  List_Sets(Machine(Ecrit))==(?);
  Set_Definition(Machine(Ecrit),Noms)==(?);
  Set_Definition(Machine(Ecrit),Donnees)==(?);
  Set_Definition(Machine(Ecrit),UTILISATEURS)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Ecrit))==(?);
  Expanded_List_HiddenConstants(Machine(Ecrit))==(?);
  List_HiddenConstants(Machine(Ecrit))==(?);
  External_List_HiddenConstants(Machine(Ecrit))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Ecrit))==(btrue);
  Context_List_Properties(Machine(Ecrit))==(btrue);
  Inherited_List_Properties(Machine(Ecrit))==(UTILISATEURS: FIN(INTEGER) & not(UTILISATEURS = {}) & Donnees: FIN(INTEGER) & not(Donnees = {}) & Noms: FIN(INTEGER) & not(Noms = {}) & Types: FIN(INTEGER) & not(Types = {}));
  List_Properties(Machine(Ecrit))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Ecrit),ajoutEcrit)==(?);
  List_ANY_Var(Machine(Ecrit),retraitEcrit)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Ecrit)) == (? | Donnees,Noms,Types,photo,audio,video,UTILISATEURS | ecrit | lit,identifiant_do,type,designe,noms,donnees,identifiant_ut,utilisateurs | ajoutEcrit,retraitEcrit | ? | included(Machine(Utilisateur)),included(Machine(Donnee)),included(Machine(Lit)) | ? | Ecrit);
  List_Of_HiddenCst_Ids(Machine(Ecrit)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Ecrit)) == (?);
  List_Of_VisibleVar_Ids(Machine(Ecrit)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Ecrit)) == (?: ?);
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
THEORY SetsEnvX IS
  Sets(Machine(Ecrit)) == (Type(UTILISATEURS) == Cst(SetOf(atype(UTILISATEURS,"[UTILISATEURS","]UTILISATEURS")));Type(Types) == Cst(SetOf(etype(Types,0,2)));Type(Noms) == Cst(SetOf(atype(Noms,"[Noms","]Noms")));Type(Donnees) == Cst(SetOf(atype(Donnees,"[Donnees","]Donnees"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Ecrit)) == (Type(video) == Cst(etype(Types,0,2));Type(audio) == Cst(etype(Types,0,2));Type(photo) == Cst(etype(Types,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Ecrit)) == (Type(utilisateurs) == Mvl(SetOf(atype(UTILISATEURS,?,?)));Type(identifiant_ut) == Mvl(SetOf(atype(UTILISATEURS,?,?)*btype(INTEGER,?,?)));Type(donnees) == Mvl(SetOf(atype(Donnees,?,?)));Type(noms) == Mvl(SetOf(atype(Noms,?,?)));Type(designe) == Mvl(SetOf(atype(Noms,?,?)*atype(Donnees,?,?)));Type(type) == Mvl(SetOf(atype(Donnees,?,?)*etype(Types,0,2)));Type(identifiant_do) == Mvl(SetOf(atype(Donnees,?,?)*btype(INTEGER,0,MAXINT)));Type(lit) == Mvl(SetOf(atype(UTILISATEURS,?,?)*atype(Donnees,?,?)));Type(ecrit) == Mvl(SetOf(atype(UTILISATEURS,?,?)*atype(Donnees,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Ecrit)) == (Type(retraitEcrit) == Cst(No_type,atype(UTILISATEURS,?,?)*atype(Donnees,?,?));Type(ajoutEcrit) == Cst(No_type,atype(UTILISATEURS,?,?)*atype(Donnees,?,?)))
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
