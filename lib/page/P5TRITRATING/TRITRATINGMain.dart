import 'package:flutter/material.dart';

import '../../data/model.dart';
import 'TRITRATINGTable.dart';

class TRITRATINGMain extends StatelessWidget {
  TRITRATINGMain({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    // print('PremixMain-->${data}');
    return Center(
      child: TRITRATINGDataTable(
        data: data,
      ),
    );
  }
}
