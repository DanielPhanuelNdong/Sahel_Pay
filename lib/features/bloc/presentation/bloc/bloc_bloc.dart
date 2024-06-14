import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sahel_pay/Acceuil/home.dart';
import 'package:sahel_pay/Acceuil/services/Transactions/transaction.dart';

import 'bloc_event.dart';
import 'bloc_state.dart';

//.................visibilité du mot de passe.............................
//bloc1 pour la visibilité du mot de passe
class BlocBloc extends Bloc<Visibility_passe, Visibility_passe_state> {
  BlocBloc()
      : super(
          Visibility_passe_state(vise: Icons.visibility_off, obscure: true),
        ) {
    on<Visibility_passe>((event, emit) {
      if (event.vise == Icons.visibility_off && event.obscure == true) {
        event.vise = Icons.visibility;
        event.obscure = false;
      } else {
        event.vise = Icons.visibility_off;
        event.obscure = true;
      }

      emit(Visibility_passe_state(vise: event.vise, obscure: event.obscure));
    });
  }
}

//...........................se souvenir de moi ................................
//bloc2 pour se souvenir de moi
class BlocBloc2 extends Bloc<se_souvenir, se_souvenir_state> {
  BlocBloc2() : super(se_souvenir_state(value: true)) {
    on<se_souvenir>((event, emit) {
      if (event.value == true) {
        event.value = false;
      } else {
        event.value = true;
      }

      emit(se_souvenir_state(value: event.value));
    });
  }
}

//............................Barre de navigation .................................
class BlocBloc3 extends Bloc<Barre_navigation, Barre_navigation_satate> {
  BlocBloc3()
      : super(Barre_navigation_satate(
            element_body: const HomePage(), element_appbar: appbar_home())) {
    on<Barre_navigation>((event, emit) {
      emit(Barre_navigation_satate(
          element_body: event.element_body,
          element_appbar: event.element_appbar));
    });
  }
}

//.................visibilité du solde.............................
//bloc1 pour la visibilité du solde
class BlocBloc4 extends Bloc<Visibility_solde, Visibility_solde_state> {
  BlocBloc4()
      : super(
          Visibility_solde_state(solde: "XXXXXX"),
        ) {
    on<Visibility_solde>((event, emit) {
      // ignore: non_constant_identifier_names
      var MonSolde = '1000000 XAF';
      if (event.solde == "XXXXXX") {
        event.solde = MonSolde;
      } else {
        event.solde = "XXXXXX";
      }

      emit(Visibility_solde_state(solde: event.solde));
    });
  }
}

//................visibilite des sevices..............................
//bloc1 pour la visibilite des sevices
class BlocBloc5 extends Bloc<Visibility_services, Visibility_services_state> {
  BlocBloc5()
      : super(
          Visibility_services_state(service: Transactions()),
        ) {
    on<Visibility_services>((event, emit) {
      emit(Visibility_services_state(service: event.service));
    });
  }
}

//.......................Nodes d'envoie...................................
class BlocBloc6 extends Bloc<Modes_envoie, Modes_envoie_state> {
  BlocBloc6()
      : super(
          Modes_envoie_state(mode: 'Sahel Money'),
        ) {
    on<Modes_envoie>((event, emit) {
      emit(Modes_envoie_state(mode: event.mode));
    });
  }
}

//.......................Nodes de retrait...................................
class BlocBloc7 extends Bloc<Modes_retrait, Modes_retrait_state> {
  BlocBloc7()
      : super(
          Modes_retrait_state(mode: 'Agent '),
        ) {
    on<Modes_retrait>((event, emit) {
      emit(Modes_retrait_state(mode: event.mode));
    });
  }
}

//.......................Achat Unités...................................
class BlocBloc8 extends Bloc<Achat_Unites, Achat_Unites_State> {
  BlocBloc8()
      : super(
          Achat_Unites_State(mode: 'Mobile Money'),
        ) {
    on<Achat_Unites>((event, emit) {
      emit(Achat_Unites_State(mode: event.mode));
    });
  }
}

