import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_state.dart';
import 'package:sizer/sizer.dart';

import '../../features/bloc/presentation/bloc/bloc_bloc.dart';
import 'banques/pays.dart';

class envoie extends StatefulWidget {
  const envoie({super.key});

  @override
  State<envoie> createState() => _envoieState();
}

class _envoieState extends State<envoie> {
  TextEditingController controle = TextEditingController();
  TextEditingController controles = TextEditingController();
  TextEditingController control = TextEditingController();
//String control2 = controle.text;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final List<String> mode_transfert = [
    'Sahel Money',
    'Mobile Money',
    'Banques'
  ];

  String current_option = "";

  @override
  Widget build(BuildContext context) {
    //double h = MediaQuery.of(context).size.height;
    //double w = MediaQuery.of(context).size.width;
    return Center(
      child: Column(children: [
        //sizedbox
        SizedBox(
          height: 4.h,
        ),

        //selection du mode d'envoie
        Text(
          'Veillez sélectionner le mode d\'envoie',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
            color: const Color(0xFFc75c0c),
          ),
        ),

        //sizedbox
        SizedBox(
          height: 4.h,
        ),

        //modes utilisés
        BlocBuilder<BlocBloc6, Modes_envoie_state>(
          builder: (context, state) {
            return Column(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 6.h,
                        width: 42.w,
                        child: ListTile(
                            leading: Radio(
                              focusNode: FocusNode(),
                              value: mode_transfert[0],
                              groupValue: state.mode == mode_transfert[0]
                                  ? mode_transfert[0]
                                  : '',
                              onChanged: (value) {
                                context
                                    .read<BlocBloc6>()
                                    .add(Modes_envoie(mode: mode_transfert[0]));
                              },
                            ),
                            title: Text(
                              mode_transfert[0],
                              style: TextStyle(
                                  fontSize: 10.sp, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 6.h,
                          width: 42.w,
                          child: ListTile(
                              leading: Radio(
                                value: mode_transfert[1],
                                groupValue: state.mode == mode_transfert[1]
                                    ? mode_transfert[1]
                                    : '',
                                onChanged: (value) {
                                  context.read<BlocBloc6>().add(
                                      Modes_envoie(mode: mode_transfert[1]));
                                },
                              ),
                              title: Text(
                                mode_transfert[1],
                                style: TextStyle(
                                    fontSize: 10.sp, fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 240),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 6.h,
                          width: 52.w,
                          child: ListTile(
                              leading: Radio(
                                value: mode_transfert[2],
                                groupValue: state.mode == mode_transfert[2]
                                    ? mode_transfert[2]
                                    : '',
                                onChanged: (value) {
                                  context.read<BlocBloc6>().add(
                                      Modes_envoie(mode: mode_transfert[2]));
                                },
                              ),
                              title: Text(
                                mode_transfert[2],
                                style: TextStyle(
                                    fontSize: 10.sp, fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 6.h,
                ),

                //bouton d'envoie.....................................
                GestureDetector(
                  onTap: () {
                    //boite de dialogue pour entrer le numero et le montant............................................
                    if (state.mode == mode_transfert[2]) {
                      context.read<BlocBloc5>().add(
                          Visibility_services(service: const Choix_pays()));
                    } else {
                      envoi();
                    }
                  },
                  child: Container(
                    height: 6.h,
                    width: 50.w,
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
                    child: Text(
                      'Effectuer un Envoie',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ]),
    );
  }

  Future envoi() async {
    //boite de dialogue pour entrer le numero et le montant............................................
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
                    SizedBox(
                      height: 3.h,
                    ),

                    // Entrer les informations necessaires
                    Text(
                      textAlign: TextAlign.center,
                      'Veillez entrer les informations\n nécessaires',
                      style: TextStyle(
                          color: const Color(0xFF007549),
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),

                    //sizebox
                    SizedBox(
                      height: 2.h,
                    ),

                    Container(
                      height: 27.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.8),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 4,
                                spreadRadius: 3,
                                offset: const Offset(0, 2))
                          ]),
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                            children: [
                              //Entrer le numero
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 25, left: 30, right: 30),
                                child: TextFormField(
                                  //style: const TextStyle(color: Color(0xFF007549),),
                                  cursorColor: const Color(0xFFc75c0c),
                                  controller: controle,
                                  //cursorColor: Theme.of(context).primaryColor,
                                  keyboardType: TextInputType.phone,
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
                                    //labelStyle: Theme.of(context).textTheme.bodyMedium,
                                    focusColor: Color(0xFFc75c0c),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      width: 3,
                                      color: Color(0xFFc75c0c),
                                    )),
                                    labelText: 'Entrez le numéro de téléphone',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\S\./0-9]+$')
                                            .hasMatch(value)) {
                                      return 'Veuillez entrer un numero correct';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),

                              //sizebox
                              SizedBox(
                                height: 1.h,
                              ),

                              //Entrer le montant
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 30, right: 30),
                                child: TextFormField(
                                  //style: const TextStyle(color: Color(0xFFc75c0c),),
                                  controller: controles,
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
                                        !RegExp(r'^[0-9]{4,10}$')
                                            .hasMatch(value)) {
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
                    SizedBox(
                      height: 2.h,
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
                            height: 4.h,
                            width: 25.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: const Color(0xFF007549)),
                              color: Colors.white,
                            ),
                            child: Text(
                              'Annuler',
                              style: TextStyle(
                                  color: Color(0xFF007549),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp),
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
                                title: 'Confirmation d\'envoi',
                                titlePadding: const EdgeInsets.only(top: 20),
                                titleStyle: const TextStyle(
                                    color: Color(0xFFc75c0c),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                content: Form(
                                  key: formKey2,
                                  child: //Entrer le code PIN....................................
                                      Container(
                                    height: 220,
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
                                              'Vous êtes sur le point d\'éffecrtuer un envoi de ${controles.text} via le numéro ${controle.text}',
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
                                          'Vous venez d\'éffectuer un envoi d\'un montant de ${controles.text} de votre compte Sahel Money vers votre compte mobile ${controle.text} ',
                                      onConfirm: () {
                                        Get.back();
                                      },
                                    );
                                  }
                                },
                              );
                            }
                          },
                          child: Container(
                            height: 4.h,
                            width: 25.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF007549),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xFF007549)
                                          .withOpacity(.255),
                                      blurRadius: 3,
                                      spreadRadius: 3,
                                      offset: const Offset(0, 2))
                                ]),
                            child: Text(
                              'Valider',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //sizedbox
                    SizedBox(
                      height: 4.h,
                    ),
                  ],
                )),
          ),
        ),
      ),
    ));
  }
}

// Widget envoie(){
//   return const Center(child: Text('envoie'),);
// }