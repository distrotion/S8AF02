import 'package:flutter/material.dart';

//---------------------------------------------------------
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_login_v2/bloc/BlocEvent/10-dropdown.dart';

import '../bloc/BlocEvent/01-Premix.dart';
import '../bloc/cubit/NotificationEvent.dart';
import '../data/model.dart';
import '../widget/common/ComInputText.dart';
import 'P1PREMIX/PremixMain.dart';
import 'P1PREMIX/PremixVar.dart';
import 'page0.dart';
import '../data/global.dart';

//---------------------------------------------------------

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page1BlocDROPDOWN();
  }
}

class Page1BlocDROPDOWN extends StatelessWidget {
  /// {@macro counter_page}
  const Page1BlocDROPDOWN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => DROPDOWN_BLOCK(),
        child: BlocBuilder<DROPDOWN_BLOCK, dropdown>(
          builder: (context, DD) {
            PREMIX.CO = DD.CO;
            PREMIX.AP = DD.AP;
            return Page1BlocTableBody();
          },
        ));
  }
}

class Page1BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page1BlocTableBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => PremixDataSetBloc(),
        child: BlocBuilder<PremixDataSetBloc, List<dataset>>(
          builder: (context, data) {
            return Page1Body(data: data);
          },
        ));
  }
}

class Page1Body extends StatelessWidget {
  Page1Body({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    // print('Page1Body-->${data}');

    return PremixMain(
      data: data,
    );
  }
}