class BlocBloc9 extends Bloc<reseau_Achat_Unites, reseau_Achat_Unites_State> {
  BlocBloc9()
      : super(
          reseau_Achat_Unites_State(reseau: 'MTN'),
        ) {
    on<reseau_Achat_Unites>((event, emit) {
      emit(reseau_Achat_Unites_State(reseau: event.reseau));
    });
  }
}

//.......................Paiement factures....................................
class BlocBloc10 extends Bloc<Paiement_factures, Paiement_factures_State> {
  BlocBloc10()
      : super(
          Paiement_factures_State(mode: 'Mobile Money'),
        ) {
    on<Paiement_factures>((event, emit) {
      emit(Paiement_factures_State(mode: event.mode));
    });
  }
}

class BlocBloc11 extends Bloc<ressources_Paiement_factures,
    ressources_Paiement_factures_State> {
  BlocBloc11()
      : super(
          ressources_Paiement_factures_State(ressources: 'Eau'),
        ) {
    on<ressources_Paiement_factures>((event, emit) {
      emit(ressources_Paiement_factures_State(ressources: event.ressource));
    });
  }
}

//.......................stockage de la confirmation de retrait....................................
class BlocBloc12 extends Bloc<retrait_confirm, retrait_confirm_state> {
  BlocBloc12()
      : super(
          retrait_confirm_state(val: false),
        ) {
    on<retrait_confirm>((event, emit) {
      emit(retrait_confirm_state(val: event.val));
    });
  }
}

//.//.......................maintenir elements...................................
class BlocBloc13 extends Bloc<maintenir, maintenir_state> {
  BlocBloc13()
      : super(
          maintenir_state(valu: true),
        ) {
    on<maintenir>((event, emit) {
      emit(maintenir_state(valu: event.valu));
    });
  }
}

//.......................Choix d'assurance...................................
class BlocBloc14 extends Bloc<choix_assurance, choix_assurance_state> {
  BlocBloc14()
      : super(
          choix_assurance_state(assurance: ''),
        ) {
    on<choix_assurance>((event, emit) {
      

      emit(choix_assurance_state(assurance: event.assurance));
    });
  }
}


//.......................Selections des debits..................................
class BlocBloc16 extends Bloc<debits_assurance, debits_assurance_state> {
  BlocBloc16()
      : super(
          debits_assurance_state(debit: 'Autodebit'),
        ) {
    on<debits_assurance>((event, emit) {
      emit(debits_assurance_state(debit: event.debit));
    });
  }
}

//.......................Selection Autodébit.................................
class BlocBloc17 extends Bloc<debits_assurance1, debits_assurance1_state> {
  BlocBloc17()
      : super(
          debits_assurance1_state(debit1: '50'),
        ) {
    on<debits_assurance1>((event, emit) {
      emit(debits_assurance1_state(debit1: event.debit1));
    });
  }
}

//.......................Selection Monthlycover.................................
class BlocBloc18 extends Bloc<debits_assurance2, debits_assurance2_state> {
  BlocBloc18()
      : super(
          debits_assurance2_state(debit2: '1 000'),
        ) {
    on<debits_assurance2>((event, emit) {
      emit(debits_assurance2_state(debit2: event.debit2));
    });
  }
}

//.......................Selection Prepaidcover.................................
class BlocBloc19 extends Bloc<debits_assurance3, debits_assurance3_state> {
  BlocBloc19()
      : super(
          debits_assurance3_state(debit3: '8 000'),
        ) {
    on<debits_assurance3>((event, emit) {
      emit(debits_assurance3_state(debit3: event.debit3));
    });
  }
}

//.......................visibilité de Myhealt Payant.................................
class BlocBloc20 extends Bloc<Myhealt_Payant, Myhealt_Payant_state> {
  BlocBloc20()
      : super(
          Myhealt_Payant_state(visi: false),
        ) {
    on<Myhealt_Payant>((event, emit) {
      emit(Myhealt_Payant_state(visi: event.visi));
    });
  }
}
