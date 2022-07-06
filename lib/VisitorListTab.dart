import 'package:assesment/VisitorItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyThemeData.dart';

class VisitorListTab extends StatefulWidget {
  const VisitorListTab({Key? key}) : super(key: key);

  @override
  State<VisitorListTab> createState() => _VisitorListTabState();
}

class _VisitorListTabState extends State<VisitorListTab> {
  bool ismute = true;
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) =>
    orientation==Orientation.portrait?Column(

      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: MediaQuery.of(context).size.height*0.21,
          decoration: BoxDecoration(
            color:  MythemeData.redcolor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)),
          ),
          child: Stack(
            children: [
              new Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color.fromRGBO(197, 42, 40, 1)),
                ),
                top: -100,
                left: -100,
                right: 200,
                bottom: 50,
              ),
              new Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MythemeData.redcolor,
                    border: Border.all(
                      color: Colors.white30,
                      width: 1,
                    ),
                  ),
                ),
                top: 50,
                right: -80,
                left: 60,
                bottom: -75,
              ),
              new Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 200)),
                ),
                top: -100,
                right: -100,
                left: 200,
                bottom: 50,
              ),
              Container(
                padding: EdgeInsets.all(2),
                height: 35,
                width: 35,
                margin: EdgeInsets.only(
                  top: 40,
                  left: 20,
                ),
                child: Image.asset(
                  'assets/images/settings.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                  left: 60,
                  right: 60,
                ),
                padding: EdgeInsets.only( left: 4),
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft:Radius.circular(5) )
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Search',textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.redAccent.shade200,

                    ),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 35,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: MythemeData.redcolor,
                ),
                margin: EdgeInsets.only(
                  top: 40,
                  left: 300,
                ),
                child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
              //SizedBox(height: 80,),
              Container(
                  margin: EdgeInsets.only(
                    top: 100,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (ismute == true) {
                              ismute = false;
                            } else {
                              ismute = true;
                            }
                          });
                        },
                        child: ismute == true
                            ? getmuteitem('unmute', context)
                            : getunmuteitem('mute', context),
                      ),
                      Column(
                        children: [
                          Text('Visitors',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text('270000',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.only(left: 10, right: 10,bottom: 10),
                  child: VisitorItem());
            },
            itemCount: 10,
          ),
        )


      ],
    ) :
    Column(

      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: MediaQuery.of(context).size.height*0.45,
          decoration: BoxDecoration(
            color: MythemeData.redcolor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)),
          ),
          child: Stack(
            children: [
              new Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,  color: Color.fromRGBO(197, 42, 40, 1)),
                ),
                top: -100,
                left: -350,
                right: 200,
                bottom: 50,
              ),
              new Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MythemeData.redcolor,
                    border: Border.all(
                      color: Colors.white30,
                      width: 1,
                    ),
                  ),
                ),
                top: 50,
                right: -380,
                left: 60,
                bottom: -75,
              ),
              new Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 200)),
                ),
                top: -100,
                right: -350,
                left: 200,
                bottom: 50,
              ),
              Container(
                padding: EdgeInsets.all(2),
                height: 35,
                width: 35,
                margin: EdgeInsets.only(
                  top: 40,
                  left: 75,
                ),
                child: Image.asset(
                  'assets/images/settings.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                  left: 120,
                  right: 120,
                ),
                padding: EdgeInsets.only( left: 4),
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft:Radius.circular(5) )
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Search',textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.redAccent.shade200,

                    ),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 35,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: MythemeData.redcolor,
                ),
                margin: EdgeInsets.only(
                  top: 40,
                  left: 573,
                ),
                child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
              //SizedBox(height: 80,),
              Container(
                  margin: EdgeInsets.only(
                    top: 100,
                    left: 70,
                    right: 80,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (ismute == true) {
                              ismute = false;
                            } else {
                              ismute = true;
                            }
                          });
                        },
                        child: ismute == true
                            ? getmuteitem('unmute', context)
                            : getunmuteitem('mute', context),
                      ),
                      Column(
                        children: [
                          Text('Visitors',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text('270000',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.only(left: 10, right: 10,bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(left:30 ,top:12 ,bottom: 12),
                    height: 150,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                'assets/images/egypt.png',
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Ahmed',style: MythemeData.lighttheme.textTheme.headline3),
                                Text('Cairo,Egypt',style: MythemeData.lighttheme.textTheme.headline4,)
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.52,
                            ),
                            Text(
                              'Last Visit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black
                              ),
                            ),Text(
                              '15 Aug ,01:32:55',
                              style: MythemeData.lighttheme.textTheme.headline1,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                'assets/images/comment.png',
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.black12,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                'assets/images/date.png',
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Date',
                                    textAlign: TextAlign.start,
                                    style: MythemeData.lighttheme.textTheme.headline3
                                ),
                                Text(
                                  '15 Aug ,01:32:55',
                                  style: MythemeData.lighttheme.textTheme.headline1,
                                )
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.58,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                'assets/images/ip.png',
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('IP',style: MythemeData.lighttheme.textTheme.headline3,),
                                Text('192.255.168.15',
                                    style: MythemeData.lighttheme.textTheme.headline1),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                'assets/images/redirected.png',
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Redirected',
                                  textAlign: TextAlign.start,
                                  style: MythemeData.lighttheme.textTheme.headline3,
                                ),
                                Text(
                                  'www.google.com',
                                  style: MythemeData.lighttheme.textTheme.headline1,
                                )
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.58,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                'assets/images/homepage.png',
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Homepage',style: MythemeData.lighttheme.textTheme.headline3,),
                                Text('www.souq.com',
                                    style: MythemeData.lighttheme.textTheme.headline1),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ));
            },
            itemCount: 10,
          ),
        )


      ],
    )
    );

  }

  Widget getmuteitem(String text, BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Column(
        children: [
          Container(
            height: 20,
            width: 20,
            child: Image.asset(
              'assets/images/mute.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(text,
              style: TextStyle(
                color: Colors.white,
              )),
        ],
      ),
    );
  }

  Widget getunmuteitem(String text, BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Column(
        children: [
          Container(
            height: 20,
            width: 20,
            child: Image.asset(
              'assets/images/unmute.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(text,
              style: TextStyle(
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
