import 'package:flutter/material.dart';
import 'page0.dart';
import '../data/global.dart';

class Page11 extends StatelessWidget {
  const Page11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page11Body();
  }
}

class Page11Body extends StatelessWidget {
  const Page11Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
        child: Text("11"),
      ),
    );
  }
}
