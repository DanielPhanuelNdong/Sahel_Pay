import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahel_pay/Acceuil/index.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sizer/sizer.dart';

class Historiques extends StatefulWidget {
  const Historiques({super.key});

  @override
  State<Historiques> createState() => _HistoriquesState();
}

class _HistoriquesState extends State<Historiques> {
  String message1 = 'Mobile Money';
  String message2 = 'Achat unités';
  String message3 = 'Assurance';
  String message4 = 'Marchant';
  String message5 = 'Sahel Money';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          ListTile(
            onTap: () {
              context.read<BlocBloc3>().add(Barre_navigation(
                  element_body: const mobile_money(),
                  element_appbar: const appbar_mobile_money()));
            },
            leading: CircleAvatar(
              backgroundColor: const Color(0xFFc75c0c).withOpacity(.4),
              child: Text(
                message1[0].toUpperCase(),
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15.sp),
              ),
            ),
            title: Text(
              message1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
            subtitle: const Text('Description'),
          ),
          ListTile(
            onTap: (){
              context.read<BlocBloc3>().add(Barre_navigation(
                  element_body: const achats_unites(),
                  element_appbar: const appbar_achat()));
            },
            leading: CircleAvatar(
              backgroundColor: const Color(0xFFc75c0c).withOpacity(.4),
              child: Text(
                message2[0].toUpperCase(),
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15.sp),
              ),
            ),
            title: Text(
              message2,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
            subtitle: const Text('Description'),
          ),
          ListTile(
            onTap: () {
              context.read<BlocBloc3>().add(Barre_navigation(
                  element_body: const assurance_ce(),
                  element_appbar: const appbar_assurance_ce()));
            },
            leading: CircleAvatar(
              backgroundColor: const Color(0xFFc75c0c).withOpacity(.4),
              child: Text(
                message3[0].toUpperCase(),
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15.sp),
              ),
            ),
            title: Text(
              message3,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
            subtitle: const Text('Description'),
          ),
          ListTile(
            onTap: () {
              context.read<BlocBloc3>().add(Barre_navigation(
                  element_body: const marchant(),
                  element_appbar: const appbar_marchants()));
            },
            leading: CircleAvatar(
              backgroundColor: const Color(0xFFc75c0c).withOpacity(.4),
              child: Text(
                message4[0].toUpperCase(),
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15.sp),
              ),
            ),
            title: Text(
              message4,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
            subtitle: const Text('Description'),
          ),
          ListTile(
            onTap: () {
              context.read<BlocBloc3>().add(Barre_navigation(
                  element_body: const sahel_money(),
                  element_appbar: const appbar_sahel_money()));
            },
            leading: CircleAvatar(
              backgroundColor: const Color(0xFFc75c0c).withOpacity(.4),
              child: Text(
                message5[0].toUpperCase(),
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15.sp),
              ),
            ),
            title: Text(
              message5,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
            subtitle: const Text('Description'),
          )
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget appbar_historiques() {
  return Text(
    'Historiques',
    style: TextStyle(
      color: const Color.fromARGB(255, 255, 255, 255),
      fontSize: 15.sp,
      fontWeight: FontWeight.bold,
    ),
  );
}
