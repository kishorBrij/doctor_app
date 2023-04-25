import 'package:doctor_app/login_page.dart';
import 'package:doctor_app/signUp/conformation_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
           children: [
               Container(
                 alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 60,left: 10),
                  child: const Text(
                     "SignUp",
                     style: TextStyle(
                         fontSize: 30,
                       color: Colors.cyan
                     ),
                   ),
               ),

             const SizedBox(height: 20,),

             Container(
               alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 10),
               child: const Text(
                 "Name",
                 style: TextStyle(
                     fontSize: 16,
                     color: Colors.black,fontWeight: FontWeight.w600
                 ),
               ),
             ),

             Container(
               padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
               child: TextField(
                 decoration: InputDecoration(
                     hintText: "Name",
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10)
                     )
                 ),
               ),
             ),

             const SizedBox(height: 20,),

             Container(
               alignment: Alignment.topLeft,
               padding: const EdgeInsets.only(left: 10,),
               child: const Text(
                  "Email",
                 style: TextStyle(
                   fontSize: 16,
                   color: Colors.black,
                   fontWeight: FontWeight.w600
                 ),
               ),
             ),


             Container(
               padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
               child: TextField(
                 decoration: InputDecoration(
                     hintText: "Email",
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10)
                     )
                 ),
               ),
             ),

             const SizedBox(height: 20,),

             Container(
               alignment: Alignment.topLeft,
               padding: const EdgeInsets.only(left: 10),
               child: const Text(
                 "Mobile No",
                 style: TextStyle(
                   fontSize: 16,
                   color: Colors.black,
                   fontWeight: FontWeight.w600
                 ),
               ),
             ),

             Container(
               padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
               child: TextField(
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                  hintText: "Mobile No",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10)
                   )
                 ),
               ),
             ),

             const SizedBox(height: 20,),

             Container(
               alignment: Alignment.topLeft,
               padding: const EdgeInsets.only(left: 10),
               child: const Text(
                 "Password",
                 style: TextStyle(
                   fontSize: 16,
                   color: Colors.black,
                   fontWeight: FontWeight.w600
                 ),
               ),
             ),

             Container(
               padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
               child: TextField(
                 obscureText: true,
                 decoration: InputDecoration(
                     hintText: "Password",
                     suffixIcon: const Icon(Icons.remove_red_eye_sharp),

                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10)
                     )
                 ),
               ),
             ),
             const SizedBox(height: 20,),

             GestureDetector(
               onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("asset/circleTick.jpg",height: 100,width: 100,),
                            const Text("Register Successful",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500),),
                            const SizedBox(height: 20,),
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child:GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => const ConfirmationPage())
                                    );
                                  },
                                  child: const Text("Ok",style: TextStyle(color: Colors.white),)),
                            )
                          ],
                        ),

                        //content:Text("Successful",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500),),
                      );
                    });
               },

               child: Container(
                 alignment: Alignment.center,
                 width: double.infinity,
                 height: 40,
                 margin: const EdgeInsets.symmetric(horizontal: 10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.cyan,
                 ),
                 child: const Text(
                   "Sign Up",
                   style: TextStyle(
                     fontSize: 20,color: Colors.white,
                   ),
                 ),
               ),
             ),

             const SizedBox(height: 20,),

             Container(
               child: const Text("Already a member",
               style: TextStyle(fontSize: 16,
                   color: Colors.grey,
                   fontWeight: FontWeight.w600
               ),
               ),
             ),


             GestureDetector(
               onTap: (){
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context) => const LoginPage())
                 );
               },

               child: Container(
                 alignment: Alignment.center,
                 width: double.infinity,
                 height: 40,
                 margin: const EdgeInsets.symmetric(horizontal: 10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.cyan,
                 ),
                 child: const Text(
                   "Login",
                   style: TextStyle(
                     fontSize: 20,color: Colors.white,
                   ),
                 ),
               ),
             ),

           ],
         ),
       ),
     ),
    );
  }
}
