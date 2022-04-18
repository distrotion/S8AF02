import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/02-CoilCoating.dart';
import '../data/global.dart';
import '../data/model.dart';
import 'P2COILCOATING/CoilCoatingMain.dart';
import 'page0.dart';
import '../data/global.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page2BlocTableBody();
    ;
  }
}

class Page2BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page2BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CoilCoatingDataSetBloc(),
        child: BlocBuilder<CoilCoatingDataSetBloc, List<dataset>>(
          builder: (context, data) {
            return Page2Body(
              data: data,
            );
          },
        ));
  }
}

class Page2Body extends StatelessWidget {
  Page2Body({Key? key, this.data}) : super(key: key);
  List<dataset>? data;
  @override
  Widget build(BuildContext context) {
    return CoilCoatingMain(
      data: data,
    );
  }
}
