import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';

class achat_unites extends StatefulWidget {
  const achat_unites({super.key});

  @override
  State<achat_unites> createState() => _achat_unitesState();
}

class _achat_unitesState extends State<achat_unites> {
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
  final List<String> reseaux = [
    'MTN',
    'Orange',
    'Camtel',
    'Nextel'
  ];

  String current_option = "";
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(children: [
        //sizedbox
        const SizedBox(
          height: 15,
        ),

        //selection du reseau d'achat.............................................................
        const Text(
          'Veillez sélectionner le reseau d\'achat',
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
          child: BlocBuilder<BlocBloc9, reseau_Achat_Unites_State>(
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
                        value: reseaux[0],
                        groupValue: state.reseau == reseaux[0] ? reseaux[0] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc9>().add(reseau_Achat_Unites(reseau: reseaux[0]));
                        },
                      ),
                      title: Text(
                        reseaux[0],
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
                        value: reseaux[1],
                        groupValue: state.reseau == reseaux[1] ? reseaux[1] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc9>().add(reseau_Achat_Unites(reseau: reseaux[1]));
                        },
                      ),
                      title: Text(
                        reseaux[1],
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
                        value: reseaux[2],
                        groupValue: state.reseau == reseaux[2] ? reseaux[2] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc9>().add(reseau_Achat_Unites(reseau: reseaux[2]));
                        },
                      ),
                      title: Text(
                        reseaux[2],
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
                        value: reseaux[3],
                        groupValue: state.reseau == reseaux[3] ? reseaux[3] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc9>().add(reseau_Achat_Unites(reseau: reseaux[3]));
                        },
                      ),
                      title: Text(
                        reseaux[3],
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
          'Veillez sélectionner le mode d\'achat',
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
          child: BlocBuilder<BlocBloc8, Achat_Unites_State>(
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
                          context.read<BlocBloc8>().add(Achat_Unites(mode: mode_transfert1[0]));
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
                          context.read<BlocBloc8>().add(Achat_Unites(mode: mode_transfert1[1]));
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
                          context.read<BlocBloc8>().add(Achat_Unites(mode: mode_transfert1[2]));
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

        //bouton Achat Unités.........................................
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
              'Achat Unités',
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
// Widget achat_unites(){
//   return const Center(child: Text('achat_unites'),);
// }