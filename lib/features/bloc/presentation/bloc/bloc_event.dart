// ignore_for_file: must_be_immutable, camel_case_types


import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class BlocEvent extends Equatable {
  const BlocEvent();

  @override
  List<Object> get props => [];
}

//.................visibilité du mot de passe.............................
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

//.......................stockage de la confirmation de retrait....................................
class retrait_confirm extends BlocEvent {
bool val = false;
  retrait_confirm({
    required this.val,
  });

  @override
  List<Object> get props => [
    val
  ];

}

//.......................maintenir elements...................................
class maintenir extends BlocEvent {
  var valu ;
  maintenir({
    required this.valu,
  });
  
  @override
  List<Object> get props => [
    valu
  ];

}

//.......................Choix d'assurance...................................
class choix_assurance extends BlocEvent {
  String assurance ;
  choix_assurance({
    required this.assurance,
  });
  
  
  @override
  List<Object> get props => [
    assurance
  ];

}

//.......................Selections des debits..................................
class debits_assurance extends BlocEvent {
  String debit ;
  debits_assurance({
    required this.debit,
  });
  
  
  @override
  List<Object> get props => [
    debit
  ];

}

//.......................Selection Autodébit.................................
class debits_assurance1 extends BlocEvent {
  String debit1 ;
  debits_assurance1({
    required this.debit1,
  });
  
  
  @override
  List<Object> get props => [
    debit1
  ];

}

//.......................Selection Monthlycover.................................
class debits_assurance2 extends BlocEvent {
  String debit2 ;
  debits_assurance2({
    required this.debit2,
  });
  
  
  @override
  List<Object> get props => [
    debit2
  ];

}

//.......................Selection Prepaidcover.................................
class debits_assurance3 extends BlocEvent {
  String debit3 ;
  debits_assurance3({
    required this.debit3,
  });
  
  
  @override
  List<Object> get props => [
    debit3
  ];

}

//.......................visibilité de Myhealt Payant.................................
class Myhealt_Payant extends BlocEvent {
  bool visi ;
  Myhealt_Payant({
    required this.visi,
  });
  
  
  @override
  List<Object> get props => [
    visi
  ];

}
