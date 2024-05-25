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
