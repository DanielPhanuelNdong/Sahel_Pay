import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
class retrait extends StatefulWidget {
  const retrait({super.key});

  @override
  State<retrait> createState() => _retraitState();
}

class _retraitState extends State<retrait> {
  TextEditingController controle = TextEditingController();
  TextEditingController controles = TextEditingController();
//String control2 = controle.text;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final List<String> mode_transferts = [
    'Agent ',
    'SOWITEL Gab'
  ];

  String current_options = "";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        //sizedbox
        const SizedBox(
          height: 35,
        ),

        //selection du mode de retrait
        const Text(
          'Veillez sélectionner le mode de retrait',
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
          child: BlocBuilder<BlocBloc7, Modes_retrait_state>(
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
                        value: mode_transferts[0],
                        groupValue: state.mode == mode_transferts[0] ? mode_transferts[0] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc7>().add(Modes_retrait(mode: mode_transferts[0]));
                        },
                      ),
                      title: Text(
                        mode_transferts[0],
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
                        value: mode_transferts[1],
                        groupValue: state.mode == mode_transferts[1] ? mode_transferts[1] : '' ,
                        onChanged: (value) {
                          context.read<BlocBloc7>().add(Modes_retrait(mode: mode_transferts[1]));
                        },
                      ),
                      title: Text(
                        mode_transferts[1],
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

        //bouton de retrait
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
              'Effectuer un Retrait',
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


// Widget retrait(){
//   return const Center(child: Text('retrait'),);
// }