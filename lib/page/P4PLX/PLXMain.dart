import 'package:flutter/material.dart';

import '../../data/model.dart';
import 'PLXTable.dart';

class PLXMain extends StatelessWidget {
  PLXMain({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    // print('PremixMain-->${data}');
    return Center(
      child: PLXDataTable(
        data: data,
      ),
    );
  }
}
