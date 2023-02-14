import 'package:flutter/material.dart';
import 'package:test_reverpod/Screens/FutureProviderScreen.dart';
import 'package:test_reverpod/Screens/ProviderScreen.dart';
import 'package:test_reverpod/Screens/StateNotifiProviderScreen.dart';

import 'ChangeNotifiProviderScreen.dart';
import 'StateProviderScreen.dart';
import 'StreemProviderScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>ProviderScreen()));
            },
            child: Container(
              child: Text("Provider"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>StateProviderScreen()));
            },
            child: Container(
              child: Text("State Provider"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>FutureProviderScreen()));
            },
            child: Container(
              child: Text("Future Provider"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>StateNififiProviderScreen()));
            },
            child: Container(
              child: Text("State Notify Provider"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>ChangeNotifiPrivider()));
            },
            child: Container(
              child: Text("Change Notify Provider"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>StreemProviderScreen()));
            },
            child: Container(
              child: Text("Streem Provider"),
            ),
          ),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    ));
  }
}
