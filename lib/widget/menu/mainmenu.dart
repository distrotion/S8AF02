import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/LoginEvent.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../mainBody.dart';
import '../../page/page1.dart';
import '../../page/page2.dart';
import '../../page/page3.dart';
import '../../page/page4.dart';
import '../../page/page5.dart';
import '../../page/page6.dart';
import '../../page/page7.dart';
import 'sub_widget.dart';

late BuildContext MenuContext;
bool menupop = false;

class MainMenu extends StatefulWidget {
  MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    MenuContext = context;
    //---------------------------------------------------------------

    return Container(
      height: (MediaQuery.of(context).size.height),
      width: 200,
      color: const Color(0xff0b1327),
      //color: Colors.red,
      child: ListView(
        children: [
          Center(
            child: Data_Menu_mainmenu(),
          )
        ],
      ),
    );
  }
}

class Data_Menu_mainmenu extends StatefulWidget {
  @override
  State<Data_Menu_mainmenu> createState() => _Data_Menu_mainmenuState();
}

class _Data_Menu_mainmenuState extends State<Data_Menu_mainmenu> {
  //const Data_Menu_mainmenu({Key? key},this.pagein) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, //Axis-Y
      crossAxisAlignment: CrossAxisAlignment.center, //Axis-X

      children: [
        const SizedBox(
          height: 20,
        ),
        Align(
            alignment: Alignment.center,
            child: Container(
                height: 40,
                width: 180,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsetsDirectional.all(1),
                  child: Container(
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo_tpk.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ))),
        InkWell(
          onTap: () {
            setState(() {
              if (menupop) {
                menupop = false;
              } else {
                menupop = true;
              }
            });
          },
          child: const SizedBox(
            height: 50,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "   MASTER MENU",
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
          ),
        ),
        if (menupop) ...[
          Container(
            height: 200,
            child: Column(
              children: [
                menu_sub(
                  name: "Premix",
                  page: Page1(),
                  Lv: 1,
                ),
                menu_sub(
                  name: "Coil Coating",
                  page: Page2(),
                  Lv: 1,
                ),
                menu_sub(
                  name: "Hydrophilic",
                  page: Page3(),
                  Lv: 1,
                ),
                menu_sub(
                  name: "PL-X",
                  page: Page4(),
                  Lv: 1,
                ),
                menu_sub(
                  name: "Tritrating",
                  page: Page5(),
                  Lv: 1,
                ),
              ],
            ),
          )
        ] else ...[
          SizedBox(),
        ],
        menu_normal(
          name: "APPROVE TO SCADA",
          page: Page6(),
          Lv: 1,
        ),
        menu_normal(
          name: "New Order",
          page: Page7(),
          Lv: 1,
        ),
        menu_logout(
          name: "Logout",
        ),
        const Divider(
          color: Color(0x4dffffff),
          height: 12,
        ),
      ],
    );
  }
}

class Logomenu extends StatelessWidget {
  const Logomenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      color: Colors.white,

      child: Padding(
        padding: const EdgeInsetsDirectional.all(1),
        child: Container(
          height: 35,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/images/logo_tpk.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),

      //color: Colors.white,
    );
  }
}

class menu_logout extends StatelessWidget {
  menu_logout({Key? key, this.name}) : super(key: key);
  String? name;

  @override
  Widget build(BuildContext context) {
    String _name = name ?? "";

    return InkWell(
      onTap: () {
        LoginContext.read<Login_Bloc>().add(Logout());
        // BlocProvider.of<SwPageCubit>(context).togglePage(page);
        // CuPage = page;
        // CuPageLV = Lv;
        // MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
      },
      child: Container(
        //color: Colors.blue,
        height: 50,
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 24,
                width: 24,
                child: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  // size: 30.0,
                ),
                // decoration: BoxDecoration(
                //   color: Colors.redAccent.shade400,

                //   // image: DecorationImage(
                //   //   image: AssetImage(""),
                //   //   fit: BoxFit.fitWidth,
                //   // ),
                //   //borderRadius: BorderRadius.all(Radius.circular(24.0)),
                // ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "   " + _name,
                style: const TextStyle(
                  fontFamily: 'Mitr',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
