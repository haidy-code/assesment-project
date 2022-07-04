import 'package:assesment/SettingsTab.dart';
import 'package:assesment/TimerTab.dart';
import 'package:assesment/VisitorListTab.dart';
import 'package:assesment/WarningTab.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routename = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentpage = 0;
  bool ismute=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.black12,
          bottomNavigationBar: CurvedNavigationBar(

            backgroundColor: Colors.redAccent,
            items: <Widget>[
              Icon(Icons.home_outlined, size: 25),
              Icon(Icons.access_time_rounded, size: 25),
              Icon(Icons.warning_amber_outlined, size: 25),
              Icon(Icons.settings, size: 25),
            ],
            onTap: (index) {
              currentpage=index;
              setState(() {

              });
              //Handle button tap
            },

          ),
        body:tabs[currentpage]
      ),
    );
  }
  List<Widget>tabs=[VisitorListTab(),TimerTab(),WarningTab(),SettingsTab()];

}
