import 'package:assesment/VisitorItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisitorListTab extends StatefulWidget {
  const VisitorListTab({Key? key}) : super(key: key);

  @override
  State<VisitorListTab> createState() => _VisitorListTabState();
}

class _VisitorListTabState extends State<VisitorListTab> {
  bool ismute=true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          // padding: EdgeInsets.only(bottom: 200),
          // margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
          ),
          child: Stack(
            children: [
              new Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red.shade700),
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
                    color: Colors.redAccent,
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


              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                  left: 60,
                  right: 60,
                ),
                padding: EdgeInsets.only(top: 6,left: 10),
                height: 35,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text('Search',style: TextStyle(color: Colors.redAccent.shade200,),),


              ),
              Container(
                height: 35,
                width: 35,
                color: Colors.redAccent,
                margin: EdgeInsets.only(
                  top: 40,
                  left: 300,

                ),

                child: IconButton(onPressed: (){

                }, icon: Icon(Icons.search,color: Colors.white,)),

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
                        onTap: (){

                          setState(() {
                            if(ismute==true){
                              ismute=false;
                            }
                            else{
                              ismute=true;
                            }

                          });
                        },
                        child:
                        ismute==true?getmuteitem('unmute', context):
                        getunmuteitem('mute', context),
                      ),
                      Column(
                        children: [
                          Text('Visitors',style: TextStyle(color: Colors.white,)),
                          SizedBox(height: 5,),
                          Text('270000',style: TextStyle(color: Colors.white,)),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context,index){
            return Container(
              margin: EdgeInsets.only(left: 10,right:10,bottom: 10),
                child: VisitorItem());
          },itemCount: 10,),
        )
      ],
    );
  }

  Widget getmuteitem(String text, BuildContext context) {
    return Column(
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
        SizedBox(height: 5,),
        Text(text,style: TextStyle(color: Colors.white,)),
      ],
    );
  }

  Widget getunmuteitem(String text, BuildContext context) {
    return Column(
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
        SizedBox(height: 5,),
        Text(text,style: TextStyle(color: Colors.white,)),
      ],
    );
  }
}
