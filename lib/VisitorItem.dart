import 'package:assesment/MyThemeData.dart';
import 'package:flutter/material.dart';

class VisitorItem extends StatelessWidget {
  const VisitorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(12),
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
                width: MediaQuery.of(context).size.width*0.17,
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
                width: MediaQuery.of(context).size.width*0.28,
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
                width: MediaQuery.of(context).size.width*0.28,
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
    );
  }
}
