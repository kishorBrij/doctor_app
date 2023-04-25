import 'package:doctor_app/login_page.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              padding: const EdgeInsets.only(top: 100,left: 10,right: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Old Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )

                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "New Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                      
                ),
              ),
            ),
            
            Container(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Conform New Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                      
                ),
              ),
            ),

            const SizedBox(height: 20,),

            GestureDetector(
              onTap: (){

              },
              child: Container(
                width: double.infinity,
                height: 40,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.cyan,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Text(
                    "Submit",
                  style: TextStyle(fontSize: 20,color: Colors.white),

                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.pop(context, );

              },
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: const Text(
                    "Back",
                  style: TextStyle(fontSize: 20,color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
