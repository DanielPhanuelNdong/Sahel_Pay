import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sahel_pay/Acceuil/index.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_state.dart';

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
    Color couleur2 = const Color.fromARGB(255, 4, 209, 144);
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              height: 160,
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
              child: Center(
                child: Stack(children: [
                  Column(
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        '+098564669579695',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 100,
                              width: 220,
                              child: ListTile(
                                leading: const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  backgroundImage:
                                      AssetImage('images/avatar.png'),
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
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            BlocBuilder<BlocBloc4, Visibility_solde_state>(
                              builder: (context, state) {
                                return Container(
                                  height: 100,
                                  width: 240,
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.folder_copy_outlined,
                                      size: 45,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    title: const Text(
                                      'Votre Solde:',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    subtitle: Text(
                                      state.solde,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 340, top: 110),
                    child: BlocBuilder<BlocBloc4, Visibility_solde_state>(
                      builder: (context, state) {
                        return BlocSelector<BlocBloc4, Visibility_solde_state,
                            bool>(
                          selector: (state) {
                            return state.solde == "XXXXXX" ? false : true;
                          },
                          builder: (context, isSelect) {
                            return IconButton(
                              onPressed: () {
                                context
                                    .read<BlocBloc4>()
                                    .add(Visibility_solde(solde: state.solde));
                              },
                              icon: Icon(
                                isSelect
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  )
                ]),
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
                    padding: const EdgeInsets.only(
                        top: 2, left: 8, right: 8, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //Envoyer
                        Column(
                          children: [
                            BlocSelector<BlocBloc5, Visibility_services_state,
                                bool>(
                              selector: (state) {
                                return state.service is envoie;
                              },
                              builder: (context, state) {
                                return Bounce(
                                  onPressed: () {
                                    context.read<BlocBloc5>().add(
                                        Visibility_services(
                                            service: const envoie()));
                                  },
                                  duration: const Duration(milliseconds: 500),
                                  child: Container(
                                    height: 55,
                                    width: 55,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(.15),
                                          blurRadius: 5,
                                          spreadRadius: 3,
                                          //offset: const Offset(0, 3)
                                        )
                                      ],
                                      color: state ? couleur2 : couleur1,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                    ),
                                    child: Image.asset('images/envoie.png'),
                                  ),
                                );
                              },
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
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Effectuer\n Envoie',
                                    style: TextStyle(
                                        color: couleur2,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                );
                              },
                            )
                          ],
                        ),

                        //sizedbox
                        const SizedBox(
                          width: 35,
                        ),

                        //retrait
                        Column(
                          children: [
                            BlocSelector<BlocBloc5, Visibility_services_state,
                                bool>(
                              selector: (state) {
                                return state.service is retrait;
                              },
                              builder: (context, state) {
                                return Bounce(
                                  onPressed: () {
                                    context.read<BlocBloc5>().add(
                                        Visibility_services(
                                            service: retrait()));
                                  },
                                  duration: const Duration(milliseconds: 500),
                                  child: Container(
                                    height: 55,
                                    width: 55,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(.15),
                                          blurRadius: 5,
                                          spreadRadius: 3,
                                          //offset: const Offset(0, 3)
                                        )
                                      ],
                                      color: state ? couleur2 : couleur1,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                    ),
                                    child: Image.asset('images/retrait.png'),
                                  ),
                                );
                              },
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
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Effectuer\n Retrait',
                                    style: TextStyle(
                                        color: couleur2,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                );
                              },
                            )
                          ],
                        ),

                        //sizedbox
                        const SizedBox(
                          width: 35,
                        ),

                        //achat unites
                        Column(
                          children: [
                            BlocSelector<BlocBloc5, Visibility_services_state,
                                bool>(
                              selector: (state) {
                                return state.service is achat_unites;
                              },
                              builder: (context, state) {
                                return Bounce(
                                  duration: const Duration(milliseconds: 500),
                                  onPressed: () {
                                    context.read<BlocBloc5>().add(Visibility_services(
                              service: const achat_unites()));
                                  },
                                  child: Container(
                                    height: 55,
                                    width: 55,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(.15),
                                          blurRadius: 5,
                                          spreadRadius: 3,
                                          //offset: const Offset(0, 3)
                                        )
                                      ],
                                      color: state ? couleur2 : couleur1,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                    ),
                                    child:
                                        Image.asset('images/achat_unites.png'),
                                  ),
                                );
                              },
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
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Achat\n Unités',
                                    style: TextStyle(
                                        color: couleur2,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                );
                              },
                            )
                          ],
                        ),

                        //sizedbox
                        const SizedBox(
                          width: 35,
                        ),

                        //payer_facture
                        Column(
                          children: [
                            BlocSelector<BlocBloc5, Visibility_services_state,
                                bool>(
                              selector: (state) {
                                return state.service is payer_facture;
                              },
                              builder: (context, state) {
                                return Bounce(
                                  duration: const Duration(milliseconds: 500),
                                  onPressed: () {
                                    context.read<BlocBloc5>().add(
                              Visibility_services(service: const payer_facture()));
                                  },
                                  child: Container(
                                    height: 55,
                                    width: 55,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(.15),
                                          blurRadius: 5,
                                          spreadRadius: 3,
                                          //offset: const Offset(0, 3)
                                        )
                                      ],
                                      color: state ? couleur2 : couleur1,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                    ),
                                    child:
                                        Image.asset('images/payer_facture.png'),
                                  ),
                                );
                              },
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
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Paiement\n Facture',
                                    style: TextStyle(
                                        color: couleur2,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            //sizedbox
            const SizedBox(
              height: 7,
            ),

            //......................................Espace d'afficharge
            BlocBuilder<BlocBloc5, Visibility_services_state>(
              builder: (context, state) {
                return Container(
                  height: h * .37,
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
