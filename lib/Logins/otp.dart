import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:sahel_pay/Logins/index.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    //double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //sizebox
              const SizedBox(
                height: 120,
              ),

              //verification code
              const Text(
                'Vérification du code',
                style: TextStyle(
                  color: Color(0xFF007549),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  //color: Color.fromARGB(255, 0, 0, 0)
                ),
              ),

              //sizebox
              const SizedBox(
                height: 40,
              ),

              //entrer le code OTP
              const Text(
                'Veuillez entrez le code de vérification',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFc75c0c),
                ),
              ),

              //sizebox
              const SizedBox(
                height: 40,
              ),

              //Zone d'entrée du code OTP
              const Pinput(),

              //sizebox
              const SizedBox(
                height: 40,
              ),

              //bouton continuer
                InkWell(
                  onTap: () {
                      Get.to(() => const Reset(),
                          transition: Transition.fade,
                          duration: const Duration(seconds: 1));
                    
                  },
                  child: Container(
                    height: 42,
                    width: 350,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xFF007549),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF007549).withOpacity(.2),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                            spreadRadius: 4,
                          )
                        ]),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),

                //sizebox
              const SizedBox(
                height: 10,
              ),

                //Renvoyer le code OTP par SMS ou par email
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Renvoyer le code à nouveau ?',
                      style: TextStyle(
                        color: Color(0xFFc75c0c),
                      ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
