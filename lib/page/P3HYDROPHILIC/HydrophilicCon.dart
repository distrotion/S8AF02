import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/03-HydroPhilic.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/Loading.dart';
import 'HydrophilicTable.dart';
import 'HydrophilicVar.dart';

void HYDROPHILICConsoleBox() {
  showDialog(
    context: HydrophilicContexttable,
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
                                isEnabled: HYDROPHILIC.nc,
                                sLabel: "MATCP NO.",
                                height: 40,
                                width: 300,
                                isContr: HYDROPHILIC.iscon01,
                                fnContr: (input) {
                                  HYDROPHILIC.iscon01 = input;
                                },
                                sValue: HYDROPHILIC.con01,
                                returnfunc: (String s) {
                                  HYDROPHILIC.con01 = s;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ComInputText(
                                sLabel: "NAME",
                                height: 40,
                                width: 300,
                                isContr: HYDROPHILIC.iscon01,
                                fnContr: (input) {
                                  HYDROPHILIC.iscon01 = input;
                                },
                                sValue: HYDROPHILIC.con02,
                                returnfunc: (String s) {
                                  HYDROPHILIC.con02 = s;
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
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.con03,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.con03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    sLabel: "Appearance",
                                    height: 40,
                                    width: 200,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.con04,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.con04 = s;
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
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMIN01,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMIN01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMIN02,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMIN02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMIN03,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMIN03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMIN04,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMIN04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMIN05,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMIN05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMIN06,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMIN06 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMIN07,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMIN07 = s;
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
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMAX01,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMAX01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMAX02,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMAX02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMAX03,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMAX03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMAX04,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMAX04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMAX05,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMAX05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMAX06,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMAX06 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: HYDROPHILIC.iscon01,
                                    fnContr: (input) {
                                      HYDROPHILIC.iscon01 = input;
                                    },
                                    sValue: HYDROPHILIC.conMAX07,
                                    returnfunc: (String s) {
                                      HYDROPHILIC.conMAX07 = s;
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
                                HydrophilicContexttable.read<
                                        HydrophilicDataSetBloc>()
                                    .add(UpdateDataPressed());
                                onLoadingType01(
                                    HydrophilicContexttable,
                                    () {},
                                    HydrophilicContexttable.read<
                                            HydrophilicDataSetBloc>()
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
