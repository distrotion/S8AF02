import 'package:flutter/material.dart';

import 'page1.dart';
import 'page10.dart';
import 'page11.dart';
import 'page8.dart';

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page0Body();
  }
}

class Page0Body extends StatelessWidget {
  const Page0Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page1();
  }
}
