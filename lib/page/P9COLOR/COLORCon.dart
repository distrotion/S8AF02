import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/09-Wording.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/Loading.dart';
import 'COLORTable.dart';
import 'COLORVar.dart';

void COLORConsoleBox() {
  showDialog(
    context: COLORContexttable,
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
                                isEnabled: COLOR.nc,
                                sLabel: "MATCP NO.",
                                height: 40,
                                width: 300,
                                isContr: COLOR.iscon01,
                                fnContr: (input) {
                                  COLOR.iscon01 = input;
                                },
                                sValue: COLOR.con01,
                                returnfunc: (String s) {
                                  COLOR.con01 = s;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ComInputText(
                                sLabel: "NAME",
                                height: 40,
                                width: 300,
                                isContr: COLOR.iscon01,
                                fnContr: (input) {
                                  COLOR.iscon01 = input;
                                },
                                sValue: COLOR.con02,
                                returnfunc: (String s) {
                                  COLOR.con02 = s;
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
                                COLORContexttable.read<WORDINGDataSetBloc>()
                                    .add(ColorUpPressed());
                                onLoadingType01(
                                    COLORContexttable,
                                    () {},
                                    COLORContexttable.read<WORDINGDataSetBloc>()
                                        .add(ColorGetPressed()));
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
