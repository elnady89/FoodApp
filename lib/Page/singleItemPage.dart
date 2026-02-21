import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class singleItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25,left: 15,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Icon(CupertinoIcons.cart_fill,
                      color: Colors.white,
                      size: 32,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Image.asset("asset/image/2.jpg",height: MediaQuery.of(context).size.height/1.7,
                  fit:BoxFit.cover,
                ),
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hot & Fresh Burger",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Row(children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              child: Icon(
                                CupertinoIcons.minus ,
                                size:20 ,
                              ),
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),

                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("3",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap:(){},
                            child: Container(
                              child: Icon(
                                CupertinoIcons.plus,
                                size:20 ,
                              ),
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ],)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("We bring you the burger with cheese served with onion, cold drink and"
                      "fries. We bring you the burger with cheese served with onion, cold drink"
                      "and fries.",style: TextStyle(color: Colors.grey,fontSize: 16),
                  ),
                 SizedBox(height: 25),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       children: [
                         SizedBox(height: 15),
                         Text("Total Price",style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.w500),
                         ),
                         SizedBox(height: 5,),
                         Text("\$1500",style: TextStyle(fontSize:22,fontWeight: FontWeight.bold,color: Colors.white),),
                       ],
                     ),
                     InkWell(
                       onTap: (){},
                       child: Container(
                         margin: EdgeInsets.only(top: 20),
                         padding: EdgeInsets.symmetric(vertical:16,horizontal:25),
                         decoration: BoxDecoration(
                           color: Color(0xFFEFB322),
                           borderRadius: BorderRadius.only(
                             topRight: Radius.circular(30),
                             bottomLeft: Radius.circular(20)
                           )
                         ),
                         child: Row(
                           children: [
                             Text("Buy Now ",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                             SizedBox(width: 10,),
                             Icon(CupertinoIcons.cart_fill,color: Colors.white,size: 38,)


                           ],
                         ),
                       ),
                     )
                   ],
                 )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
