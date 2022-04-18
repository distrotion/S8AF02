import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/05-Tritrating.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/Loading.dart';
import 'TRITRATINGTable.dart';
import 'TRITRATINGVar.dart';

void TRITRATINGConsoleBox() {
  showDialog(
    context: TRITRATINGContexttable,
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
                                isEnabled: TRITRATING.nc,
                                sLabel: "MATCP NO.",
                                height: 40,
                                width: 300,
                                isContr: TRITRATING.iscon01,
                                fnContr: (input) {
                                  TRITRATING.iscon01 = input;
                                },
                                sValue: TRITRATING.con01,
                                returnfunc: (String s) {
                                  TRITRATING.con01 = s;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ComInputText(
                                sLabel: "NAME",
                                height: 40,
                                width: 300,
                                isContr: TRITRATING.iscon01,
                                fnContr: (input) {
                                  TRITRATING.iscon01 = input;
                                },
                                sValue: TRITRATING.con02,
                                returnfunc: (String s) {
                                  TRITRATING.con02 = s;
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
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.con03,
                                    returnfunc: (String s) {
                                      TRITRATING.con03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    sLabel: "Appearance",
                                    height: 40,
                                    width: 200,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.con04,
                                    returnfunc: (String s) {
                                      TRITRATING.con04 = s;
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
                                        child: Center(child: Text("pH")),
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
                                        child: Center(child: Text("Factor")),
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
                                        child: Center(child: Text("A.Co.")),
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
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMIN01,
                                    returnfunc: (String s) {
                                      TRITRATING.conMIN01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMIN02,
                                    returnfunc: (String s) {
                                      TRITRATING.conMIN02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMIN03,
                                    returnfunc: (String s) {
                                      TRITRATING.conMIN03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMIN04,
                                    returnfunc: (String s) {
                                      TRITRATING.conMIN04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMIN05,
                                    returnfunc: (String s) {
                                      TRITRATING.conMIN05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMIN06,
                                    returnfunc: (String s) {
                                      TRITRATING.conMIN06 = s;
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
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMAX01,
                                    returnfunc: (String s) {
                                      TRITRATING.conMAX01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMAX02,
                                    returnfunc: (String s) {
                                      TRITRATING.conMAX02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMAX03,
                                    returnfunc: (String s) {
                                      TRITRATING.conMAX03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMAX04,
                                    returnfunc: (String s) {
                                      TRITRATING.conMAX04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMAX05,
                                    returnfunc: (String s) {
                                      TRITRATING.conMAX05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: TRITRATING.iscon01,
                                    fnContr: (input) {
                                      TRITRATING.iscon01 = input;
                                    },
                                    sValue: TRITRATING.conMAX06,
                                    returnfunc: (String s) {
                                      TRITRATING.conMAX06 = s;
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
                                TRITRATINGContexttable.read<
                                        TRITRATINGDataSetBloc>()
                                    .add(UpdateDataPressed());
                                onLoadingType01(
                                    TRITRATINGContexttable,
                                    () {},
                                    TRITRATINGContexttable.read<
                                            TRITRATINGDataSetBloc>()
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
