import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class mes_informations extends StatefulWidget {
  const mes_informations({super.key});

  @override
  State<mes_informations> createState() => _mes_informationsState();
}

class _mes_informationsState extends State<mes_informations> {
  final formkey = GlobalKey<FormState>();
  TextEditingController nom_controller = TextEditingController();
  TextEditingController phone_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Mes informations',
              style: TextStyle(
                  color: const Color(0xFFc75c0c),
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 40.h,
              width: 90.w,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color(0xFFc75c0c).withOpacity(.5), width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text('Nom :'),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text('Prénom :'),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text('Civilité :'),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text('Sexe :'),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text('Numéro de téléphone :'),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text('Forfait :'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Bounce(
              duration: const Duration(milliseconds: 500),
              onPressed: () {
                
                Get.defaultDialog(
                  title: 'Les informations sur\n le bénéficiaire',
                  titleStyle: TextStyle(
                      color: const Color(0xFFc75c0c),
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp),
                  titlePadding: EdgeInsets.only(top: 4.h),
                  textConfirm: 'Valider',
                  textCancel: 'Annuler',
                  buttonColor: const Color(0xFFc75c0c),
                  onConfirm: () {
                    if (formkey.currentState!.validate()) {
                      Get.back();
                    }
                  },
                  content: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1.h,
                        ),
        
                        //Nom complet
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            controller: nom_controller,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIconColor: const Color(0xFFc75c0c),
                              errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xFFc75c0c),
                              )),
                              errorStyle: const TextStyle(
                                color: Color(0xFFc75c0c),
                              ),
                              labelStyle: Theme.of(context).textTheme.bodyMedium,
                              focusColor: Theme.of(context).primaryColor,
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                              )),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                              )),
                              labelText: 'Nom du bénéficiaire',
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                return 'Entrer un Nom correct';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
        
                        SizedBox(
                          height: 3.h,
                        ),
        
                        //Numéro de téléphone
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            controller: phone_controller,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              suffixIconColor: const Color(0xFFc75c0c),
                              errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xFFc75c0c),
                              )),
                              errorStyle: const TextStyle(
                                color: Color(0xFFc75c0c),
                              ),
                              labelStyle: Theme.of(context).textTheme.bodyMedium,
                              focusColor: Theme.of(context).primaryColor,
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                              )),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                              )),
                              labelText: 'Numéro de téléphone',
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[1-9]+$').hasMatch(value)) {
                                return 'Entrer un Numéro correct';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
        
                        SizedBox(
                          height: 3.h,
                        ),
                      ],
                    ),
                  ),
                );
                // if(nom_controller.text.isNotEmpty && phone_controller.text.isNotEmpty){
                //   Get.defaultDialog(
                //     title: 'Attention !!!',
                //     titleStyle: const TextStyle(
                //       color: Color(0xFFc75c0c),
                //       fontWeight: FontWeight.bold,
                //       fontSize: 22),
                //       middleText: 'Voulez-vous changer les informations sur votre bénéficiaire ??',
                //       textConfirm: 'OUI',
                //       textCancel: 'NON',
                //       buttonColor: const Color(0xFFc75c0c),
                //       onConfirm: () {
                //         Get.defaultDialog(
                //   title: 'Les informations sur le bénéficiaire',
                //   titleStyle: const TextStyle(
                //       color: Color(0xFFc75c0c),
                //       fontWeight: FontWeight.bold,
                //       fontSize: 22),
                //   titlePadding: const EdgeInsets.only(top: 30),
                //   textConfirm: 'Valider',
                //   textCancel: 'Annuler',
                //   buttonColor: const Color(0xFFc75c0c),
                //   onConfirm: () {
                //     if (formkey.currentState!.validate()) {
                //       Get.back();
                //     }
                //   },
                //   content: Form(
                //     key: formkey,
                //     child: Column(
                //       children: [
                //         SizedBox(
                //           height: 1.h,
                //         ),
        
                //         //Nom complet
                //         Padding(
                //           padding: const EdgeInsets.symmetric(horizontal: 20),
                //           child: TextFormField(
                //             controller: nom_controller,
                //             keyboardType: TextInputType.text,
                //             decoration: InputDecoration(
                //               suffixIconColor: const Color(0xFFc75c0c),
                //               errorBorder: const OutlineInputBorder(
                //                   borderSide: BorderSide(
                //                 color: Color(0xFFc75c0c),
                //               )),
                //               errorStyle: const TextStyle(
                //                 color: Color(0xFFc75c0c),
                //               ),
                //               labelStyle: Theme.of(context).textTheme.bodyMedium,
                //               focusColor: Theme.of(context).primaryColor,
                //               border: UnderlineInputBorder(
                //                   borderSide: BorderSide(
                //                 color: Theme.of(context).primaryColor,
                //               )),
                //               focusedBorder: UnderlineInputBorder(
                //                   borderSide: BorderSide(
                //                 color: Theme.of(context).primaryColor,
                //               )),
                //               labelText: 'Nom du bénéficiaire',
                //             ),
                //             validator: (value) {
                //               if (value!.isEmpty ||
                //                   !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                //                 return 'Entrer un Nom correct';
                //               } else {
                //                 return null;
                //               }
                //             },
                //           ),
                //         ),
        
                //         SizedBox(
                //           height: 3.h,
                //         ),
        
                //         //Numéro de téléphone
                //         Padding(
                //           padding: const EdgeInsets.symmetric(horizontal: 20),
                //           child: TextFormField(
                //             controller: phone_controller,
                //             keyboardType: TextInputType.phone,
                //             decoration: InputDecoration(
                //               suffixIconColor: const Color(0xFFc75c0c),
                //               errorBorder: const OutlineInputBorder(
                //                   borderSide: BorderSide(
                //                 color: Color(0xFFc75c0c),
                //               )),
                //               errorStyle: const TextStyle(
                //                 color: Color(0xFFc75c0c),
                //               ),
                //               labelStyle: Theme.of(context).textTheme.bodyMedium,
                //               focusColor: Theme.of(context).primaryColor,
                //               border: UnderlineInputBorder(
                //                   borderSide: BorderSide(
                //                 color: Theme.of(context).primaryColor,
                //               )),
                //               focusedBorder: UnderlineInputBorder(
                //                   borderSide: BorderSide(
                //                 color: Theme.of(context).primaryColor,
                //               )),
                //               labelText: 'Numéro de téléphone',
                //             ),
                //             validator: (value) {
                //               if (value!.isEmpty ||
                //                   !RegExp(r'^[1-9]+$').hasMatch(value)) {
                //                 return 'Entrer un Numéro correct';
                //               } else {
                //                 return null;
                //               }
                //             },
                //           ),
                //         ),
        
                //         SizedBox(
                //           height: 3.h,
                //         ),
                //       ],
                //     ),
                //   ),
                // );
                
                //       },
                //   );
                // }
                },
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: const BoxDecoration(
                  color: Color(0xFFff7900),
                  //borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  'Mon Bénéficiaire',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12.sp),
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Visibility(
              visible: nom_controller.text.isEmpty ? false : true,
              child: Text('Nom du Bénéficiaire',
                style: TextStyle(
                    color: const Color(0xFFc75c0c),
                    fontWeight: FontWeight.w500,
                    fontSize: 11.sp),),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(nom_controller.text),
            SizedBox(
              height: 3.h,
            ),
            Visibility(
              visible: phone_controller.text.isEmpty ? false : true,
              child: Text(
                'Numéro du Bénéficiaire',
                style: TextStyle(
                    color: const Color(0xFFc75c0c),
                    fontWeight: FontWeight.w500,
                    fontSize: 11.sp),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(phone_controller.text),
          ],
        ),
      ),
    );
  }
}
