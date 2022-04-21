import 'package:flutter/material.dart';

import '../../data/model.dart';
import 'POWDERTable.dart';

class POWDERMain extends StatelessWidget {
  POWDERMain({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  Widget build(BuildContext context) {
    // print('PremixMain-->${data}');
    return Center(
      child: POWDERDataTable(
        data: data,
      ),
    );
  }
}
