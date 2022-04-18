import 'package:flutter/material.dart';

import '../widget/common/ComInputText.dart';

bool iscontext = false;
String dataSTR01 = '';

class Page1BodyT2 extends StatefulWidget {
  const Page1BodyT2({Key? key}) : super(key: key);

  @override
  State<Page1BodyT2> createState() => _Page1BodyT2State();
}

class _Page1BodyT2State extends State<Page1BodyT2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 64,
        width: 500,
        // color: Colors.blue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ComInputText(
              sLabel: "test",
              height: 40,
              isContr: iscontext,
              fnContr: (input) {
                setState(() {
                  iscontext = input;
                });
              },
              sValue: dataSTR01,
              returnfunc: (String s) {
                dataSTR01 = s;
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    // print(dataSTR01);

                    setState(() {
                      iscontext = true;
                      dataSTR01 = '';
                      //
                    });
                    // iscontext = false;
                  },
                  child: Text(dataSTR01),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class testbody extends StatefulWidget {
  // const testbody({Key? key}) : super(key: key);
  @override
  _testbodyState createState() => _testbodyState();
}

class _testbodyState extends State<testbody> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    Container subpage1 = Container(
      height: 200,
      width: 200,
      color: Colors.red,
    );
    Container subpage2 = Container(
      height: 200,
      width: 200,
      color: Colors.pink,
    );
    Container subpage3 = Container(
      height: 200,
      width: 200,
      color: Colors.orange,
    );
    Container out;
    if (x == 0) {
      out = subpage1;
    } else if (x == 1) {
      out = subpage2;
    } else {
      out = subpage3;
    }

    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                width: 100,
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                width: 100,
                color: Colors.black45,
              ),
            ),
          ],
        ),
        Center(child: out)
      ],
    );
  }
}

class timmerTEST extends StatefulWidget {
  const timmerTEST({Key? key}) : super(key: key);

  @override
  State<timmerTEST> createState() => _timmerTESTState();
}

int tic = 0;

class _timmerTESTState extends State<timmerTEST> {
  @override
  Widget build(BuildContext context) {
    // Timer.periodic(const Duration(seconds: 3), (timer) {
    //   tic++;
    //   print(tic);
    //   // setState(() {
    //   //   // debugPrint(timer.tick.toString());
    //   // });
    // });
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
        child: Text('${tic}'),
      ),
    );
  }
}


// Timer timer = new Timer(new Duration(seconds: 3), () {
//   debugPrint("Print after 3 seconds");
// });


//BlocProvider.of<SwPageCubit>(context).togglePage(page);
// BlocPageRebuild blocPageRebuild = BlocProvider.of<BlocPageRebuild>(context).rebuildPage();
