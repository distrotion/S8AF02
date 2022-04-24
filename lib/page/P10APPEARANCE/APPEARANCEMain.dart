import 'package:flutter/material.dart';

import '../../data/model.dart';
import 'APPEARANCETable.dart';

class APPEARANCEMain extends StatelessWidget {
  APPEARANCEMain({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    // print('PremixMain-->${data}');
    return Center(
      child: APPEARANCEDataTable(
        data: data,
      ),
    );
  }
}
