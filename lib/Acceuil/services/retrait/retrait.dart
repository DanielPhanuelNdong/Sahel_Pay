import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sahel_pay/Acceuil/home.dart';
import 'package:sahel_pay/Acceuil/services/index.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_state.dart';
class retrait extends StatefulWidget {
  const retrait({super.key});

  @override
  State<retrait> createState() => _retraitState();
}

class _retraitState extends State<retrait> {
  TextEditingController controle = TextEditingController();
  TextEditingController controles = TextEditingController();
  TextEditingController control = TextEditingController();
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
                            fontSize: 13, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 100,
                  width: 170,
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
                            fontSize: 13, fontWeight: FontWeight.bold),
                      )),
                ),
              )
            ],
          );
            },
            )
        ),

        //bouton de retrait.......................................................................
            //boite de dialogue pour entrer le numero et le montant............................................
            BlocBuilder<BlocBloc12, retrait_confirm_state>(
              builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  print(state.val);
                  state.val == true ? context.read<BlocBloc3>().add(Barre_navigation(element_body: const Detail_retrait(), element_appbar: appbar_home())) : retraits();
                },
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
              );
              },
            ),
        
      ]),
    );
  }

  Future retraits() async {
    return await Get.bottomSheet(
        //backgroundColor: Colors.red,
        //persistent: false,
        SingleChildScrollView(
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40.0)),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFf7efe4).withOpacity(.5),
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(10.0)),
            border: Border.all(
              color: Colors.white.withOpacity(.8), // La couleur de la bordure
              width: 2, // La largeur de la bordure
            ),
          ),
          child: Material(
            color: const Color.fromARGB(255, 245, 232, 213).withOpacity(.7),
            child: Form(
                key: formKey,
                child: Column(
                  children: [
                    //sizedbox
                    const SizedBox(
                      height: 30,
                    ),

                    // Entrer les informations necessaires
                    const Text(
                      textAlign: TextAlign.center,
                      'Veillez entrer les informations\n nécessaires',
                      style: TextStyle(
                          color: Color(0xFF007549),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),

                    //sizebox
                      const SizedBox(
                        height: 20,
                      ),

                    Container(
                      height: 116,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.8),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 4,
                            spreadRadius: 3,
                            offset: const Offset(0, 2)
                          )
                        ]
                      ),
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                            children: [
                              //sizebox
                          const SizedBox(
                            height: 10,
                          ),
                          
                          //Entrer le montant
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10, left: 30, right: 30),
                            child: TextFormField(
                              //style: const TextStyle(color: Color(0xFFc75c0c),),
                              controller: controle,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFc75c0c),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFc75c0c),
                                  ),
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFFc75c0c),
                                ),
                                
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color(0xFF007549),
                                )),
                                errorStyle: TextStyle(
                                  color: Color(0xFF007549),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                  width: 3,
                                  color: Color(0xFFc75c0c),
                                )),
                                labelText: 'Entrez le montant',
                              ),
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^[0-9]{4,10}$').hasMatch(value)) {
                                  return 'Veuillez entrer un montant correct';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    

                    //sizebox
                    const SizedBox(
                      height: 20,
                    ),

                    //bouton de confirmation
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //Bouton annuler
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: const Color(0xFF007549)),
                              color: Colors.white,
                            ),
                            child: const Text(
                              'Annuler',
                              style: TextStyle(
                                  color: Color(0xFF007549),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),

                        //bouton valider..................................
                        InkWell(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Get.back();
                              //Boite de dialogue pour entrer le code PIN........................................
                              Get.defaultDialog(
                                barrierDismissible: true,
                                buttonColor: const Color(0xFF007549),
                                backgroundColor: const Color(0xFFf7efe4),
                                cancelTextColor: const Color(0xFF007549),
                                confirmTextColor: Colors.white,
                                textCancel: 'Annuler',
                                textConfirm: "Valider",
                                title: 'Confirmation de retrait',
                                titlePadding: const EdgeInsets.only(top: 20),
                                titleStyle: const TextStyle(
                                    color: Color(0xFFc75c0c),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                content: Form(
                                  key: formKey2,
                                  child: //Entrer le code PIN....................................
                                      Container(
                                    height: 250,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(.4),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 84, 84, 84)
                                                .withOpacity(.1),
                                            blurRadius: 4,
                                            spreadRadius: 1,
                                            offset: const Offset(0, 2),
                                          )
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            //sizedbox
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Vous êtes sur le point d\'éffecrtuer un retrait de ${controle.text} sur votre compte Sahel Money',
                                              
                                            ),
                                            //sizedbox
                                            const SizedBox(
                                              height: 10,
                                            ),

                                            //veillez entrer le code PIN pour confirmer
                                            const Text(
                                              'Veillez entrer le code PIN pour confirmer',
                                              style: TextStyle(
                                                  //color: Color(0xFF007549),
                                                  fontWeight: FontWeight.bold),
                                            ),

                                            //sizedbox
                                            const SizedBox(
                                              height: 10,
                                            ),

                                            //Zone pour entrer le PIN
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 25, left: 30, right: 30),
                                              child: TextFormField(
                                                //style: const TextStyle(color: Color(0xFF007549),),
                                                cursorColor:
                                                    const Color(0xFFc75c0c),
                                                controller: control,
                                                //cursorColor: Theme.of(context).primaryColor,
                                                keyboardType:
                                                    TextInputType.phone,
                                                decoration:
                                                    const InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFc75c0c),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFc75c0c),
                                                    ),
                                                  ),
                                                  labelStyle: TextStyle(
                                                    color: Color(0xFFc75c0c),
                                                  ),

                                                  errorBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                    color: Color(0xFF007549),
                                                  )),
                                                  errorStyle: TextStyle(
                                                    color: Color(0xFF007549),
                                                  ),
                                                  //labelStyle: Theme.of(context).textTheme.bodyMedium,
                                                  focusColor: Color(0xFFc75c0c),
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                    width: 3,
                                                    color: Color(0xFFc75c0c),
                                                  )),
                                                  labelText:
                                                      'Entrez votre code PIN',
                                                ),
                                                validator: (value) {
                                                  if (value!.isEmpty ||
                                                      !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\S\./0-9]+$')
                                                          .hasMatch(value)) {
                                                    return 'Veuillez entrer un code correct';
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                onConfirm: () {
                                  if (formKey2.currentState!.validate()) {
                                    Get.back();
                                    //boite de dialogue pour le message de fin d'envoi...........................
                                    Get.defaultDialog(
                                      buttonColor: const Color(0xFF007549),
                                      backgroundColor: const Color(0xFFf7efe4),
                                      confirmTextColor: Colors.white,
                                      textConfirm: "OK",
                                      title: 'Félicitations',
                                      titlePadding:
                                          const EdgeInsets.only(top: 20),
                                      titleStyle: const TextStyle(
                                          color: Color(0xFFc75c0c),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      middleText:
                                          'Vous venez d\'éffectuer un retrait d\'un montant de ${controle.text} de votre compte Sahel Money',
                                      onConfirm: () {
                                        Get.back();
                                        //afficharge du rapport de retrait effectué
                                        context.read<BlocBloc12>().add(retrait_confirm(val: true));
                                        context.read<BlocBloc3>().add(Barre_navigation(element_body: const Detail_retrait(), element_appbar: appbar_home()));
                                        // BlocBuilder<BlocBloc3, Barre_navigation_satate>(
                                        //   builder: (context, state) {
                                        //     return Container();
                                        //   },
                                        // );
                                      },
                                    );
                                  }
                                },
                              );
                            
                              }
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
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
                              'Valider',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //sizedbox
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                )),
          ),
        ),
      ),
    ));
  
  
  }

}

// Widget retrait(){
//   return const Center(child: Text('retrait'),);
// }