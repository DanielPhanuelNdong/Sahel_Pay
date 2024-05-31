import 'package:flutter/material.dart';
class effectuer_payement extends StatefulWidget {
  const effectuer_payement({super.key});

  @override
  State<effectuer_payement> createState() => _effectuer_payementState();
}

class _effectuer_payementState extends State<effectuer_payement> {
  @override
  Widget build(BuildContext context) {
    return
    //bouton Effectuer payement.........................................
        Center(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 200,
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF007549),
                    boxShadow: [
                BoxShadow(
                    color: const Color(0xFF007549).withOpacity(.255),
                    blurRadius: 3,
                    spreadRadius: 3,
                    offset: const Offset(0, 2))
              ]),
              child: const Text(
                'Effectuer un payement',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        );
  }
}

// Widget effectuer_payement(){
//   return const Center(child: Text('effectuer_payement'),);
// }