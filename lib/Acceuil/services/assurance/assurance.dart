import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:sahel_pay/Acceuil/index.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/index.dart';

class assurance extends StatefulWidget {
  const assurance({super.key});

  @override
  State<assurance> createState() => _assuranceState();
}

class _assuranceState extends State<assurance> {
  List<String> assurances = ['Pour moi', 'Des proches'];
  // ignore: non_constant_identifier_names
  String Etat_assurance = '';
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return BlocBuilder<BlocBloc14, choix_assurance_state>(
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              height: screen_height,
              width: screen_width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 254, 220, 200),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 254, 220, 200),
                ]),
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 50,
                          width: screen_width,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              //color: Color(0xFF007549),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color(0xFF007549),
                                Color.fromARGB(255, 7, 165, 104),
                                Color.fromARGB(255, 134, 214, 183),
                              ])),
                        ),
                        Image.asset('images/img.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            if (state.assurance == assurances[0]) {
                              Get.defaultDialog(
                                title: 'Bravo !',
                                titleStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFff7900),
                                ),
                                content: const Text(
                                  textAlign: TextAlign.center,
                                  'Vous venez de vous à la couverture gratuite. Augmentez là en faisant plus de transactions Sahel Money vers Sahel Money ou achats de crédit',
                                  style: TextStyle(
                                      color: Color(0xFF007549),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                                barrierDismissible: false,
                                textConfirm: 'Continuer',
                                buttonColor: const Color(0xFF007549),
                                onConfirm: () {
                                  Get.back();
                                  context.read<BlocBloc3>().add(
                                      Barre_navigation(
                                          element_body:
                                              const resume_couverture(),
                                          element_appbar:
                                              const Souscrir_pour_moi()));
                                },
                              );
                            }
                          },
                          child: Container(
                            height: 35,
                            width: 250,
                            decoration: const BoxDecoration(
                                color: Color(0xFFff7900),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            alignment: Alignment.center,
                            child: const Text(
                              textAlign: TextAlign.center,
                              'Souscription',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        // Bounce(
                        //   duration: const Duration(milliseconds: 500),
                        //   onPressed: () {
                        //     if (state.assurance == assurances[0]) {
                        //       context.read<BlocBloc3>().add(Barre_navigation(
                        //           element_body: const reclamation(),
                        //           element_appbar: const Souscrir_pour_moi()));
                        //     }
                        //     if (state.assurance == assurances[1]) {
                        //       context.read<BlocBloc3>().add(Barre_navigation(
                        //           element_body: const reclamation2(),
                        //           element_appbar: const Souscrir_pour_moi()));
                        //     }

                        //   },
                        //   child: Container(
                        //     height: 35,
                        //     width: 250,
                        //     decoration: const BoxDecoration(
                        //         color: Color(0xFFff7900),
                        //         borderRadius:
                        //             BorderRadius.all(Radius.circular(30))),
                        //     alignment: Alignment.center,
                        //     child: const Text(
                        //       textAlign: TextAlign.center,
                        //       'Réclamation',
                        //       style: TextStyle(
                        //           fontWeight: FontWeight.bold,
                        //           color: Color.fromARGB(255, 255, 255, 255),
                        //           fontSize: 20),
                        //     ),
                        //   ),
                        // ),
                        Container(
                          height: 50,
                          width: screen_width,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              //color: Color(0xFF007549),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color.fromARGB(255, 255, 255, 255),
                                Color.fromARGB(255, 212, 248, 234),
                                Color.fromARGB(255, 134, 214, 183),
                                Color.fromARGB(255, 7, 165, 104),
                                Color(0xFF007549),
                              ])),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 290,
                      left: 60,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //pour moi............................
                          Center(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    context.read<BlocBloc14>().add(
                                        choix_assurance(
                                            assurance: assurances[0]));
                                  },
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: const Color.fromARGB(
                                                255, 4, 209, 144)
                                            .withOpacity(.7),
                                        radius: 55,
                                        child:
                                            Image.asset('images/bonhomme2.png'),
                                      ),
                                      Visibility(
                                        visible:
                                            state.assurance == assurances[0]
                                                ? true
                                                : false,
                                        child: Positioned(
                                          top: 50,
                                          left: 50,
                                          child:
                                              Image.asset('images/cocher.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'Pour moi',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 2, 154, 96),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),

                          const SizedBox(
                            width: 70,
                          ),

                          //des proches.....................................
                          Center(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context.read<BlocBloc14>().add(
                                        choix_assurance(
                                            assurance: assurances[1]));
                                  },
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: const Color.fromARGB(
                                                255, 4, 209, 144)
                                            .withOpacity(.7),
                                        radius: 55,
                                        child:
                                            Image.asset('images/bonhomme1.png'),
                                      ),
                                      Visibility(
                                        visible:
                                            state.assurance == assurances[1]
                                                ? true
                                                : false,
                                        child: Positioned(
                                          top: 50,
                                          left: 50,
                                          child:
                                              Image.asset('images/cocher.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'Des proches',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 2, 154, 96),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  // Positioned(
                  //     top: 290,
                  //     left: 225,
                  //     child:
                  //     ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

//Appbar.........................................................................................

class appbar_assurance extends StatefulWidget {
  const appbar_assurance({super.key});

  @override
  State<appbar_assurance> createState() => _appbar_assuranceState();
}

// ignore: camel_case_types
class _appbar_assuranceState extends State<appbar_assurance> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
          onPressed: () {
            context.read<BlocBloc3>().add(Barre_navigation(
                element_body: const HomePage(), element_appbar: appbar_home()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      const SizedBox(
        width: 50,
      ),
      Image.asset(height: 150, width: 250, 'images/Sahel_Assurance.png')
    ]);
  }
}

// Widget appbar_assurance() {
//   return Image.asset('images/Sahel_Assurance.png');
// }
