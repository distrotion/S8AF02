import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/09-Wording.dart';
import '../data/model.dart';
import 'P9COLOR/COLORTable.dart';
import 'page0.dart';
import '../data/global.dart';

class Page10 extends StatelessWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page10BlocTableBody();
  }
}

class Page10BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page10BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => WORDINGDataSetBloc(),
        child: BlocBuilder<WORDINGDataSetBloc, List<dataset>>(
          builder: (context, data) {
            return Page10Body(
              data: data,
            );
          },
        ));
  }
}

class Page10Body extends StatelessWidget {
  Page10Body({Key? key, this.data}) : super(key: key);
  List<dataset>? data;
  @override
  Widget build(BuildContext context) {
    return COLORDataTable(
      data: data,
    );
  }
}
