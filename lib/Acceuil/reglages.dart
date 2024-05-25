import 'package:flutter/material.dart';

class Reglages extends StatefulWidget {
  const Reglages({super.key});

  @override
  State<Reglages> createState() => _ReglagesState();
}

class _ReglagesState extends State<Reglages> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: const Text('Réglages'),));
  }
}

// ignore: non_constant_identifier_names
Widget appbar_reglages(){
  return const Text('Réglages');
}