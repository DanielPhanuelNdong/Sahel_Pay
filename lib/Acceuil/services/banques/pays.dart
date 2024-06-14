import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';

import 'wallets_banques/angola/w_b_angola.dart';
import 'wallets_banques/benin/w_b_benin.dart';
import 'wallets_banques/cameroun/w_b_cameroun.dart';
import 'wallets_banques/rdc/w_b_rdc.dart';

class Choix_pays extends StatefulWidget {
  const Choix_pays({super.key});

  @override
  State<Choix_pays> createState() => _Choix_paysState();
}

class _Choix_paysState extends State<Choix_pays> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, ),
            child: Text(
              'Veuillez sélectionner le pays',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xFFc75c0c)),
            ),
          ),
          Center(
            child: Container(
              height: 295,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 5, left: 30, right: 30, bottom: 10),
                child: Center(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 1,
                    children: [
                      //Cameroun........................................
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 35, left: 35, right: 35),
                        child: Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            context.read<BlocBloc5>().add(
                          Visibility_services(service: const w_b_cameroun()));
                          },
                          child: Image.asset('images/cameroun.png'),
                        ),
                      ),
            
                      //Angola................................
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 35, left: 35, right: 35),
                        child: Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            context.read<BlocBloc5>().add(
                          Visibility_services(service: const w_b_angola()));
                          },
                          child: Image.asset('images/angola.png'),
                        ),
                      ),
                      //RDCongo................................................
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 35, left: 35, right: 35),
                        child: Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            context.read<BlocBloc5>().add(
                          Visibility_services(service: const w_b_rdc()));
                          },
                          child: Image.asset('images/rdc.png'),
                        ),
                      ),
                      //Benin..............................
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 35, left: 35, right: 35),
                        child: Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            context.read<BlocBloc5>().add(
                          Visibility_services(service: const w_b_benin()));
                          },
                          child: Image.asset('images/benin.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
