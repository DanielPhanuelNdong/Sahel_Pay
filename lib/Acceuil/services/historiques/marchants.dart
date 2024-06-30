import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sizer/sizer.dart';

import 'historiques.dart';

// ignore: camel_case_types
class marchant extends StatefulWidget {
  const marchant({super.key});

  @override
  State<marchant> createState() => _marchantState();
}

class _marchantState extends State<marchant> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            Card(
              elevation: 3,
              child: Container(
                height: 30.h,
                width: 70.w,
                decoration: BoxDecoration(
                    //border: Border.all(color: const Color(0xFFc75c0c).withOpacity(.1),),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    const Text('19/06/2024')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Card(
              elevation: 3,
              child: Container(
                height: 30.h,
                width: 70.w,
                decoration: BoxDecoration(
                    //border: Border.all(color: const Color(0xFFc75c0c).withOpacity(.1),),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    const Text('19/06/2024')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Card(
              elevation: 3,
              child: Container(
                height: 30.h,
                width: 70.w,
                decoration: BoxDecoration(
                    //border: Border.all(color: const Color(0xFFc75c0c).withOpacity(.1),),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    const Text('19/06/2024')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
          ],
        ),
      ),
    );
  }
}

class appbar_marchants extends StatefulWidget {
  const appbar_marchants({super.key});

  @override
  State<appbar_marchants> createState() => _appbar_marchantsState();
}

class _appbar_marchantsState extends State<appbar_marchants> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      IconButton(
          onPressed: () {
            context.read<BlocBloc3>().add(Barre_navigation(
                element_body: const Historiques(),
                element_appbar: appbar_historiques()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      SizedBox(
        width: 15.w,
      ),
      Text(
        'Assurances',
        style: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
        ),
      )
    ]);
  
  }
}