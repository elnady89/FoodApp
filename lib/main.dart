
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/Page/HomePage.dart';
import 'package:foodapp/Page/singleItemPage.dart';
 void main(){
   runApp(MyApp());
 }
 class MyApp extends StatefulWidget {
   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   @override
   void initState(){
     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
     super.initState();
   }


     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         routes: {
           "/" : (context) => Homepage(),
           "singleItemPage" : (context) => singleItemPage(),
         },
       );
     }
 }

