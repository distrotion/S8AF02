import 'package:flutter/material.dart';

import '../widget/soi8card/premix/premixmain.dart';

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
    return Center(
      child: ProgressBody(),
    );
  }
}

class ProgressBody extends StatelessWidget {
  const ProgressBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2000,
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [PREMIXcardBODY()],
        ),
      ),
    );
  }
}
