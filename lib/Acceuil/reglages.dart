import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Reglages extends StatefulWidget {
  const Reglages({super.key});

  @override
  State<Reglages> createState() => _ReglagesState();
}

class _ReglagesState extends State<Reglages> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 150.h,
            width: 150.w,
            decoration: BoxDecoration(
                border: Border.all(
              color: const Color(0xFFc75c0c).withOpacity(.7),
              width: 3,
            )),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                      'Se déconnecter',
                      style: TextStyle(
                          color: const Color(0xFF007549).withOpacity(.9),
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp),
                    )
                      ),
                
                      const Divider(),
                
                      TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                      'Choisir la langue',
                      style: TextStyle(
                          color: const Color(0xFFc75c0c).withOpacity(.9),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.5.sp),
                    )
                      ),
                
                      TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                      'Modifier le mot de passe de votre compte',
                      style: TextStyle(
                          color: const Color(0xFFc75c0c).withOpacity(.9),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp),
                    )
                      ),
                  ],
                ),
              ),
            )));
  }
}

// ignore: non_constant_identifier_names
Widget appbar_reglages() {
  return const Text(
    'Réglages',
    style: TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  );
}
