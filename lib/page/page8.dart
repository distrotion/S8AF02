import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/08-Getlist.dart';
import '../data/model.dart';

import 'P8PROGRESS/PROGRESS.dart';
import 'page0.dart';
import '../data/global.dart';

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page8BlocTableBody();
  }
}

class Page8BlocTableBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page8BlocTableBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => GETSTAFFDATABloc(),
        child: BlocBuilder<GETSTAFFDATABloc, List<unitdata>>(
          builder: (context, data) {
            return Center(
              child: ProgressBody(
                data: data,
              ),
            );
          },
        ));
  }
}

// class Page8Body extends StatelessWidget {
//   Page8Body({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 100,
//         width: 100,
//         color: Colors.green,
//       ),
//     );
//   }
// }

