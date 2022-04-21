import 'package:flutter/material.dart';

import '../../data/model.dart';
import 'LIQUIDTable.dart';

class LIQUIDMain extends StatelessWidget {
  LIQUIDMain({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    // print('PremixMain-->${data}');
    return Center(
      child: LIQUIDDataTable(
        data: data,
      ),
    );
  }
}
