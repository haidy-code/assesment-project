import 'package:flutter/material.dart';

class VisitorItem extends StatelessWidget {
  const VisitorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.white,
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
              SizedBox(width: 10,),
              Text('Ahmed'),
              SizedBox(width: 160,),
              Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/images/new.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),


              ),
              SizedBox(width: 10,),
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
          SizedBox(height: 10,),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black12,
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/images/date.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),


              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date',textAlign: TextAlign.start,),
                  Text('15 Aug ,01:32:55',style: TextStyle(color: Colors.redAccent),)
                ],
              ),
              SizedBox(width: 20,),
              Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/images/ip.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),


              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('IP'),
    Text('15 Aug ,01:32:55',style: TextStyle(color: Colors.redAccent)),
                ],
              ),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/images/redirected.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),


              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Redirected',textAlign: TextAlign.start,),
                  Text('15 Aug ,01:32:55',style: TextStyle(color: Colors.redAccent),)
                ],
              ),
              SizedBox(width: 20,),
              Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/images/homepage.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),


              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Homepage'),
                  Text('15 Aug ,01:32:55',style: TextStyle(color: Colors.redAccent)),
                ],
              ),

            ],
          ),

        ],
      ),
    );
  }
}
