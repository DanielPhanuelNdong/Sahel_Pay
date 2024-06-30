import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahel_pay/Acceuil/home.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sizer/sizer.dart';

class Detail_retrait extends StatefulWidget {
  const Detail_retrait({super.key});

  @override
  State<Detail_retrait> createState() => _Detail_retraitState();
}

class _Detail_retraitState extends State<Detail_retrait> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return Container(
      height: screen_height,
      width: screen_width,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 3.h, bottom: 3.h),
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //details sur le code de retrait
                Container(
                  height: screen_height * .4,
                  width: screen_width * .90,
                  decoration: BoxDecoration(
                      color: const Color(0xFF007549).withOpacity(.05),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5.w, vertical: 1.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Détails sur le code de retrait',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,
                            color: const Color(0xFFc75c0c),
                          ),
                        ),

                        //sizedbox
                        SizedBox(
                          height: .5.h,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Numéro de code de retrait',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            ),
                            Text(
                              '673 8747',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Montant',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            ),
                            Text(
                              'XAF XXXXXX',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Montant facturé',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            ),
                            Text(
                              'XAF XXXXXX',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Montant débité',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            ),
                            Text(
                              'XAF XXXXXX',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Généré le',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            ),
                            Text(
                              '23/12/2022',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Expire dans',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            ),
                            Text(
                              '11h 22min',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            )
                          ],
                        ),

                        TextButton(
                          onPressed: () {
                            context.read<BlocBloc3>().add(Barre_navigation(element_body: const HomePage(), element_appbar: appbar_home()));
                            context.read<BlocBloc12>().add(retrait_confirm(val: false));
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xFFc75c0c))),
                          child: Text(
                            'Supprimer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //sizedbox
                SizedBox(
                  height: 2.h,
                ),

                //comment optenir le montant ??
                Container(
                  height: screen_height * .35,
                  width: screen_width * .90,
                  decoration: BoxDecoration(
                      color: const Color(0xFF007549).withOpacity(.05),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Comment optenir le montant ?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                              color: const Color(0xFFc75c0c),
                            ),
                          ),
                                        
                          //sizedbox
                          const SizedBox(
                            height: 5,
                          ),
                                        
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: const Color(0xFFc75c0c),
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.white),
                              ),
                            ),
                            title: Text(
                              'Allez sur guichet SOWITEL GAB',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            ),
                          ),
                                        
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: const Color(0xFFc75c0c),
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.white),
                              ),
                            ),
                            title: Text(
                              'Sélectionner l\'option Sahel Money et suivez les indications pour retirer votre argent',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            ),
                          ),
                                        
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: const Color(0xFFc75c0c),
                              child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.white),
                              ),
                            ),
                            title: Text(
                              'Dans l\'agence Sahel Money, présenter le code de retrait en plus du numéro de l\'émétteur du retrait',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
