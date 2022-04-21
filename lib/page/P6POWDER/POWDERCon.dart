import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/06-POWDER.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/Loading.dart';
import 'POWDERTable.dart';
import 'POWDERVar.dart';

void POWDERConsoleBox() {
  showDialog(
    context: POWDERContexttable,
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
                                isEnabled: POWDER.nc,
                                sLabel: "MATCP NO.",
                                height: 40,
                                width: 300,
                                isContr: POWDER.iscon01,
                                fnContr: (input) {
                                  POWDER.iscon01 = input;
                                },
                                sValue: POWDER.con01,
                                returnfunc: (String s) {
                                  POWDER.con01 = s;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ComInputText(
                                sLabel: "NAME",
                                height: 40,
                                width: 300,
                                isContr: POWDER.iscon01,
                                fnContr: (input) {
                                  POWDER.iscon01 = input;
                                },
                                sValue: POWDER.con02,
                                returnfunc: (String s) {
                                  POWDER.con02 = s;
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
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.con03,
                                    returnfunc: (String s) {
                                      POWDER.con03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    sLabel: "Appearance",
                                    height: 40,
                                    width: 200,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.con04,
                                    returnfunc: (String s) {
                                      POWDER.con04 = s;
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
                                        child: Center(child: Text("F.Al.")),
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
                                        child: Center(child: Text("T.AL")),
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
                                        child: Center(child: Text("ACO")),
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
                                        child: Center(child: Text("PH")),
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
                                        child: Center(child: Text("CR6")),
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
                                        child: Center(child: Text("Babcock")),
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
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMIN01,
                                    returnfunc: (String s) {
                                      POWDER.conMIN01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMIN02,
                                    returnfunc: (String s) {
                                      POWDER.conMIN02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMIN03,
                                    returnfunc: (String s) {
                                      POWDER.conMIN03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMIN04,
                                    returnfunc: (String s) {
                                      POWDER.conMIN04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMIN05,
                                    returnfunc: (String s) {
                                      POWDER.conMIN05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMIN06,
                                    returnfunc: (String s) {
                                      POWDER.conMIN06 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMIN07,
                                    returnfunc: (String s) {
                                      POWDER.conMIN07 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMIN08,
                                    returnfunc: (String s) {
                                      POWDER.conMIN08 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMIN09,
                                    returnfunc: (String s) {
                                      POWDER.conMIN09 = s;
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
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMAX01,
                                    returnfunc: (String s) {
                                      POWDER.conMAX01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMAX02,
                                    returnfunc: (String s) {
                                      POWDER.conMAX02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMAX03,
                                    returnfunc: (String s) {
                                      POWDER.conMAX03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMAX04,
                                    returnfunc: (String s) {
                                      POWDER.conMAX04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMAX05,
                                    returnfunc: (String s) {
                                      POWDER.conMAX05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMAX06,
                                    returnfunc: (String s) {
                                      POWDER.conMAX06 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMAX07,
                                    returnfunc: (String s) {
                                      POWDER.conMAX07 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMAX08,
                                    returnfunc: (String s) {
                                      POWDER.conMAX08 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: POWDER.iscon01,
                                    fnContr: (input) {
                                      POWDER.iscon01 = input;
                                    },
                                    sValue: POWDER.conMAX09,
                                    returnfunc: (String s) {
                                      POWDER.conMAX09 = s;
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
                                POWDERContexttable.read<POWDERDataSetBloc>()
                                    .add(UpdateDataPressed());
                                onLoadingType01(
                                    POWDERContexttable,
                                    () {},
                                    POWDERContexttable.read<POWDERDataSetBloc>()
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
