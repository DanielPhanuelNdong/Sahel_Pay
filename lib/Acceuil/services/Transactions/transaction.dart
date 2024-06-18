import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahel_pay/Acceuil/index.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {

  @override
  Widget build(BuildContext context) {
    //double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Vos 04 dernières transactions',
                style: TextStyle(
                    color: Color(0xFFc75c0c),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  context.read<BlocBloc3>().add(Barre_navigation(
                  element_body: const transactions1(
                    nombre: 15,
                  ),
                  element_appbar: const appbar_transaction1()));
                },
                child: const Text('Voir Plus', style: TextStyle(color: Colors.green),
                ))
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
          GestureDetector(
            onTap: () {
              context.read<BlocBloc3>().add(Barre_navigation(
                  element_body: const transactions1(
                    nombre: 15,
                  ),
                  element_appbar: const appbar_transaction1()));
            },
            child: Container(
              height: 250,
              width: w,
              child:  Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 2, ),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: 60,
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

                    ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 4),
    )
  
            ),
          )
        ],
      ),
    ));
  }
}

// Widget Transactions(){
//   return const Center(child: Text('Transactions'),);
// }