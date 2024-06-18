import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahel_pay/Acceuil/home.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';

class transactions1 extends StatefulWidget {
  final int nombre;
  const transactions1({
    Key? key,
    required this.nombre,
  }) : super(key: key);

  @override
  State<transactions1> createState() => _transactions1State();
}

class _transactions1State extends State<transactions1> {

  returner(){
    context.read<BlocBloc3>().add(Barre_navigation(
                element_body: const HomePage(), element_appbar: appbar_home()));
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: const Offset(2, 2),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Premiere ligne...........
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  '07 Juin 2024',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 20,
                                  width: 2,
                                  color: Colors.black.withOpacity(.4),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  '10h15',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Row(
                              children: [Text('MA\'A NDONG'), Text('(Succès)')],
                            )
                          ],
                        ),
                        const Text(
                          '5000 XAF',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),

                    //deuxieme ligne...................
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Transactions ID :',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                'Type de transaction :',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                'De :',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '457865494',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                'Transfert',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                '237658906909',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: widget.nombre),
    );
  }
}

class appbar_transaction1 extends StatefulWidget {
  const appbar_transaction1({super.key});

  @override
  State<appbar_transaction1> createState() => _appbar_transaction1State();
}

class _appbar_transaction1State extends State<appbar_transaction1> {
  @override
  Widget build(BuildContext context) {
    return Row(
    //mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
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
        width: 70,
      ),
      const Text(
        'Mes Transactions',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
  }
}

// ignore: non_constant_identifier_names
// Widget appbar_transaction1(context, returner) {
//   return Row(
//     //mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       IconButton(
//           onPressed: () {
//             returner();
//           },
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           )),
//       const SizedBox(
//         width: 70,
//       ),
//       const Text(
//         'Mes Transactions',
//         style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ],
//   );
// }

