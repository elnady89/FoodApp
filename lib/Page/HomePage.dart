
import 'package:flutter/material.dart';
import 'package:foodapp/Widget/HomeNavPage.dart';
import 'package:foodapp/Widget/items_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // there will bbe 4 tabs as examble
      child: Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
            child: Padding(
                padding:EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){},
                          child:Icon(
                              Icons.sort_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child:Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 35,
                          ),
                        )
                        ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                      padding:EdgeInsets.symmetric(horizontal: 5),
                    child:Text(" Hot & Fast Food",
                      style: TextStyle(color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 15),
                    child:Text("Delievers on Time",
                      style: TextStyle(color: Colors.white60,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TabBar(
                    //indicator: BoxDecoration(),
                      isScrollable: true,
                    labelStyle: TextStyle(fontSize: 20),
                    tabs: [
                      Tab(text: "Burger",),
                      Tab(text: "Pizza",),
                      Tab(text: "Hot",),
                      Tab(text: "Cheese",)
                    ],
                  ),
                  Flexible(
                    flex: 1,
                      child: TabBarView(
                          children:[
                            ItemsWidget(),
                            ItemsWidget(),
                            ItemsWidget(),
                            ItemsWidget(),
                          ]
                      )
                  )
                ],
              ),
            ),
        ),
        bottomNavigationBar: HomeNavpage(),
      ),
    );
  }
}
