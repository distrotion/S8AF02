import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/07-Liquid.dart';
import '../bloc/BlocEvent/10-dropdown.dart';
import '../data/model.dart';
import 'P7LIQUID/LIQUIDMain.dart';
import 'P7LIQUID/LIQUIDVar.dart';
import 'page0.dart';
import '../data/global.dart';

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page7BlocDROPDOWN();
  }
}

class Page7BlocDROPDOWN extends StatelessWidget {
  /// {@macro counter_page}
  const Page7BlocDROPDOWN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => DROPDOWN_BLOCK(),
        child: BlocBuilder<DROPDOWN_BLOCK, dropdown>(
          builder: (context, DD) {
            LIQUID.CO = DD.CO;
            LIQUID.AP = DD.AP;
            return Page7BlocTableBody();
          },
        ));
  }
}

class Page7BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page7BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => LIQUIDDataSetBloc(),
        child: BlocBuilder<LIQUIDDataSetBloc, List<dataset>>(
          builder: (context, data) {
            return Page7Body(
              data: data,
            );
          },
        ));
  }
}

class Page7Body extends StatelessWidget {
  Page7Body({Key? key, this.data}) : super(key: key);
  List<dataset>? data;
  @override
  Widget build(BuildContext context) {
    return LIQUIDMain(
      data: data ?? [],
    );
  }
}
