import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sahel_pay/Acceuil/index.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  int current_index = 0;
  List<Widget> ElementsBody = [
    const HomePage(),
    const Historiques(),
    const Reglages()
  ];

  List<Widget> ElementsAppbar = [
    appbar_home(),
    appbar_historiques(),
    appbar_reglages()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 5,
        // shadowColor: Colors.black.withOpacity(.2),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: BlocBuilder<BlocBloc3, Barre_navigation_satate>(
          builder: (context, state) {
            return state.element_appbar;
          },
        ),
      ),
      body: BlocBuilder<BlocBloc3, Barre_navigation_satate>(
        builder: (context, state) {
          return PageView.builder(
            controller: PageController(initialPage: current_index),
            itemCount: 3,
            itemBuilder: (context, index) => state.element_body,
            onPageChanged: (value) {
              if (current_index != value) {
                current_index = value;
              }
              context.read<BlocBloc3>().add(Barre_navigation(
                  element_body: ElementsBody[current_index],
                  element_appbar: ElementsAppbar[current_index]));
            },
          );
          //state.element_body;
        },
      ),

      //............................................barre de navigation
      bottomNavigationBar: BottomAppBar(
          //padding: EdgeInsets.symmetric(vertical: 20),
          color: const Color(0xFFAF1C04),
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BlocSelector<BlocBloc3, Barre_navigation_satate, bool>(
                selector: (state) {
                  return state.element_body is HomePage;
                  // if(state.element_body == const HomePage() && state.element_appbar == appbar_home()){
                  //   return 1;
                  // }else{
                  //   return 0;
                  // }
                },
                //(state) => state.element_body == const HomePage() ? true:false,
                builder: (context, isSelected) {
                  return IconButton(
                    color: isSelected
                        ? Colors.white
                        : const Color.fromARGB(255, 0, 0, 0),
                    onPressed: () {
                      context.read<BlocBloc3>().add(Barre_navigation(
                          element_body: const HomePage(),
                          element_appbar: appbar_home()));
                    },
                    icon: const Icon(Icons.home, size: 35),
                    //isSelected: true,
                  );
                },
              ),
              const SizedBox(
                width: 70,
              ),
              BlocSelector<BlocBloc3, Barre_navigation_satate, bool>(
                selector: (state) {
                  return state.element_body is Historiques;
                  // if(state.element_body == const Historiques() && state.element_appbar == appbar_historiques()){
                  //   return 1;
                  // }else{
                  //   return 0;
                  // }
                },
                //(state) => state.element_body == const HomePage() ? true:false,
                builder: (context, isSelected) {
                  return IconButton(
                    color: isSelected
                        ? Colors.white
                        : const Color.fromARGB(255, 0, 0, 0),
                    onPressed: () {
                      context.read<BlocBloc3>().add(Barre_navigation(
                          element_body: const Historiques(),
                          element_appbar: appbar_historiques()));
                    },
                    icon: const Icon(
                      Icons.list,
                      size: 35,
                    ),
                    //isSelected: true,
                  );
                },
              ),
              const SizedBox(
                width: 70,
              ),
              BlocSelector<BlocBloc3, Barre_navigation_satate, bool>(
                selector: (state) {
                  return state.element_body is Reglages;
                  // var valeur1 = state.element_body;
                  // var valeur2 = state.element_appbar;
                  // if(valeur1 == Reglages && valeur2 == appbar_reglages){
                  //   return 1;
                  // }else{
                  //   return 0;
                  // }
                },
                //(state) => state.element_body == const HomePage() ? true:false,
                builder: (context, isSelected) {
                  return IconButton(
                    color: isSelected
                        ? Colors.white
                        : const Color.fromARGB(255, 0, 0, 0),
                    onPressed: () {
                      context.read<BlocBloc3>().add(Barre_navigation(
                          element_body: const Reglages(),
                          element_appbar: appbar_reglages()));
                    },
                    icon: const Icon(Icons.settings),
                  );
                },
              ),
            ],
          )),

          //.....................................bouton flottant
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Get.bottomSheet(
            //backgroundColor: Colors.transparent,
            //barrierColor: Colors..withOpacity(.5),
              //clipBehavior: ,
              persistent: false,
              // enterBottomSheetDuration: const Duration(seconds: 2),
              // exitBottomSheetDuration: const Duration(seconds: 2),
              Padding(
                padding: const EdgeInsets.only(top: 260),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //.......scanner QR
                          Column(
                            children: [
                              
                              FloatingActionButton(
                                backgroundColor: const Color(0xFFAF1C04),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.wind_power_sharp,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Scanner QR',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),

                          //.......Mes transactions
                          Column(
                            children: [
                              FloatingActionButton(
                                backgroundColor: const Color(0xFFAF1C04),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.wind_power,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Transactions',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),

                          //................Assurance
                          Column(
                            children: [
                              FloatingActionButton(
                                backgroundColor: const Color(0xFFAF1C04),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.wind_power,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Assurance',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),

                      //Sizedbox................
                      const SizedBox(
                        height: 20,
                      ),
                      //...........bouton back
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.cancel,
                            color: Colors.white,
                            size: 70,
                          ))
                    ],
                  ),
                ),
              ));

          //..............temps mis par le bottomsheet
          Future.delayed(const Duration(seconds: 5), () {
            if (Get.isBottomSheetOpen ?? false) {
              Get.back();
            }
          });
        },
        child: const Icon(Icons.window, color: Color(0xFF045B0D),),
      ),
    );
  }
}
