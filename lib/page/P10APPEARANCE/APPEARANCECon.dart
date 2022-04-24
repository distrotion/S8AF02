import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/09-Wording.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/Loading.dart';
import 'APPEARANCETable.dart';
import 'APPEARANCEVar.dart';

void APPEARANCEConsoleBox() {
  showDialog(
    context: APPEARANCEContexttable,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Container(
        // APPEARANCE: APPEARANCEs.blue,
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
                                isEnabled: APPEARANCE.nc,
                                sLabel: "MATCP NO.",
                                height: 40,
                                width: 300,
                                isContr: APPEARANCE.iscon01,
                                fnContr: (input) {
                                  APPEARANCE.iscon01 = input;
                                },
                                sValue: APPEARANCE.con01,
                                returnfunc: (String s) {
                                  APPEARANCE.con01 = s;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ComInputText(
                                sLabel: "NAME",
                                height: 40,
                                width: 300,
                                isContr: APPEARANCE.iscon01,
                                fnContr: (input) {
                                  APPEARANCE.iscon01 = input;
                                },
                                sValue: APPEARANCE.con02,
                                returnfunc: (String s) {
                                  APPEARANCE.con02 = s;
                                },
                              ),
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
                                APPEARANCEContexttable.read<
                                        WORDINGDataSetBloc>()
                                    .add(AppearanceUpPressed());
                                onLoadingType01(
                                    APPEARANCEContexttable,
                                    () {},
                                    APPEARANCEContexttable.read<
                                            WORDINGDataSetBloc>()
                                        .add(AppearanceGetPressed()));
                              },
                              // style: ButtonStyle(
                              //   backgroundAPPEARANCE:
                              //       MaterialStateProperty.all(APPEARANCEs.red),
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
