import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sahel_pay/Logins/sign_in.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BlocBloc(),
          ),
          BlocProvider(create: (context) => BlocBloc2()),
          BlocProvider(
            create: (context) => BlocBloc3(),
          ),
          BlocProvider(create: (context) => BlocBloc4()),
          BlocProvider(create: (context) => BlocBloc5(),),
          BlocProvider(create: (context) => BlocBloc6(),),
          BlocProvider(create: (context) => BlocBloc7(),),
          BlocProvider(create: (context) => BlocBloc8(),),
          BlocProvider(create: (context) => BlocBloc9(),),
          BlocProvider(create: (context) => BlocBloc10(),),
          BlocProvider(create: (context) => BlocBloc11(),),
          BlocProvider(create: (context) => BlocBloc12(),),
          BlocProvider(create: (context) => BlocBloc13(),),
          BlocProvider(create: (context) => BlocBloc14(),),
          BlocProvider(create: (context) => BlocBloc16(),),
          BlocProvider(create: (context) => BlocBloc17(),),
          BlocProvider(create: (context) => BlocBloc18(),),
          BlocProvider(create: (context) => BlocBloc19(),),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: const TextTheme(),
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 251, 251, 251)),
            primaryColor: const Color.fromARGB(255, 255, 255, 255),
            useMaterial3: true,
          ),
          home: const Sign_in(),
        ));
  }
}
