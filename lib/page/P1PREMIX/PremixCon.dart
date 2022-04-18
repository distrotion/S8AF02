import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/01-Premix.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/Loading.dart';
import 'PremixTable.dart';
import 'PremixVar.dart';

void PREMIXConsoleBox() {
  showDialog(
    context: PremixContexttable,
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
                                isEnabled: PREMIX.nc,
                                sLabel: "MATCP NO.",
                                height: 40,
                                width: 300,
                                isContr: PREMIX.iscon01,
                                fnContr: (input) {
                                  PREMIX.iscon01 = input;
                                },
                                sValue: PREMIX.con01,
                                returnfunc: (String s) {
                                  PREMIX.con01 = s;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ComInputText(
                                sLabel: "NAME",
                                height: 40,
                                width: 300,
                                isContr: PREMIX.iscon01,
                                fnContr: (input) {
                                  PREMIX.iscon01 = input;
                                },
                                sValue: PREMIX.con02,
                                returnfunc: (String s) {
                                  PREMIX.con02 = s;
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
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.con03,
                                    returnfunc: (String s) {
                                      PREMIX.con03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    sLabel: "Appearance",
                                    height: 40,
                                    width: 200,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.con04,
                                    returnfunc: (String s) {
                                      PREMIX.con04 = s;
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
                                        child: Center(child: Text("Zn")),
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
                                        child: Center(child: Text("Ni")),
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
                                        child: Center(child: Text("Mn")),
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
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMIN01,
                                    returnfunc: (String s) {
                                      PREMIX.conMIN01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMIN02,
                                    returnfunc: (String s) {
                                      PREMIX.conMIN02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMIN03,
                                    returnfunc: (String s) {
                                      PREMIX.conMIN03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMIN04,
                                    returnfunc: (String s) {
                                      PREMIX.conMIN04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMIN05,
                                    returnfunc: (String s) {
                                      PREMIX.conMIN05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMIN06,
                                    returnfunc: (String s) {
                                      PREMIX.conMIN06 = s;
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
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMAX01,
                                    returnfunc: (String s) {
                                      PREMIX.conMAX01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMAX02,
                                    returnfunc: (String s) {
                                      PREMIX.conMAX02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMAX03,
                                    returnfunc: (String s) {
                                      PREMIX.conMAX03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMAX04,
                                    returnfunc: (String s) {
                                      PREMIX.conMAX04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMAX05,
                                    returnfunc: (String s) {
                                      PREMIX.conMAX05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PREMIX.iscon01,
                                    fnContr: (input) {
                                      PREMIX.iscon01 = input;
                                    },
                                    sValue: PREMIX.conMAX06,
                                    returnfunc: (String s) {
                                      PREMIX.conMAX06 = s;
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
                                PremixContexttable.read<PremixDataSetBloc>()
                                    .add(UpdateDataPressed());
                                onLoadingType01(
                                    PremixContexttable,
                                    () {},
                                    PremixContexttable.read<PremixDataSetBloc>()
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
