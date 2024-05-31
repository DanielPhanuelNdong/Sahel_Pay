import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/bloc/presentation/bloc/bloc_bloc.dart';
class payer_facture extends StatefulWidget {
  const payer_facture({super.key});

  @override
  State<payer_facture> createState() => _payer_factureState();
}

class _payer_factureState extends State<payer_facture> {
  TextEditingController controle = TextEditingController();
  TextEditingController controles = TextEditingController();
//String control2 = controle.text;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final List<String> mode_transfert1 = [
    'Mobile Money',
    'Sahel Money',
    'Mobile Wallet'
  ];
  final List<String> ressources = [
    'Eau',
    'Electricité',
    'TV',
    'Camtel'
  ];

  String current_option = "";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        //sizedbox
        const SizedBox(
          height: 15,
        ),

        //selection du reseau d'achat.............................................................
        const Text(
          'Veillez sélectionner la ressources à payer',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Color.fromRGBO(199, 92, 12, 1),
          ),
        ),

        //sizedbox
        const SizedBox(
          height: 2,
        ),

        //reseaux utilisés
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: BlocBuilder<BlocBloc11, ressources_Paiement_factures_State>(
            builder: (context, state) {
              return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //reseau 1
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: 150,
                  child: ListTile(
                      leading: Radio(
                        focusNode: FocusNode(),
                        value: ressources[0],
                        groupValue: state.ressources == ressources[0] ? ressources[0] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc11>().add(ressources_Paiement_factures(ressource: ressources[0]));
                        },
                      ),
                      title: Text(
                        ressources[0],
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                ),
              ),

              //reseau 2
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: 155,
                  child: ListTile(
                      leading: Radio(
                        value: ressources[1],
                        groupValue: state.ressources == ressources[1] ? ressources[1] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc11>().add(ressources_Paiement_factures(ressource: ressources[1]));
                        },
                      ),
                      title: Text(
                        ressources[1],
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                ),
              ),

              //reseau 2
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: 150,
                  child: ListTile(
                      leading: Radio(
                        value: ressources[2],
                        groupValue: state.ressources == ressources[2] ? ressources[2] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc11>().add(ressources_Paiement_factures(ressource: ressources[2]));
                        },
                      ),
                      title: Text(
                        ressources[2],
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                ),
              ),

              //reseau 2
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: 150,
                  child: ListTile(
                      leading: Radio(
                        value: ressources[3],
                        groupValue: state.ressources == ressources[3] ? ressources[3] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc11>().add(ressources_Paiement_factures(ressource: ressources[3]));
                        },
                      ),
                      title: Text(
                        ressources[3],
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                ),
              )
            ],
          );
            },
            )
        ),

        //sizedbox
        const SizedBox(
          height: 20,
        ),

        //selection du mode d'achat...........................................................
        const Text(
          'Veillez sélectionner le mode de paiemment',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Color(0xFFc75c0c),
          ),
        ),

        //sizedbox
        const SizedBox(
          height: 2,
        ),

        //modes utilisés
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: BlocBuilder<BlocBloc10, Paiement_factures_State>(
            builder: (context, state) {
              return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: 150,
                  child: ListTile(
                      leading: Radio(
                        focusNode: FocusNode(),
                        value: mode_transfert1[0],
                        groupValue: state.mode == mode_transfert1[0] ? mode_transfert1[0] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc10>().add(Paiement_factures(mode: mode_transfert1[0]));
                        },
                      ),
                      title: Text(
                        mode_transfert1[0],
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: 150,
                  child: ListTile(
                      leading: Radio(
                        value: mode_transfert1[1],
                        groupValue: state.mode == mode_transfert1[1] ? mode_transfert1[1] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc10>().add(Paiement_factures(mode: mode_transfert1[1]));
                        },
                      ),
                      title: Text(
                        mode_transfert1[1],
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: 150,
                  child: ListTile(
                      leading: Radio(
                        value: mode_transfert1[2],
                        groupValue: state.mode == mode_transfert1[2] ? mode_transfert1[2] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc10>().add(Paiement_factures(mode: mode_transfert1[2]));
                        },
                      ),
                      title: Text(
                        mode_transfert1[2],
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                ),
              )
            ],
          );
            },
            )
        ),

        //sizedbox
        const SizedBox(
          height: 30,
        ),

        //bouton Paiement factures.........................................
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF007549),
                  boxShadow: [
              BoxShadow(
                  color: const Color(0xFF007549).withOpacity(.255),
                  blurRadius: 3,
                  spreadRadius: 3,
                  offset: const Offset(0, 2))
            ]),
            child: const Text(
              'Paiement factures',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        )
        
      ]),
    );
  }
}

// Widget payer_facture(){
//   return const Center(child: Text('payer_facture'),);
// }