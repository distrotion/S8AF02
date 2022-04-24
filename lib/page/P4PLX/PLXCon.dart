import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/04-PLX.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/Easydropdown.dart';
import '../../widget/common/Loading.dart';
import 'PLXTable.dart';
import 'PLXVar.dart';

void PLXConsoleBox() {
  showDialog(
    context: PLXContexttable,
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
                                isEnabled: PLX.nc,
                                sLabel: "MATCP NO.",
                                height: 40,
                                width: 300,
                                isContr: PLX.iscon01,
                                fnContr: (input) {
                                  PLX.iscon01 = input;
                                },
                                sValue: PLX.con01,
                                returnfunc: (String s) {
                                  PLX.con01 = s;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ComInputText(
                                sLabel: "NAME",
                                height: 40,
                                width: 300,
                                isContr: PLX.iscon01,
                                fnContr: (input) {
                                  PLX.iscon01 = input;
                                },
                                sValue: PLX.con02,
                                returnfunc: (String s) {
                                  PLX.con02 = s;
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: const [
                                  SizedBox(
                                    height: 40,
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
                                    height: 40,
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
                                  // ComInputText(
                                  //   sLabel: "Color",
                                  //   height: 40,
                                  //   width: 200,
                                  //   isContr: PLX.iscon01,
                                  //   fnContr: (input) {
                                  //     PLX.iscon01 = input;
                                  //   },
                                  //   sValue: PLX.con03,
                                  //   returnfunc: (String s) {
                                  //     PLX.con03 = s;
                                  //   },
                                  // ),
                                  // ComInputText(
                                  //   sLabel: "Appearance",
                                  //   height: 40,
                                  //   width: 200,
                                  //   isContr: PLX.iscon01,
                                  //   fnContr: (input) {
                                  //     PLX.iscon01 = input;
                                  //   },
                                  //   sValue: PLX.con04,
                                  //   returnfunc: (String s) {
                                  //     PLX.con04 = s;
                                  //   },
                                  // ),
                                  EasyDropDown(
                                      listdropdown: PLX.CO,
                                      onChangeinside: (input) {
                                        PLX.con03 = input;
                                      },
                                      value: PLX.con03,
                                      width: 200,
                                      height: 40),
                                  EasyDropDown(
                                      listdropdown: PLX.AP,
                                      onChangeinside: (input) {
                                        PLX.con04 = input;
                                      },
                                      value: PLX.con04,
                                      width: 200,
                                      height: 40),
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
                                        child:
                                            Center(child: Text("Total conc")),
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
                                        child: Center(child: Text("T-Hopeite")),
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
                                        child: Center(child: Text("F-Hopeite")),
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
                                        child: Center(child: Text("F/T")),
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
                                        child: Center(child: Text("Viscosity")),
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
                                        child: Center(child: Text("Size")),
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
                                ],
                              ),
                              Column(
                                children: [
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMIN01,
                                    returnfunc: (String s) {
                                      PLX.conMIN01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMIN02,
                                    returnfunc: (String s) {
                                      PLX.conMIN02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMIN03,
                                    returnfunc: (String s) {
                                      PLX.conMIN03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMIN04,
                                    returnfunc: (String s) {
                                      PLX.conMIN04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMIN05,
                                    returnfunc: (String s) {
                                      PLX.conMIN05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMIN06,
                                    returnfunc: (String s) {
                                      PLX.conMIN06 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMIN07,
                                    returnfunc: (String s) {
                                      PLX.conMIN07 = s;
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
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMAX01,
                                    returnfunc: (String s) {
                                      PLX.conMAX01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMAX02,
                                    returnfunc: (String s) {
                                      PLX.conMAX02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMAX03,
                                    returnfunc: (String s) {
                                      PLX.conMAX03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMAX04,
                                    returnfunc: (String s) {
                                      PLX.conMAX04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMAX05,
                                    returnfunc: (String s) {
                                      PLX.conMAX05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMAX06,
                                    returnfunc: (String s) {
                                      PLX.conMAX06 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: PLX.iscon01,
                                    fnContr: (input) {
                                      PLX.iscon01 = input;
                                    },
                                    sValue: PLX.conMAX07,
                                    returnfunc: (String s) {
                                      PLX.conMAX07 = s;
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
                                PLXContexttable.read<PLXDataSetBloc>()
                                    .add(UpdateDataPressed());
                                onLoadingType01(
                                    PLXContexttable,
                                    () {},
                                    PLXContexttable.read<PLXDataSetBloc>()
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
