import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
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
        backgroundColor: const Color(0xFF007549),
        centerTitle: true,
        title: BlocBuilder<BlocBloc3, Barre_navigation_satate>(
          builder: (context, state) {
            return state.element_appbar;
          },
        ),
      ),
      body: BlocBuilder<BlocBloc3, Barre_navigation_satate>(
        builder: (context, state) {
          return state.element_body;
          //state.element_body;
        },
      ),

      //............................................barre de navigation
      bottomNavigationBar: Container(
        height: 97,
        child: BottomAppBar(
            elevation: 3,
            shadowColor: Colors.black,
            //padding: EdgeInsets.symmetric(vertical: 20),
            color: const Color(0xFF007549),
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //accueil
                BlocSelector<BlocBloc3, Barre_navigation_satate, bool>(
                  selector: (state) {
                    return state.element_body is HomePage;
                  },
                  builder: (context, isSelected) {
                    return Column(
                      children: [
                        IconButton(
                          color: isSelected
                              ? Colors.white
                              : const Color(0xFFc75c0c),
                          onPressed: () {
                            context.read<BlocBloc3>().add(Barre_navigation(
                                element_body: const HomePage(),
                                element_appbar: appbar_home()));
                          },
                          icon: Icon(Icons.home, size: isSelected ? 30 : 25),
                          //isSelected: true,
                        ),
                        Visibility(
                            visible: isSelected ? true : false,
                            child: const Text(
                              'Accueil',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    );
                  },
                ),
                //Sizedbox
                const SizedBox(
                  width: 70,
                ),

                //Historiques
                BlocSelector<BlocBloc3, Barre_navigation_satate, bool>(
                  selector: (state) {
                    return state.element_body is Historiques;
                  },
                  builder: (context, isSelected) {
                    return Column(
                      children: [
                        IconButton(
                          color: isSelected
                              ? Colors.white
                              : const Color(0xFFc75c0c),
                          onPressed: () {
                            context.read<BlocBloc3>().add(Barre_navigation(
                                element_body: const Historiques(),
                                element_appbar: appbar_historiques()));
                          },
                          icon: Icon(
                            Icons.list,
                            size: isSelected ? 30 : 25,
                          ),
                          //isSelected: true,
                        ),
                        Visibility(
                            visible: isSelected ? true : false,
                            child: const Text('Historiques',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)))
                      ],
                    );
                  },
                ),
                const SizedBox(
                  width: 70,
                ),
                BlocSelector<BlocBloc3, Barre_navigation_satate, bool>(
                  selector: (state) {
                    return state.element_body is Reglages;
                  },
                  builder: (context, isSelected) {
                    return Column(
                      children: [
                        IconButton(
                          color: isSelected
                              ? Colors.white
                              : const Color(0xFFc75c0c),
                          onPressed: () {
                            context.read<BlocBloc3>().add(Barre_navigation(
                                element_body: const Reglages(),
                                element_appbar: appbar_reglages()));
                          },
                          icon: Icon(
                            Icons.settings,
                            size: isSelected ? 30 : 25,
                          ),
                        ),
                        Visibility(
                            visible: isSelected ? true : false,
                            child: const Text(
                              'Réglages',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    );
                  },
                ),
              ],
            )),
      ),

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
                          //.......scanner QR.....................................................
                          Column(
                            children: [
                              FloatingActionButton(
                                  backgroundColor: const Color(0xFF007549),
                                  onPressed: () {
                                    Get.back();
                                    Paiement_marchand(context);
                                    
                                    // ignore: non_constant_identifier_names
                                    void QRCodeScan() async {
                                      String QRCode;
                                      // ignore: unused_local_variable
                                      String _BarcodeResult = '';
                                      try {
                                        QRCode = await FlutterBarcodeScanner
                                            .scanBarcode(
                                                "#ff6666", // Scan line color
                                                "Cancel", // Cancel button text
                                                true, // Whether to use the rear camera
                                                ScanMode.QR);
                                      } on PlatformException {
                                        QRCode = 'Echec PlatformException';
                                      }

                                      // setState(() {
                                      //   _BarcodeResult = QRCode;
                                      // });
                                    }
                                  },
                                  child: Image.asset('images/Paie_marchand.png')),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Payement \nMarchant',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),

                          //.......Mes transactions.........................................................
                          Column(
                            children: [
                              FloatingActionButton(
                                  backgroundColor: const Color(0xFF007549),
                                  onPressed: () {},
                                  child:
                                      Image.asset('images/transactions.png')),
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
                                  backgroundColor: const Color(0xFF007549),
                                  onPressed: () {},
                                  child: Image.asset('images/assurrance.png')),
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
          font(var val){
            
            if(val == true){
              if(mounted){
            Future.delayed(const Duration(seconds: 5), () {
            if (Get.isBottomSheetOpen ?? false) {
              Get.back();
            }
          }
          );
          }
            }
          }

          font(true);
        },
        child: const Icon(
          Icons.window,
          color: Color(0xFF007549),
        ),
      ),
    );
  }
}
