import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/07-Liquid.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/Easydropdown.dart';
import '../../widget/common/Loading.dart';
import 'LIQUIDTable.dart';
import 'LIQUIDVar.dart';

void LIQUIDConsoleBox() {
  showDialog(
    context: LIQUIDContexttable,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Container(
        // color: Colors.blue,
        child: Dialog(
          child: Container(
            height: 1800,
            child: SingleChildScrollView(
              // scrollDirection: Axis.horizontal,
              child: Container(
                  height: 1800,
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
                                isEnabled: LIQUID.nc,
                                sLabel: "MATCP NO.",
                                height: 40,
                                width: 300,
                                isContr: LIQUID.iscon01,
                                fnContr: (input) {
                                  LIQUID.iscon01 = input;
                                },
                                sValue: LIQUID.con01,
                                returnfunc: (String s) {
                                  LIQUID.con01 = s;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ComInputText(
                                sLabel: "NAME",
                                height: 40,
                                width: 300,
                                isContr: LIQUID.iscon01,
                                fnContr: (input) {
                                  LIQUID.iscon01 = input;
                                },
                                sValue: LIQUID.con02,
                                returnfunc: (String s) {
                                  LIQUID.con02 = s;
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
                                  //   isContr: LIQUID.iscon01,
                                  //   fnContr: (input) {
                                  //     LIQUID.iscon01 = input;
                                  //   },
                                  //   sValue: LIQUID.con03,
                                  //   returnfunc: (String s) {
                                  //     LIQUID.con03 = s;
                                  //   },
                                  // ),
                                  // ComInputText(
                                  //   sLabel: "Appearance",
                                  //   height: 40,
                                  //   width: 200,
                                  //   isContr: LIQUID.iscon01,
                                  //   fnContr: (input) {
                                  //     LIQUID.iscon01 = input;
                                  //   },
                                  //   sValue: LIQUID.con04,
                                  //   returnfunc: (String s) {
                                  //     LIQUID.con04 = s;
                                  //   },
                                  // ),
                                  EasyDropDown(
                                      listdropdown: LIQUID.CO,
                                      onChangeinside: (input) {
                                        LIQUID.con03 = input;
                                      },
                                      value: LIQUID.con03,
                                      width: 200,
                                      height: 40),
                                  EasyDropDown(
                                      listdropdown: LIQUID.AP,
                                      onChangeinside: (input) {
                                        LIQUID.con04 = input;
                                      },
                                      value: LIQUID.con04,
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
                                        child: Center(child: Text("AL")),
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
                                        child: Center(child: Text("CE")),
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
                                  //-------------------
                                  SizedBox(
                                    height: 64,
                                    width: 100,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 40,
                                        // color: Colors.blue,
                                        child: Center(child: Text("T.Cr")),
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
                                        child: Center(child: Text("%NV")),
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
                                        child: Center(child: Text("STARCH")),
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
                                        child: Center(child: Text("V")),
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
                                        child: Center(child: Text("Zr")),
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
                                        child: Center(child: Text("Ti")),
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
                                        child:
                                            Center(child: Text("Surfactant")),
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
                                        child: Center(child: Text("FE")),
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
                                        child: Center(child: Text("RP")),
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
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN01,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN02,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN03,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN04,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN05,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN06,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN06 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN07,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN07 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN08,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN08 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN09,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN09 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN10,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN10 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN11,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN11 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN12,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN12 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN13,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN13 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN14,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN14 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN15,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN15 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN16,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN16 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN17,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN17 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN18,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN18 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN19,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN19 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN20,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN20 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN21,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN21 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "min",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMIN22,
                                    returnfunc: (String s) {
                                      LIQUID.conMIN22 = s;
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
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX01,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX01 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX02,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX02 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX03,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX03 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX04,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX04 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX05,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX05 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX06,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX06 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX07,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX07 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX08,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX08 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX09,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX09 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX10,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX10 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX11,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX11 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX12,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX12 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX13,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX13 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX14,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX14 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX15,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX15 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX16,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX16 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX17,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX17 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX18,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX18 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX19,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX19 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX20,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX20 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX21,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX21 = s;
                                    },
                                  ),
                                  ComInputText(
                                    isNumberOnly: true,
                                    sLabel: "max",
                                    height: 40,
                                    width: 100,
                                    isContr: LIQUID.iscon01,
                                    fnContr: (input) {
                                      LIQUID.iscon01 = input;
                                    },
                                    sValue: LIQUID.conMAX22,
                                    returnfunc: (String s) {
                                      LIQUID.conMAX22 = s;
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
                                LIQUIDContexttable.read<LIQUIDDataSetBloc>()
                                    .add(UpdateDataPressed());
                                onLoadingType01(
                                    LIQUIDContexttable,
                                    () {},
                                    LIQUIDContexttable.read<LIQUIDDataSetBloc>()
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
