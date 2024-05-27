import 'package:flutter/material.dart';

class Historiques extends StatefulWidget {
  const Historiques({super.key});

  @override
  State<Historiques> createState() => _HistoriquesState();
}

class _HistoriquesState extends State<Historiques> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: const Text('Historiques'),));
  }
}

// ignore: non_constant_identifier_names
Widget appbar_historiques(){
  return const Text('Historiques', style: TextStyle(
    color: Color.fromARGB(255, 255, 255, 255),
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),);
}