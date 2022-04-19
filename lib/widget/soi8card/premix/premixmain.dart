import 'dart:ui';

import 'package:flutter/material.dart';

import '../card.dart';

class PREMIXcardBODY extends StatelessWidget {
  const PREMIXcardBODY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blueAccent,
          width: 700,
          height: 50,
        ),
        Container(
          color: Colors.grey,
          width: 700,
          // height: 100,\
          child: Center(
            child: Wrap(
              children: [
                CardBody(),
                CardBody(),
                CardBody(),
                CardBody(),
                CardBody(),
                CardBody(),
                CardBody(),
                CardBody(),
              ],
            ),
          ),
        ),
        Container(
          width: 700,
          height: 15,
          color: Colors.blueAccent,
        )
      ],
    );
  }
}
