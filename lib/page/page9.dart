import 'package:flutter/material.dart';
import 'page0.dart';
import '../data/global.dart';

class Page9 extends StatelessWidget {
  const Page9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page9Body();
  }
}

class Page9Body extends StatelessWidget {
  const Page9Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
    );
  }
}

class RegisterBox extends StatelessWidget {
  const RegisterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 350,
        child: SingleChildScrollView(
            child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 50, end: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    onChanged: (value) {},
                    initialValue: "",
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'Production Order',
                      hintStyle: const TextStyle(
                        fontFamily: 'Mitr',
                        color: Color(0xffb2b2b2),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      // suffixIcon: Icon(
                      //   Icons.search,
                      // ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _RegisterButton(),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              "Register",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
          ),
        ));
  }
}
