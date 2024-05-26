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
