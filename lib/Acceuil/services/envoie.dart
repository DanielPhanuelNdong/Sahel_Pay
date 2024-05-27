import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/bloc/presentation/bloc/bloc_bloc.dart';

class envoie extends StatefulWidget {
  const envoie({super.key});

  @override
  State<envoie> createState() => _envoieState();
}

class _envoieState extends State<envoie> {
  TextEditingController controle = TextEditingController();
  TextEditingController controles = TextEditingController();
//String control2 = controle.text;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final List<String> mode_transfert = [
    'Mobile Money',
    'Sahel Money',
    'Mobile Wallet'
  ];

  String current_option = "";
  
  

  @override
  void initState() {
    current_option = mode_transfert[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //double h = MediaQuery.of(context).size.height;
    //double w = MediaQuery.of(context).size.width;
    return Center(
      child: Column(children: [
        //sizedbox
        const SizedBox(
          height: 35,
        ),

        //selection du mode d'envoie
        const Text(
          'Veillez sélectionner le mode d\'envoie',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Color(0xFFc75c0c),
          ),
        ),

        //sizedbox
        const SizedBox(
          height: 35,
        ),

        //modes utilisés
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: BlocBuilder<BlocBloc6, Modes_envoie_state>(
            builder: (context, state) {
              return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 100,
                  width: 150,
                  child: ListTile(
                      leading: Radio(
                        focusNode: FocusNode(),
                        value: mode_transfert[0],
                        groupValue: state.mode == mode_transfert[0] ? mode_transfert[0] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc6>().add(Modes_envoie(mode: mode_transfert[0]));
                        },
                      ),
                      title: Text(
                        mode_transfert[0],
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 100,
                  width: 150,
                  child: ListTile(
                      leading: Radio(
                        value: mode_transfert[1],
                        groupValue: state.mode == mode_transfert[1] ? mode_transfert[1] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc6>().add(Modes_envoie(mode: mode_transfert[1]));
                        },
                      ),
                      title: Text(
                        mode_transfert[1],
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 100,
                  width: 150,
                  child: ListTile(
                      leading: Radio(
                        value: mode_transfert[2],
                        groupValue: state.mode == mode_transfert[2] ? mode_transfert[2] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc6>().add(Modes_envoie(mode: mode_transfert[2]));
                        },
                      ),
                      title: Text(
                        mode_transfert[2],
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

       

        //bouton d'envoie
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
              'Effectuer un Envoie',
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

// Widget envoie(){
//   return const Center(child: Text('envoie'),);
// }