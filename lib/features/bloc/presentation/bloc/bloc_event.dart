part of 'bloc_bloc.dart';

abstract class BlocEvent extends Equatable {
  const BlocEvent();

  @override
  List<Object> get props => [];
}

//.................visibilité du mot de passe.............................
// ignore: must_be_immutable
class Visibility_passe extends BlocEvent {
  var vise;
  var obscure;

  Visibility_passe({
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
// ignore: must_be_immutable
class se_souvenir extends BlocEvent {
  var value;
  se_souvenir({
    required this.value,
  });

  @override
  List<Object> get props => [
    value
  ];

}

//............................Barre de navigation .................................
// ignore: must_be_immutable, camel_case_types
class Barre_navigation extends BlocEvent {
  var element_body;
  var element_appbar;
  
  Barre_navigation({
    required this.element_body,
    required this.element_appbar,
  });
  //var element_appbar;
  @override
  List<Object> get props => [
    element_body,element_appbar
  ];
}

//.................visibilité du solde.............................
// ignore: must_be_immutable
class Visibility_solde extends BlocEvent {
  var solde;

  Visibility_solde({
    required this.solde,
  });

  @override
  List<Object> get props => [
    solde
  ];
}

//.......................visibilite des sevices...................................
// ignore: must_be_immutable, camel_case_types
class Visibility_services extends BlocEvent {
  Widget service;

  Visibility_services({
    required this.service,
  });

  @override
  List<Object> get props => [
    service
  ];
}

//.......................Nodes d'envoie...................................
// ignore: must_be_immutable, camel_case_types
class Modes_envoie extends BlocEvent {
 String mode;
  Modes_envoie({
    required this.mode,
  });

  @override
  List<Object> get props => [
    mode
  ];
}

//.......................Nodes de retrait...................................
// ignore: must_be_immutable, camel_case_types
class Modes_retrait extends BlocEvent {
 String mode;
  Modes_retrait({
    required this.mode,
  });

  @override
  List<Object> get props => [
    mode
  ];
}

//.......................Achat Unités...................................
// ignore: must_be_immutable, camel_case_types
class Achat_Unites extends BlocEvent {
 String mode;
  Achat_Unites({
    required this.mode,
  });

  @override
  List<Object> get props => [
    mode
  ];
}
// ignore: camel_case_types, must_be_immutable
class reseau_Achat_Unites extends BlocEvent {
 String reseau;
  reseau_Achat_Unites({
    required this.reseau,
  });

  @override
  List<Object> get props => [
    reseau
  ];
}

//.......................Paiement factures....................................
// ignore: must_be_immutable, camel_case_types
class Paiement_factures extends BlocEvent {
 String mode;
  Paiement_factures({
    required this.mode,
  });

  @override
  List<Object> get props => [
    mode
  ];
}
// ignore: camel_case_types, must_be_immutable
class ressources_Paiement_factures extends BlocEvent {
 String ressource;
  ressources_Paiement_factures({
    required this.ressource,
  });

  @override
  List<Object> get props => [
    ressource
  ];
}

