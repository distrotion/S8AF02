import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_login_v2/bloc/BlocEvent/09-Wording.dart';
import '../data/model.dart';
import 'P10APPEARANCE/APPEARANCEMain.dart';
import 'page0.dart';
import '../data/global.dart';

class Page11 extends StatelessWidget {
  const Page11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page11BlocTableBody();
  }
}

class Page11BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page11BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => WORDINGDataSetBloc(),
        child: BlocBuilder<WORDINGDataSetBloc, List<dataset>>(
          builder: (context, data) {
            return Page11Body(
              data: data,
            );
          },
        ));
  }
}

class Page11Body extends StatelessWidget {
  Page11Body({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    return APPEARANCEMain(
      data: data,
    );
  }
}
