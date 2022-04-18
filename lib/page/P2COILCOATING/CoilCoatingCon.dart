import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/02-CoilCoating.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/Loading.dart';
import 'CoilCoatingTable.dart';
import 'CoilCoatingVar.dart';

void COILCOATINGConsoleBox() {
  showDialog(
    context: CoilCoatingContexttable,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Container(
        // color: Colors.blue,
        child: Dialog(
          child: Container(
            height: 500,
            child: SingleChildScrollView(
              // scrollDirection: Axis.horizontal,
              child: Container(
                  height: 1000,
                  width: 500,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            width: 150,
                            height: 50,
                          ),
                          Column(
                            children: [
                              ComInputText(
                                isEnabled: COILCOATING.nc,
                                sLabel: "MATCP NO.",
                                height: 40,
                                width: 300,
                                isContr: COILCOATING.iscon01,
                                fnContr: (input) {
                                  COILCOATING.iscon01 = input;
                                },
                                sValue: COILCOATING.con01,
                                returnfunc: (String s) {
                                  COILCOATING.con01 = s;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ComInputText(
                                sLabel: "NAME",
                                height: 40,
                                width: 300,
                                isContr: COILCOATING.iscon01,
                                fnContr: (input) {
                                  COILCOATING.iscon01 = input;
                                },
                                sValue: COILCOATING.con02,
                                returnfunc: (String s) {
                                  COILCOATING.con02 = s;
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: const [
                                  SizedBox(
                                    height: 64,
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 40,
                                        // color: Colors.red,
                                        child: Center(child: Text("Color")),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 64,
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 40,
                                        // color: Colors.red,
                                        child:
                                            Center(child: Text("Appearance")),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ComInputText(
                                    sLabel: "Color",
                                    height: 40,
                                    width: 200,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.con03,
                                    returnfunc: (String s) {
                                      COILCOATING.con03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    sLabel: "Appearance",
                                    height: 40,
                                    width: 200,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.con04,
                                    returnfunc: (String s) {
                                      COILCOATING.con04 = s;
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: const [
                                  SizedBox(
                                    height: 64,
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 40,
                                        // color: Colors.red,
                                        child: Center(child: Text("S.G.")),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 64,
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 40,
                                        // color: Colors.blue,
                                        child: Center(child: Text("F.A.")),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 64,
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 40,
                                        // color: Colors.blue,
                                        child: Center(child: Text("T.A.")),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 64,
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 40,
                                        // color: Colors.blue,
                                        child: Center(child: Text("T.Al")),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 64,
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 40,
                                        // color: Colors.blue,
                                        child: Center(child: Text("Ph")),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 64,
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 40,
                                        // color: Colors.blue,
                                        child: Center(child: Text("%NVC")),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 64,
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 40,
                                        // color: Colors.blue,
                                        child: Center(child: Text("Purity")),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMIN01,
                                    returnfunc: (String s) {
                                      COILCOATING.conMIN01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMIN02,
                                    returnfunc: (String s) {
                                      COILCOATING.conMIN02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMIN03,
                                    returnfunc: (String s) {
                                      COILCOATING.conMIN03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMIN04,
                                    returnfunc: (String s) {
                                      COILCOATING.conMIN04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMIN05,
                                    returnfunc: (String s) {
                                      COILCOATING.conMIN05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMIN06,
                                    returnfunc: (String s) {
                                      COILCOATING.conMIN06 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMIN07,
                                    returnfunc: (String s) {
                                      COILCOATING.conMIN07 = s;
                                    },
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMAX01,
                                    returnfunc: (String s) {
                                      COILCOATING.conMAX01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMAX02,
                                    returnfunc: (String s) {
                                      COILCOATING.conMAX02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMAX03,
                                    returnfunc: (String s) {
                                      COILCOATING.conMAX03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMAX04,
                                    returnfunc: (String s) {
                                      COILCOATING.conMAX04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMAX05,
                                    returnfunc: (String s) {
                                      COILCOATING.conMAX05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMAX06,
                                    returnfunc: (String s) {
                                      COILCOATING.conMAX06 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: COILCOATING.iscon01,
                                    fnContr: (input) {
                                      COILCOATING.iscon01 = input;
                                    },
                                    sValue: COILCOATING.conMAX07,
                                    returnfunc: (String s) {
                                      COILCOATING.conMAX07 = s;
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 150,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                CoilCoatingContexttable.read<
                                        CoilCoatingDataSetBloc>()
                                    .add(UpdateDataPressed());
                                onLoadingType01(
                                    CoilCoatingContexttable,
                                    () {},
                                    CoilCoatingContexttable.read<
                                            CoilCoatingDataSetBloc>()
                                        .add(GetDataPressed()));
                              },
                              // style: ButtonStyle(
                              //   backgroundColor:
                              //       MaterialStateProperty.all(Colors.red),
                              // ),
                              child: const Text("UPDATE"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ),
      );
    },
  );
}
