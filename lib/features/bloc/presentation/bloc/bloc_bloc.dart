
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sahel_pay/Acceuil/home.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

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


//.................visibilité du mot de passe.............................
//bloc1 pour la visibilité du mot de passe
class BlocBloc4 extends Bloc<Visibility_solde, Visibility_solde_state> {
  BlocBloc4()
      : super(
          Visibility_solde_state(solde: "XXXXXX"),
        ) {
    on<Visibility_solde>((event, emit) {
      // ignore: non_constant_identifier_names
      var MonSolde = '1000000 XAF';
      if(event.solde == "XXXXXX"){
        event.solde = MonSolde;
      }else{
        event.solde = "XXXXXX";
      }

      emit(Visibility_solde_state(solde: event.solde));
    });
  }
}