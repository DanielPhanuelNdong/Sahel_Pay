import 'package:flutter/material.dart';
class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          //sizedbox
          SizedBox(
            height: 20,
          ),
          Text('Vos dernières transactions', style: TextStyle(color: Color(0xFFc75c0c),fontSize: 20, fontWeight: FontWeight.bold),)
        ],
      )
      );
  }
}

// Widget Transactions(){
//   return const Center(child: Text('Transactions'),);
// }