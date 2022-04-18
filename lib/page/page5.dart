import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/05-Tritrating.dart';
import '../data/model.dart';
import 'P5TRITRATING/TRITRATINGMain.dart';
import 'page0.dart';
import '../data/global.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page5BlocTableBody();
  }
}

class Page5BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page5BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TRITRATINGDataSetBloc(),
        child: BlocBuilder<TRITRATINGDataSetBloc, List<dataset>>(
          builder: (context, data) {
            return Page5Body(
              data: data,
            );
          },
        ));
  }
}

class Page5Body extends StatelessWidget {
  Page5Body({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    return TRITRATINGMain(
      data: data,
    );
  }
}
