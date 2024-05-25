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
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: const TextTheme(),
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color(0xFFFB5606)),
            primaryColor: const Color(0xFF045B0D),
            useMaterial3: true,
          ),
          home: const Sign_in(),
        ));
  }
}
