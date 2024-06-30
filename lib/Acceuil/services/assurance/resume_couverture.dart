import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:sahel_pay/Acceuil/index.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_state.dart';
import 'package:sizer/sizer.dart';

// ignore: camel_case_types
class resume_couverture extends StatefulWidget {
  const resume_couverture({super.key});

  @override
  State<resume_couverture> createState() => _resume_couvertureState();
}

// ignore: camel_case_types
class _resume_couvertureState extends State<resume_couverture> {
  // ignore: non_constant_identifier_names
  final List<String> Debits = ['Autodebit', 'Monthlycover', 'Prepaidcover'];
  // ignore: non_constant_identifier_names
  final List<String> Debit1 = ['50', '100', '150'];
  // ignore: non_constant_identifier_names
  final List<String> Debit2 = ['1 000', '1 500', '2 000'];
  // ignore: non_constant_identifier_names
  final List<String> Debit3 = ['8 000', '16 000', '24 000'];
  String debit = '';
  String debi = '';
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          //Résumé couverture My Healt..................................................................
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 4.h,
                    width: MediaQuery.of(context).size.width * .9,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 1, 168, 104).withOpacity(.95),
                    ),
                    child: Text(
                      'Résumé couverture MyHealt',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: .5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 6.h,
                      width: 40.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 215, 226, 221),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Maladie',
                              style: TextStyle(
                                  color: const Color(0xFFc75c0c),
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              '000.00',
                              style: TextStyle(
                                  color: const Color(0xFF007549),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 40.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 234, 229, 227),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Accident',
                              style: TextStyle(
                                  color: const Color(0xFFc75c0c),
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              '000.00',
                              style: TextStyle(
                                  color: const Color(0xFF007549),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          SizedBox(
            height: 1.h,
          ),

          //MyHealt Gratuit.......................................................................
          Column(
            children: [
              Container(
                height: 4.h,
                width: MediaQuery.of(context).size.width * .8,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 248, 181, 122).withOpacity(.95),
                ),
                child: Text(
                  'MyHealt Gratuit',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp),
                ),
              ),
              SizedBox(
                height: .5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 6.h,
                      width: 40.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 215, 226, 221),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Maladie',
                              style: TextStyle(
                                  color: const Color(0xFFc75c0c),
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              '000.00',
                              style: TextStyle(
                                  color: Color(0xFF007549),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 40.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 234, 229, 227),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Accident',
                              style: TextStyle(
                                  color: const Color(0xFFc75c0c),
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 12.sp),
                            ),
                            Text(
                              '000.00',
                              style: TextStyle(
                                  color: const Color(0xFF007549),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          SizedBox(
            height: 2.h,
          ),

          //Booster ici..........................................................

          Bounce(
            duration: const Duration(milliseconds: 500),
            onPressed: () {
              if (visible) {
                Get.back();
                Get.defaultDialog(
                  title: 'Attention !',
                  titleStyle: TextStyle(
                      color: const Color(0xFF007549),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                  middleText: 'Voulez-vous changer de Healt ? ',
                  middleTextStyle: TextStyle(
                      fontSize: 10.sp, fontWeight: FontWeight.w400),
                  textConfirm: 'OUI',
                  textCancel: 'NON',
                  buttonColor: const Color(0xFF007549),
                  onConfirm: () {
                    Get.back();
                    Get.defaultDialog(
                      title: 'Sélectionnez le type de débit',
                      titlePadding: const EdgeInsets.all(30),
                      titleStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF007549),
                      ),
                      content: BlocBuilder<BlocBloc16, debits_assurance_state>(
                        builder: (context, state) {
                          debit = state.debit;
                          return Column(
                            children: [
                              RadioListTile(
                                value: Debits[0],
                                groupValue:
                                    state.debit == Debits[0] ? Debits[0] : '',
                                onChanged: (value) {
                                  context
                                      .read<BlocBloc16>()
                                      .add(debits_assurance(debit: Debits[0]));
                                },
                                title: const Text(
                                  'Autodébit',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF007549),
                                  ),
                                ),
                                subtitle: const Text(
                                  textAlign: TextAlign.start,
                                  'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture chaque fois que vous faites un transfert de crédit',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ),
                              RadioListTile(
                                value: Debits[1],
                                groupValue:
                                    state.debit == Debits[1] ? Debits[1] : '',
                                onChanged: (value) {
                                  context
                                      .read<BlocBloc16>()
                                      .add(debits_assurance(debit: Debits[1]));
                                },
                                title: const Text(
                                  'Monthlycover',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF007549),
                                  ),
                                ),
                                subtitle: const Text(
                                  textAlign: TextAlign.start,
                                  'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture après chaque 30 jours',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ),
                              RadioListTile(
                                value: Debits[2],
                                groupValue:
                                    state.debit == Debits[2] ? Debits[2] : '',
                                onChanged: (value) {
                                  context
                                      .read<BlocBloc16>()
                                      .add(debits_assurance(debit: Debits[2]));
                                },
                                title: const Text('Prepaidcover',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF007549),
                                    )),
                                subtitle: const Text(
                                  textAlign: TextAlign.start,
                                  'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture après chaque 12 mois',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                      textConfirm: 'Suivant',
                      textCancel: 'Annuler',
                      confirmTextColor: Colors.white,
                      buttonColor: const Color(0xFF007549),
                      onConfirm: () {
                        if (debit == Debits[0]) {
                          Get.back();
                          Get.defaultDialog(
                            title: 'Veuillez sélectionner la prime',
                            titlePadding: const EdgeInsets.all(30),
                            titleStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF007549),
                            ),
                            textConfirm: 'Valider',
                            textCancel: 'Annuler',
                            buttonColor: const Color(0xFF007549),
                            content: BlocBuilder<BlocBloc17,
                                debits_assurance1_state>(
                              builder: (context, state) {
                                debi = state.debit1;
                                return Column(
                                  children: [
                                    const Text(
                                      'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture chaque fois que vous fete un transfert de crédit',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.center,
                                    ),
                                    RadioListTile(
                                      value: Debit1[0],
                                      groupValue: state.debit1 == Debit1[0]
                                          ? Debit1[0]
                                          : '',
                                      onChanged: (value) {
                                        context.read<BlocBloc17>().add(
                                            debits_assurance1(
                                                debit1: Debit1[0]));
                                      },
                                      title: Text(Debit1[0],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF007549),
                                          )),
                                    ),
                                    RadioListTile(
                                      value: Debit1[1],
                                      groupValue: state.debit1 == Debit1[1]
                                          ? Debit1[1]
                                          : '',
                                      onChanged: (value) {
                                        context.read<BlocBloc17>().add(
                                            debits_assurance1(
                                                debit1: Debit1[1]));
                                      },
                                      title: Text(Debit1[1],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF007549),
                                          )),
                                    ),
                                    RadioListTile(
                                      value: Debit1[2],
                                      groupValue: state.debit1 == Debit1[2]
                                          ? Debit1[2]
                                          : '',
                                      onChanged: (value) {
                                        context.read<BlocBloc17>().add(
                                            debits_assurance1(
                                                debit1: Debit1[2]));
                                      },
                                      title: Text(Debit1[2],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF007549),
                                          )),
                                    ),
                                  ],
                                );
                              },
                            ),
                            onConfirm: () {
                              setState(() {
                                !visible ? visible = true : visible = true;
                              });
                              Get.back();
                              Get.defaultDialog(
                                title: 'Félicitations',
                                middleText:
                                    'Vous venez de souscrire à $debit avec une prime de $debi',
                                middleTextStyle: const TextStyle(
                                    fontWeight: FontWeight.w400),
                                titlePadding: const EdgeInsets.all(30),
                                titleStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF007549),
                                ),
                                textCancel: 'Quitter',
                                buttonColor: const Color(0xFF007549),
                              );
                            },
                          );
                        }
                        if (debit == Debits[1]) {
                          Get.back();
                          Get.defaultDialog(
                            title: 'Veuillez sélectionner la prime',
                            titlePadding: const EdgeInsets.all(30),
                            titleStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF007549),
                            ),
                            textConfirm: 'Valider',
                            textCancel: 'Annuler',
                            buttonColor: const Color(0xFF007549),
                            content: BlocBuilder<BlocBloc18,
                                debits_assurance2_state>(
                              builder: (context, state) {
                                debi = state.debit2;
                                return Column(
                                  children: [
                                    const Text(
                                      'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture après chaque 30 jours',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.center,
                                    ),
                                    RadioListTile(
                                      value: Debit2[0],
                                      groupValue: state.debit2 == Debit2[0]
                                          ? Debit2[0]
                                          : '',
                                      onChanged: (value) {
                                        context.read<BlocBloc18>().add(
                                            debits_assurance2(
                                                debit2: Debit2[0]));
                                      },
                                      title: Text(Debit2[0],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF007549),
                                          )),
                                    ),
                                    RadioListTile(
                                      value: Debit2[1],
                                      groupValue: state.debit2 == Debit2[1]
                                          ? Debit2[1]
                                          : '',
                                      onChanged: (value) {
                                        context.read<BlocBloc18>().add(
                                            debits_assurance2(
                                                debit2: Debit2[1]));
                                      },
                                      title: Text(Debit2[1],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF007549),
                                          )),
                                    ),
                                    RadioListTile(
                                      value: Debit2[2],
                                      groupValue: state.debit2 == Debit2[2]
                                          ? Debit2[2]
                                          : '',
                                      onChanged: (value) {
                                        context.read<BlocBloc18>().add(
                                            debits_assurance2(
                                                debit2: Debit2[2]));
                                      },
                                      title: Text(Debit2[2],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF007549),
                                          )),
                                    ),
                                  ],
                                );
                              },
                            ),
                            onConfirm: () {
                              setState(() {
                                !visible ? visible = true : visible = true;
                              });
                              Get.back();
                              Get.defaultDialog(
                                title: 'Félicitations',
                                middleText:
                                    'Vous venez de souscrire à $debit avec une prime de $debi',
                                middleTextStyle: const TextStyle(
                                    fontWeight: FontWeight.w400),
                                titlePadding: const EdgeInsets.all(30),
                                titleStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF007549),
                                ),
                                textCancel: 'Quitter',
                                buttonColor: const Color(0xFF007549),
                              );
                            },
                          );
                        }
                        if (debit == Debits[2]) {
                          Get.back();
                          Get.defaultDialog(
                            title: 'Veuillez sélectionner la prime',
                            titlePadding: const EdgeInsets.all(30),
                            titleStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF007549),
                            ),
                            textConfirm: 'Valider',
                            textCancel: 'Annuler',
                            buttonColor: const Color(0xFF007549),
                            content: BlocBuilder<BlocBloc19,
                                debits_assurance3_state>(
                              builder: (context, state) {
                                debi = state.debit3;
                                return Column(
                                  children: [
                                    const Text(
                                      'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture après chaque 12 mois',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.center,
                                    ),
                                    RadioListTile(
                                      value: Debit3[0],
                                      groupValue: state.debit3 == Debit3[0]
                                          ? Debit3[0]
                                          : '',
                                      onChanged: (value) {
                                        context.read<BlocBloc19>().add(
                                            debits_assurance3(
                                                debit3: Debit3[0]));
                                      },
                                      title: Text(Debit3[0],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF007549),
                                          )),
                                    ),
                                    RadioListTile(
                                      value: Debit3[1],
                                      groupValue: state.debit3 == Debit3[1]
                                          ? Debit3[1]
                                          : '',
                                      onChanged: (value) {
                                        context.read<BlocBloc19>().add(
                                            debits_assurance3(
                                                debit3: Debit3[1]));
                                      },
                                      title: Text(Debit3[1],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF007549),
                                          )),
                                    ),
                                    RadioListTile(
                                      value: Debit3[2],
                                      groupValue: state.debit3 == Debit3[2]
                                          ? Debit3[2]
                                          : '',
                                      onChanged: (value) {
                                        context.read<BlocBloc19>().add(
                                            debits_assurance3(
                                                debit3: Debit3[2]));
                                      },
                                      title: Text(Debit3[2],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF007549),
                                          )),
                                    ),
                                  ],
                                );
                              },
                            ),
                            onConfirm: () {
                              setState(() {
                                !visible ? visible = true : visible = true;
                              });
                              Get.back();
                              Get.defaultDialog(
                                title: 'Félicitations',
                                middleText:
                                    'Vous venez de souscrire à $debit avec une prime de $debi',
                                middleTextStyle: const TextStyle(
                                    fontWeight: FontWeight.w400),
                                titlePadding: const EdgeInsets.all(30),
                                titleStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF007549),
                                ),
                                textCancel: 'Quitter',
                                buttonColor: const Color(0xFF007549),
                              );
                            },
                          );
                        }
                      },
                    );
                  },
                );
              } else {
                Get.defaultDialog(
                  title: 'Sélectionnez le type de débit',
                  titlePadding: const EdgeInsets.all(30),
                  titleStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF007549),
                  ),
                  content: BlocBuilder<BlocBloc16, debits_assurance_state>(
                    builder: (context, state) {
                      debit = state.debit;
                      return Column(
                        children: [
                          RadioListTile(
                            value: Debits[0],
                            groupValue:
                                state.debit == Debits[0] ? Debits[0] : '',
                            onChanged: (value) {
                              context
                                  .read<BlocBloc16>()
                                  .add(debits_assurance(debit: Debits[0]));
                            },
                            title: const Text(
                              'Autodébit',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF007549),
                              ),
                            ),
                            subtitle: const Text(
                              textAlign: TextAlign.start,
                              'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture chaque fois que vous fete un transfert de crédit',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          RadioListTile(
                            value: Debits[1],
                            groupValue:
                                state.debit == Debits[1] ? Debits[1] : '',
                            onChanged: (value) {
                              context
                                  .read<BlocBloc16>()
                                  .add(debits_assurance(debit: Debits[1]));
                            },
                            title: const Text(
                              'Monthlycover',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF007549),
                              ),
                            ),
                            subtitle: const Text(
                              textAlign: TextAlign.start,
                              'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture après chaque 30 jours',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          RadioListTile(
                            value: Debits[2],
                            groupValue:
                                state.debit == Debits[2] ? Debits[2] : '',
                            onChanged: (value) {
                              context
                                  .read<BlocBloc16>()
                                  .add(debits_assurance(debit: Debits[2]));
                            },
                            title: const Text('Prepaidcover',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF007549),
                                )),
                            subtitle: const Text(
                              textAlign: TextAlign.start,
                              'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture après chaque 12 mois',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                  textConfirm: 'Suivant',
                  textCancel: 'Annuler',
                  confirmTextColor: Colors.white,
                  buttonColor: const Color(0xFF007549),
                  onConfirm: () {
                    if (debit == Debits[0]) {
                      Get.back();
                      Get.defaultDialog(
                        title: 'Veuillez sélectionner la prime',
                        titlePadding: const EdgeInsets.all(30),
                        titleStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF007549),
                        ),
                        textConfirm: 'Valider',
                        textCancel: 'Annuler',
                        buttonColor: const Color(0xFF007549),
                        content:
                            BlocBuilder<BlocBloc17, debits_assurance1_state>(
                          builder: (context, state) {
                            debi = state.debit1;
                            return Column(
                              children: [
                                const Text(
                                  'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture chaque fois que vous fete un transfert de crédit',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                                RadioListTile(
                                  value: Debit1[0],
                                  groupValue: state.debit1 == Debit1[0]
                                      ? Debit1[0]
                                      : '',
                                  onChanged: (value) {
                                    context.read<BlocBloc17>().add(
                                        debits_assurance1(debit1: Debit1[0]));
                                  },
                                  title: Text(Debit1[0],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF007549),
                                      )),
                                ),
                                RadioListTile(
                                  value: Debit1[1],
                                  groupValue: state.debit1 == Debit1[1]
                                      ? Debit1[1]
                                      : '',
                                  onChanged: (value) {
                                    context.read<BlocBloc17>().add(
                                        debits_assurance1(debit1: Debit1[1]));
                                  },
                                  title: Text(Debit1[1],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF007549),
                                      )),
                                ),
                                RadioListTile(
                                  value: Debit1[2],
                                  groupValue: state.debit1 == Debit1[2]
                                      ? Debit1[2]
                                      : '',
                                  onChanged: (value) {
                                    context.read<BlocBloc17>().add(
                                        debits_assurance1(debit1: Debit1[2]));
                                  },
                                  title: Text(Debit1[2],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF007549),
                                      )),
                                ),
                              ],
                            );
                          },
                        ),
                        onConfirm: () {
                          setState(() {
                            !visible ? visible = true : visible = true;
                          });
                          Get.back();
                          Get.defaultDialog(
                            title: 'Félicitations',
                            middleText:
                                'Vous venez de souscrire à $debit avec une prime de $debi',
                            middleTextStyle:
                                const TextStyle(fontWeight: FontWeight.w400),
                            titlePadding: const EdgeInsets.all(30),
                            titleStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF007549),
                            ),
                            textCancel: 'Quitter',
                            buttonColor: const Color(0xFF007549),
                          );
                        },
                      );
                    }
                    if (debit == Debits[1]) {
                      Get.back();
                      Get.defaultDialog(
                        title: 'Veuillez sélectionner la prime',
                        titlePadding: const EdgeInsets.all(30),
                        titleStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF007549),
                        ),
                        textConfirm: 'Valider',
                        textCancel: 'Annuler',
                        buttonColor: const Color(0xFF007549),
                        content:
                            BlocBuilder<BlocBloc18, debits_assurance2_state>(
                          builder: (context, state) {
                            debi = state.debit2;
                            return Column(
                              children: [
                                const Text(
                                  'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture après chaque 30 jours',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                                RadioListTile(
                                  value: Debit2[0],
                                  groupValue: state.debit2 == Debit2[0]
                                      ? Debit2[0]
                                      : '',
                                  onChanged: (value) {
                                    context.read<BlocBloc18>().add(
                                        debits_assurance2(debit2: Debit2[0]));
                                  },
                                  title: Text(Debit2[0],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF007549),
                                      )),
                                ),
                                RadioListTile(
                                  value: Debit2[1],
                                  groupValue: state.debit2 == Debit2[1]
                                      ? Debit2[1]
                                      : '',
                                  onChanged: (value) {
                                    context.read<BlocBloc18>().add(
                                        debits_assurance2(debit2: Debit2[1]));
                                  },
                                  title: Text(Debit2[1],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF007549),
                                      )),
                                ),
                                RadioListTile(
                                  value: Debit2[2],
                                  groupValue: state.debit2 == Debit2[2]
                                      ? Debit2[2]
                                      : '',
                                  onChanged: (value) {
                                    context.read<BlocBloc18>().add(
                                        debits_assurance2(debit2: Debit2[2]));
                                  },
                                  title: Text(Debit2[2],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF007549),
                                      )),
                                ),
                              ],
                            );
                          },
                        ),
                        onConfirm: () {
                          setState(() {
                            !visible ? visible = true : visible = true;
                          });
                          Get.back();
                          Get.defaultDialog(
                            title: 'Félicitations',
                            middleText:
                                'Vous venez de souscrire à $debit avec une prime de $debi',
                            middleTextStyle:
                                const TextStyle(fontWeight: FontWeight.w400),
                            titlePadding: const EdgeInsets.all(30),
                            titleStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF007549),
                            ),
                            textCancel: 'Quitter',
                            buttonColor: const Color(0xFF007549),
                          );
                        },
                      );
                    }
                    if (debit == Debits[2]) {
                      Get.back();
                      Get.defaultDialog(
                        title: 'Veuillez sélectionner la prime',
                        titlePadding: const EdgeInsets.all(30),
                        titleStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF007549),
                        ),
                        textConfirm: 'Valider',
                        textCancel: 'Annuler',
                        buttonColor: const Color(0xFF007549),
                        content:
                            BlocBuilder<BlocBloc19, debits_assurance3_state>(
                          builder: (context, state) {
                            debi = state.debit3;
                            return Column(
                              children: [
                                const Text(
                                  'Le montant sélectionné sera déduit de votre portefeuille Sahel Money pour plus de couverture après chaque 12 mois',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                                RadioListTile(
                                  value: Debit3[0],
                                  groupValue: state.debit3 == Debit3[0]
                                      ? Debit3[0]
                                      : '',
                                  onChanged: (value) {
                                    context.read<BlocBloc19>().add(
                                        debits_assurance3(debit3: Debit3[0]));
                                  },
                                  title: Text(Debit3[0],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF007549),
                                      )),
                                ),
                                RadioListTile(
                                  value: Debit3[1],
                                  groupValue: state.debit3 == Debit3[1]
                                      ? Debit3[1]
                                      : '',
                                  onChanged: (value) {
                                    context.read<BlocBloc19>().add(
                                        debits_assurance3(debit3: Debit3[1]));
                                  },
                                  title: Text(Debit3[1],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF007549),
                                      )),
                                ),
                                RadioListTile(
                                  value: Debit3[2],
                                  groupValue: state.debit3 == Debit3[2]
                                      ? Debit3[2]
                                      : '',
                                  onChanged: (value) {
                                    context.read<BlocBloc19>().add(
                                        debits_assurance3(debit3: Debit3[2]));
                                  },
                                  title: Text(Debit3[2],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF007549),
                                      )),
                                ),
                              ],
                            );
                          },
                        ),
                        onConfirm: () {
                          setState(() {
                            !visible ? visible = true : visible = true;
                          });
                          Get.back();
                          Get.defaultDialog(
                            title: 'Félicitations',
                            middleText:
                                'Vous venez de souscrire à $debit avec une prime de $debi',
                            middleTextStyle:
                                const TextStyle(fontWeight: FontWeight.w400),
                            titlePadding: const EdgeInsets.all(30),
                            titleStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF007549),
                            ),
                            textCancel: 'Quitter',
                            buttonColor: const Color(0xFF007549),
                          );
                        },
                      );
                    }
                  },
                );
              }
              //Scafold.show.defaultDialog();
            },
            child: Container(
              height: 4.h,
              width: 50.w,
              decoration: const BoxDecoration(
                  color: Color(0xFFff7900),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                'Booster ici',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14.sp),
              ),
            ),
          ),

          SizedBox(
            height: 1.h,
          ),

          //MyHealt Payant............................................................
          Visibility(
            visible: visible,
            child: Column(
              children: [
                Container(
                  height: 7.h,
                  width: MediaQuery.of(context).size.width * .8,
                  padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 103, 200, 195)
                        .withOpacity(.95),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'MyHealt Payant',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp),
                      ),
                      Text(
                        '$debit : $debi',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 241, 235, 228),
                            fontWeight: FontWeight.bold,
                            fontSize: 11.sp),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 6.h,
                      width: 40.w,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 215, 226, 221),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Maladie',
                                style: TextStyle(
                                    color: const Color(0xFFc75c0c),
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 12.sp),
                              ),
                              Text(
                                '000.00',
                                style: TextStyle(
                                    color: const Color(0xFF007549),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 6.h,
                      width: 40.w,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 234, 229, 227),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Accident',
                                style: TextStyle(
                                    color: const Color(0xFFc75c0c),
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 12.sp),
                              ),
                              Text(
                                '000.00',
                                style: TextStyle(
                                    color: const Color(0xFF007549),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {
                      context.read<BlocBloc3>().add(Barre_navigation(
                          element_body: const reclamation(),
                          element_appbar: const reclamation1_appbar()));
                    },
                    child: Container(
                      height: 13.h,
                      width: 49.w,
                      //padding: const EdgeInsets.only(top: 10, left: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 103, 200, 195)
                            .withOpacity(.95),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Text(
                              'MES DEMARCHES',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {},
                    child: Container(
                      height: 13.h,
                      width: 49.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 181, 122)
                            .withOpacity(.95),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 1.h),
                        child: Column(
                          children: [
                            Text(
                              'MES DOCUMENTS',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {
                      context.read<BlocBloc3>().add(Barre_navigation(
                          element_body: const mes_informations(),
                          element_appbar: const reclamation1_appbar()));
                    },
                    child: Container(
                      height: 13.h,
                      width: 49.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 181, 122)
                            .withOpacity(.95),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 1.h),
                        child: Column(
                          children: [
                            Text(
                              'MES INFORMATIONS',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {
                      context.read<BlocBloc3>().add(Barre_navigation(
                          element_body: const ajouter_couverture(),
                          element_appbar: const reclamation1_appbar())
                          );
                    },
                    child: Container(
                      height: 13.h,
                      width: 49.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 103, 200, 195)
                            .withOpacity(.95),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 1.h),
                        child: Column(
                          children: [
                            Text(
                              'AJOUTER COUVERTURE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Souscrir_pour_moi extends StatefulWidget {
  const Souscrir_pour_moi({super.key});

  @override
  State<Souscrir_pour_moi> createState() => _Souscrir_pour_moiState();
}

class _Souscrir_pour_moiState extends State<Souscrir_pour_moi> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
          onPressed: () {
            context.read<BlocBloc3>().add(Barre_navigation(
                element_body: const assurance(),
                element_appbar: const appbar_assurance()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      SizedBox(
        width: 12.w,
      ),
      Image.asset(height: 16.h, width: 60.w, 'images/Sahel_Assurance.png')
    ]);
  }
}
