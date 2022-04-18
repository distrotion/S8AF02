import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/03-HydroPhilic.dart';
import '../data/model.dart';
import 'P3HYDROPHILIC/HydrophilicMain.dart';
import 'page0.dart';
import '../data/global.dart';
import 'dart:async';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page3BlocTableBody();
  }
}

class Page3BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page3BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => HydrophilicDataSetBloc(),
        child: BlocBuilder<HydrophilicDataSetBloc, List<dataset>>(
          builder: (context, data) {
            return Page3Body(
              data: data,
            );
          },
        ));
  }
}

class Page3Body extends StatelessWidget {
  Page3Body({Key? key, this.data}) : super(key: key);
  List<dataset>? data;
  @override
  Widget build(BuildContext context) {
    return HydrophilicMain(
      data: data,
    );
  }
}
