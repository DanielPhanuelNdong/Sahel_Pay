import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    String titre = 'Mon Nom est ici';
    return Column(
      children: [
        Container(
          height: 150,
          width: w,
          decoration: BoxDecoration(
              color: Colors.white,
              //Color(0xFF045B0D).withOpacity(.5),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(0, 2))
              ]),
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 216,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: const Color(0xFFAF1C04),
                        child: Text(
                          titre[0].toUpperCase(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      title: Text(
                        titre,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: const Text(
                        'mon Numero ici',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<BlocBloc4, Visibility_solde_state>(
                    builder: (context, state) {
                      return Container(
                        height: 100,
                        width: 225,
                        child: ListTile(
                            leading: const Icon(
                              Icons.folder_copy_outlined,
                              size: 45,
                              color: Color(0xFFAF1C04),
                            ),
                            title: const Text(
                              'Solde',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            subtitle: Text(
                              state.solde,
                              style: const TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                            trailing: BlocSelector<BlocBloc4,
                                Visibility_solde_state, bool>(
                              selector: (state) {
                                return state.solde == "XXXXXX" ? false : true;
                              },
                              builder: (context, isSelect) {
                                return IconButton(
                                  onPressed: () {
                                    context.read<BlocBloc4>().add(
                                        Visibility_solde(solde: state.solde));
                                  },
                                  icon: Icon(
                                    isSelect
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: const Color(0xFFAF1C04),
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
          ),
        ),

        //sizedbox
        const SizedBox(
          height: 25,
        ),

        //Nos Services
        const Text(
          'Nos Services',
          style: TextStyle(
              color: Color(0xFF045B0D),
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),

        //diviser
        Divider(),

        //sizedbox
        const SizedBox(
          height: 15,
        ),

        //Les differents services
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
          
            ],
          ),
        )
      ],
    );
  }
}

// ignore: non_constant_identifier_names
Widget appbar_home() {
  return Image.asset('images/Sahel__Pay.png');
}
