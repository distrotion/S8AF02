import 'package:flutter/material.dart';

import '../../data/model.dart';
import 'CoilCoatingTable.dart';

class CoilCoatingMain extends StatelessWidget {
  CoilCoatingMain({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    // print('PremixMain-->${data}');
    return Center(
      child: CoilCoatingDataTable(
        data: data,
      ),
    );
  }
}
