import 'package:doctor_app/bottom/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home_page.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Column(
        children: [
          Container(
              alignment:Alignment.center,
              margin: EdgeInsets.only(top: 150),
              child: Image.asset("asset/thumb.png",)),
          Container(
              margin: EdgeInsets.only(top: 50),
              alignment:Alignment.center,
              child: Text("Account Created!",
              style: TextStyle(fontSize: 30,color: Colors.teal),
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 22),
              alignment:Alignment.center,
              child: Text("Your Account has been Created",
                style: TextStyle(fontSize: 15,color: Colors.grey),
              )

          ),
          Container(
             // margin: EdgeInsets.only(top: 22),
              alignment:Alignment.center,
              child: Text("Successfully",
                style: TextStyle(fontSize: 15,color: Colors.grey),
              )

          ),

          GestureDetector(
            onTap: (){
              Get.to(HomePage());
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10,right: 10,top: 50),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Text("Get Started",
              style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
