import 'package:flutter/material.dart';

import '../../data/model.dart';
import 'HydrophilicTable.dart';

class HydrophilicMain extends StatelessWidget {
  HydrophilicMain({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    // print('PremixMain-->${data}');
    return Center(
      child: HydrophilicDataTable(
        data: data,
      ),
    );
  }
}
