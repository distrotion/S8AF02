import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/06-Powder.dart';
import '../bloc/BlocEvent/10-dropdown.dart';
import '../data/model.dart';
import 'P6POWDER/POWDERMain.dart';
import 'P6POWDER/POWDERVar.dart';
import 'page0.dart';
import '../data/global.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page6BlocDROPDOWN();
  }
}

class Page6BlocDROPDOWN extends StatelessWidget {
  /// {@macro counter_page}
  const Page6BlocDROPDOWN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => DROPDOWN_BLOCK(),
        child: BlocBuilder<DROPDOWN_BLOCK, dropdown>(
          builder: (context, DD) {
            POWDER.CO = DD.CO;
            POWDER.AP = DD.AP;
            return Page6BlocTableBody();
          },
        ));
  }
}

class Page6BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page6BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => POWDERDataSetBloc(),
        child: BlocBuilder<POWDERDataSetBloc, List<dataset>>(
          builder: (context, data) {
            return Page6Body(
              data: data,
            );
          },
        ));
  }
}

class Page6Body extends StatelessWidget {
  Page6Body({Key? key, this.data}) : super(key: key);
  List<dataset>? data;
  @override
  Widget build(BuildContext context) {
    return POWDERMain(
      data: data ?? [],
    );
  }
}
