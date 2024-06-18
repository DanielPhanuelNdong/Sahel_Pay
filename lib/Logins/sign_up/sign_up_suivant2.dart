import 'package:flutter/material.dart';

class sign_up_suivant2 extends StatefulWidget {
  const sign_up_suivant2({super.key});

  @override
  State<sign_up_suivant2> createState() => _sign_up_suivant2State();
}

class _sign_up_suivant2State extends State<sign_up_suivant2> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            'Veuillez filmer votre Carte nationale d\'identité recto verso',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFFc75c0c),
            ),
          ),
        ],
      ),
    );
  }
}
