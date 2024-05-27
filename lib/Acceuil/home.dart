import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahel_pay/Acceuil/index.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    String titre = 'Bienvenu !';
    Color couleur1 = const Color(0xFF007549);
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              height: 150,
              width: w,
              decoration: BoxDecoration(
                  color: const Color(0xFF007549),
                  //Color(0xFF045B0D).withOpacity(.5),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: const Offset(0, 2))
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        '+098564669579695',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: 200,
                              child: ListTile(
                                leading: const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                      backgroundImage: AssetImage('images/avatar.png'),
                                  // child: Text(
                                  //   titre[0].toUpperCase(),
                                  //   style: const TextStyle(
                                  //       color: Color(0xFF007549),
                                  //       fontSize: 22,
                                  //       fontWeight: FontWeight.bold),
                                  // ),
                                ),
                                title: Text(
                                  titre,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                subtitle: const Text(
                                  'M. Clement Junior',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                            BlocBuilder<BlocBloc4, Visibility_solde_state>(
                              builder: (context, state) {
                                return Container(
                                  height: 100,
                                  width: 250,
                                  child: ListTile(
                                      leading: const Icon(
                                        Icons.folder_copy_outlined,
                                        size: 45,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      title: const Text(
                                        'Votre Solde est:',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color:
                                              Color.fromARGB(255, 255, 255, 255),
                                        ),
                                      ),
                                      subtitle: Text(
                                        state.solde,
                                        style: const TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 255, 255, 255),
                                        ),
                                      ),
                                      trailing: BlocSelector<BlocBloc4,
                                          Visibility_solde_state, bool>(
                                        selector: (state) {
                                          return state.solde == "XXXXXX"
                                              ? false
                                              : true;
                                        },
                                        builder: (context, isSelect) {
                                          return IconButton(
                                            onPressed: () {
                                              context.read<BlocBloc4>().add(
                                                  Visibility_solde(
                                                      solde: state.solde));
                                            },
                                            icon: Icon(
                                              isSelect
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                            ),
                                          );
                                        },
                                      )),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //sizedbox
            const SizedBox(
              height: 25,
            ),

            //...................................Nos Services
            const Text(
              'Nos Services',
              style: TextStyle(
                  color: //Color(0xFFFB5606),
                      Color(0xFFc75c0c),
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),

            //diviser
            const Divider(),

            //sizedbox
            const SizedBox(
              height: 5,
            ),

            //............................Les differents services
            BlocBuilder<BlocBloc5, Visibility_services_state>(
              builder: (context, state) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //Envoyer
                        GestureDetector(
                          onTap: () {
                            context
                                .read<BlocBloc5>()
                                .add(Visibility_services(service: envoie()));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 63,
                                width: 63,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: couleur1,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  // border: Border.all(
                                  //   color: const Color(0xFF045B0D),
                                  //   style: BorderStyle.solid,
                                  //   width: 2
                                  // ),
                                ),
                                child: Image.asset('images/envoie.png'),
                              ),
                              //sizedbox
                              const SizedBox(
                                height: 10,
                              ),
                              BlocSelector<BlocBloc5, Visibility_services_state,
                                  bool>(
                                selector: (state) {
                                  return state.service is envoie;
                                },
                                builder: (context, isSelected) {
                                  return Visibility(
                                    visible: isSelected,
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      'Effectuer\n Envoie',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),

                        //sizedbox
                        const SizedBox(
                          width: 35,
                        ),

                        //retrait
                        GestureDetector(
                          onTap: () {
                            context
                                .read<BlocBloc5>()
                                .add(Visibility_services(service: retrait()));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 63,
                                width: 63,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: couleur1,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  // border: Border.all(
                                  //   color: const Color(0xFF045B0D),
                                  //   style: BorderStyle.solid,
                                  //   width: 2
                                  // ),
                                ),
                                child: Image.asset('images/retrait.png'),
                              ),
                              //sizedbox
                              const SizedBox(
                                height: 10,
                              ),
                              BlocSelector<BlocBloc5, Visibility_services_state,
                                  bool>(
                                selector: (state) {
                                  return state.service is retrait;
                                },
                                builder: (context, isSelected) {
                                  return Visibility(
                                    visible: isSelected,
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      'Effectuer\n Retrait',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),

                        //sizedbox
                        const SizedBox(
                          width: 35,
                        ),

                        //achat unites
                        GestureDetector(
                          onTap: () {
                            context.read<BlocBloc5>().add(
                                Visibility_services(service: achat_unites()));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 63,
                                width: 63,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: couleur1,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  // border: Border.all(
                                  //   color: const Color(0xFF045B0D),
                                  //   style: BorderStyle.solid,
                                  //   width: 2
                                  // ),
                                ),
                                child: Image.asset('images/achat_unites.png'),
                              ),
                              //sizedbox
                              const SizedBox(
                                height: 10,
                              ),
                              BlocSelector<BlocBloc5, Visibility_services_state,
                                  bool>(
                                selector: (state) {
                                  return state.service is achat_unites;
                                },
                                builder: (context, isSelected) {
                                  return Visibility(
                                    visible: isSelected,
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      'Achat\n Unités',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),

                        //sizedbox
                        const SizedBox(
                          width: 35,
                        ),

                        //effectuer_payement
                        GestureDetector(
                          onTap: () {
                            context.read<BlocBloc5>().add(Visibility_services(
                                service: const effectuer_payement()));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 63,
                                width: 63,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: couleur1,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  // border: Border.all(
                                  //   color: const Color(0xFF045B0D),
                                  //   style: BorderStyle.solid,
                                  //   width: 2
                                  // ),
                                ),
                                child: Image.asset(
                                    'images/effectuer_payement.png'),
                              ),
                              //sizedbox
                              const SizedBox(
                                height: 10,
                              ),
                              BlocSelector<BlocBloc5, Visibility_services_state,
                                  bool>(
                                selector: (state) {
                                  return state.service is effectuer_payement;
                                },
                                builder: (context, isSelected) {
                                  return Visibility(
                                    visible: isSelected,
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      'Effectuer\n Payement',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),

                        //sizedbox
                        const SizedBox(
                          width: 35,
                        ),

                        //payer_facture
                        GestureDetector(
                          onTap: () {
                            context.read<BlocBloc5>().add(
                                Visibility_services(service: payer_facture()));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 63,
                                width: 63,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: couleur1,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  // border: Border.all(
                                  //   color: const Color(0xFF045B0D),
                                  //   style: BorderStyle.solid,
                                  //   width: 2
                                  // ),
                                ),
                                child: Image.asset('images/payer_facture.png'),
                              ),
                              //sizedbox
                              const SizedBox(
                                height: 10,
                              ),
                              BlocSelector<BlocBloc5, Visibility_services_state,
                                  bool>(
                                selector: (state) {
                                  return state.service is payer_facture;
                                },
                                builder: (context, isSelected) {
                                  return Visibility(
                                    visible: isSelected,
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      'Paiement\n Facture',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            //sizedbox
            const SizedBox(
              height: 5,
            ),

            //......................................Espace d'afficharge
            BlocBuilder<BlocBloc5, Visibility_services_state>(
              builder: (context, state) {
                return Container(
                  height: h * .33,
                  width: w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      //Color(0xFF045B0D).withOpacity(.5),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: const Offset(2, 0))
                      ]),
                  // BoxDecoration(
                  //   color: const Color.fromARGB(255, 255, 255, 255),
                  //   //borderRadius: const BorderRadius.all(Radius.circular(10)),
                  //   border: Border.all(
                  //     color: const Color(0xFF045B0D).withOpacity(.3),
                  //     width: .5,
                
                  //   )
                  // ),
                  child: state.service,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget appbar_home() {
  return Image.asset('images/Sahel__Pay1.png');
}
