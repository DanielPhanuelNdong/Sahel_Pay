import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sizer/sizer.dart';

import 'resume_couverture.dart';

class reclamation extends StatefulWidget {
  const reclamation({super.key});

  @override
  State<reclamation> createState() => _reclamationState();
}

class _reclamationState extends State<reclamation> {
  final formkey = GlobalKey<FormState>();
  TextEditingController date_ad_controller = TextEditingController();
  TextEditingController date_end_controller = TextEditingController();
  TextEditingController cause_controller = TextEditingController();
  TextEditingController etablissement_controller = TextEditingController();
  String? dropdowValue;
  List<XFile> select_Image1 = [];
  List<XFile?> selectedImages = [];
  List<XFile?> selectedImages2 = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Text(
              textAlign: TextAlign.center,
              'La soumission de fausses informations est considérée comme frauduleuse et punie par la loi !!!',
              style: TextStyle(
                  color: const Color(0xFF007549),
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .98,
              width: MediaQuery.of(context).size.width * .98,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: const Color(0xFFc75c0c).withOpacity(.5), width: 2),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: const Offset(2, 2))
                  ]),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Veuillez entrer les informations nécessaires',
                      style: TextStyle(
                          color: const Color(0xFFc75c0c),
                          fontWeight: FontWeight.bold,
                          fontSize: 11.sp),
                    ),

                    SizedBox(
                      height: 2.h,
                    ),

                    //Date d'admission
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: date_ad_controller,
                        keyboardType: TextInputType.datetime,
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
                          labelText: 'Date d\'admission',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Entrer une date correcte';
                          } else {
                            return null;
                          }
                        },
                        onTap: () async {
                          DateTime? piked_date = await showDatePicker(
                              context: context,
                              firstDate: DateTime(1950),
                              lastDate: DateTime(2100));

                          if (piked_date != null) {
                            setState(() {
                              date_ad_controller.text =
                                  DateFormat('dd-MM-yyyy').format(piked_date);
                            });
                          }
                        },
                      ),
                    ),

                    SizedBox(
                      height: 2.h,
                    ),

                    //Date de sortie
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: date_end_controller,
                        keyboardType: TextInputType.datetime,
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
                          labelText: 'Date de sortie',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Entrer une date correcte';
                          } else {
                            return null;
                          }
                        },
                        onTap: () async {
                          DateTime? piked_date = await showDatePicker(
                              context: context,
                              firstDate: DateTime(1950),
                              lastDate: DateTime(2100));

                          if (piked_date != null) {
                            setState(() {
                              date_end_controller.text =
                                  DateFormat('dd-MM-yyyy').format(piked_date);
                            });
                          }
                        },
                      ),
                    ),

                    SizedBox(
                      height: 3.h,
                    ),

                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: DropdownButtonFormField(
                          hint: Text(
                            'Sélectionnez la cause d\'hospitalisation',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          disabledHint: const Text(''),
                          value: dropdowValue,
                          items: const [
                            DropdownMenuItem(
                                value: 'Transport', child: Text("Transport")),
                            DropdownMenuItem(
                                value: 'Blessures dues à la violance',
                                child: Text("Blessures dues à la violance")),
                            DropdownMenuItem(
                                value: 'Guerre ou trouble',
                                child: Text("Guerre ou trouble")),
                            DropdownMenuItem(
                                value: 'Désastre naturel',
                                child: Text("Désastre naturel")),
                            DropdownMenuItem(
                                value: 'Autres', child: Text("Autres")),
                          ],
                          onChanged: (String? newvalue) {
                            setState(() {
                              dropdowValue = newvalue;
                            });
                          },
                          validator: (String? value) {
                            if (value != 'Transport' &&
                                value != 'Blessures dues à la violance' &&
                                value != 'Guerre ou trouble' &&
                                value != 'Désastre naturel' &&
                                value != 'Autres') {
                              return 'Veuillez sélectionner la cause d\'hospitalisation';
                            } else {
                              return null;
                            }
                          },
                        )),

                    SizedBox(
                      height: 3.h,
                    ),

                    //Etablissement médical
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: etablissement_controller,
                        //keyboardType: TextInputType.datetime,
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
                          labelText: 'Etablissement médical',
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return 'Entrer un Etablissement correct';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    SizedBox(
                      height: 2.h,
                    ),

                    //Photos du carnet d'hospitalisation
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Photos du carnet d\'hospitalisation',
                              style: TextStyle(
                                  color: const Color(0xFF007549),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.sp),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              '(La première de couverture et toutes les\n pages concernées)',
                              style: TextStyle(
                                  color: const Color(0xFFc75c0c),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // IconButton(
                            //     onPressed: () {
                            //       filmer_images2();
                            //     },
                            //     icon: const Icon(Icons.camera_alt)),
                            IconButton(
                                onPressed: () {
                                  filmer_images2();
                                },
                                icon: const Icon(Icons.browser_updated)),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 12.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: const Color(0xFF007549),
                      )),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: selectedImages2.map((image) {
                              return image != null ? Container(
                                height: 10.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 225, 198, 198),
                                )),
                                child: Image.file(File(image.path)),
                              ) : const SizedBox();
                            }).toList(),
                          ),
                        ),
                    ),

                    SizedBox(
                      height: 1.h,
                    ),

                    //Photos de CNI ou acte de naissance
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Photos de la CNI ou acte de naissance ',
                              style: TextStyle(
                                  color: const Color(0xFF007549),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.sp),
                            ),
                            Text(
                              '(acte de naissance pour moins de 18 ans)',
                              style: TextStyle(
                                  color: const Color(0xFFc75c0c),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // IconButton(
                            //     onPressed: () {
                            //       telecharge_images1();
                            //     },
                            //     icon: const Icon(Icons.camera_alt)),
                            IconButton(
                                onPressed: () {
                                  telecharge_images1();
                                },
                                icon: const Icon(Icons.browser_updated)),
                          ],
                        ),
                      ],
                    ),
                    Container(
                        height: 12.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: const Color(0xFF007549),
                        )),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: selectedImages.map((image) {
                              return image != null ? Container(
                                height: 10.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 225, 198, 198),
                                )),
                                child: Image.file(File(image.path)),
                              ) : const SizedBox();
                            }).toList(),
                          ),
                        )

                        // ListView(
                        //   scrollDirection: Axis.horizontal,
                        //   children: selectedImages.map((image) {
                        //     return Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: image != null
                        //           ? Image.file(File(image.path))
                        //           : Container(),
                        //     );
                        //   }).toList(),
                        // ),

                        // Container(
                        //         height: 10.h,
                        //   width: 20.w,
                        //   decoration: BoxDecoration(
                        //       border: Border.all(
                        //     color: const Color.fromARGB(255, 225, 198, 198),
                        //   )),
                        //       )
                        ),

                    SizedBox(
                      height: 3.h,
                    ),

                    Bounce(
                      duration: const Duration(milliseconds: 500),
                      onPressed: () {},
                      child: Container(
                        height: 4.h,
                        width: 85.w,
                        decoration: const BoxDecoration(
                          color: Color(0xFFff7900),
                          //borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Valider',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 13.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future telecharge_images1() async {
    final ImagePicker picker = ImagePicker();
    //select_Image1 = await picker.pickMultiImage();
    final List<XFile> image1 = await picker.pickMultiImage();

    setState(() {
      if (image1.isNotEmpty) {
        selectedImages = image1;
      }
    });
  }

  // ignore: non_constant_identifier_names
  Future filmer_images2() async {
    final ImagePicker picker = ImagePicker();
    //select_Image1 = await picker.pickMultiImage();
    final List<XFile> image2 = await picker.pickMultiImage();

    setState(() {
      if (image2.isNotEmpty) {
        selectedImages2 = image2;
      }
    });

    // setState(() {
    //   if (return_camera2 != null){
    //     select_Image1 = File(return_camera2.path );
    //   }

    // });
  }
}

class reclamation1_appbar extends StatefulWidget {
  const reclamation1_appbar({super.key});

  @override
  State<reclamation1_appbar> createState() => _reclamation1_appbarState();
}

class _reclamation1_appbarState extends State<reclamation1_appbar> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
          onPressed: () {
            context.read<BlocBloc3>().add(Barre_navigation(
                element_body: const resume_couverture(),
                element_appbar: const Souscrir_pour_moi()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      SizedBox(
        width: 12.w,
      ),
      Image.asset(height: 16.h, width: 60.w, 'images/Sahel_Assurance.png')
    ]);
  }
}
