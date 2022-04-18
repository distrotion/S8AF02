import 'package:flutter/material.dart';

import '../../data/model.dart';
import 'PremixTable.dart';

class PremixMain extends StatelessWidget {
  PremixMain({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    // print('PremixMain-->${data}');
    return Center(
      child: PremixDataTable(
        data: data,
      ),
    );
  }
}
