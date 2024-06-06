// ignore_for_file: camel_case_types, must_be_immutable

part of 'bloc_bloc.dart';

abstract class BlocState extends Equatable {
  const BlocState();  

  @override
  List<Object> get props => [];
}
class BlocInitial extends BlocState {}

//.................visibilité du mot de passe.............................
class Visibility_passe_state extends BlocState {
  var vise;
  var obscure;

  Visibility_passe_state({
    required this.vise,
    required this.obscure,
  });

  @override
  List<Object> get props => [
    vise,
    obscure
  ];
}

//...........................se souvenir de moi ................................
class se_souvenir_state extends BlocState {
  var value;
  se_souvenir_state({
    required this.value,
  });

  @override
  List<Object> get props => [
    value
  ];
}

//............................Barre de navigation .................................
class Barre_navigation_satate extends BlocState {
  var element_body;
  var element_appbar;
  Barre_navigation_satate({
    required this.element_body,
    required this.element_appbar,
  });

  @override
  List<Object> get props => [
    element_body, element_appbar
  ];
}

//.................visibilité du solde.............................
class Visibility_solde_state extends BlocState {
  var solde;

  Visibility_solde_state({
    required this.solde,
  });

  @override
  List<Object> get props => [
    solde
  ];


}

//.......................visibilite des sevices...................................
class Visibility_services_state extends BlocState {
  Widget service;

  Visibility_services_state({
    required this.service,
  });

  @override
  List<Object> get props => [
    service
  ];
}

//.......................Nodes d'envoie...................................
class Modes_envoie_state extends BlocState {
 String mode;
  Modes_envoie_state({
    required this.mode,
  });

  @override
  List<Object> get props => [
    mode
  ];
}

//.......................Nodes de retrait...................................
class Modes_retrait_state extends BlocState {
 String mode;
  Modes_retrait_state({
    required this.mode,
  });

  @override
  List<Object> get props => [
    mode
  ];
}

//.......................Achat Unités...................................
class Achat_Unites_State extends BlocState {
 String mode;
  Achat_Unites_State({
    required this.mode,
  });

  @override
  List<Object> get props => [
    mode
  ];
}

class reseau_Achat_Unites_State extends BlocState {
 String reseau;
  reseau_Achat_Unites_State({
    required this.reseau,
  });

  @override
  List<Object> get props => [
    reseau
  ];
}

//.......................Paiement factures....................................
class Paiement_factures_State extends BlocState {
 String mode;
  Paiement_factures_State({
    required this.mode,
  });

  @override
  List<Object> get props => [
    mode
  ];
}

class ressources_Paiement_factures_State extends BlocState {
 String ressources;
  ressources_Paiement_factures_State({
    required this.ressources,
  });

  @override
  List<Object> get props => [
    ressources
  ];
}

//.......................stockage de la confirmation de retrait....................................
class retrait_confirm_state extends BlocState{
bool val = false;
  retrait_confirm_state({
    required this.val,
  });

  @override
  List<Object> get props => [
    val
  ];
}

//.......................maintenir elements...................................
class maintenir_state extends BlocEvent {
  var valu = true;
  maintenir_state({
    required this.valu,
  });
  
  @override
  List<Object> get props => [
    valu
  ];
}