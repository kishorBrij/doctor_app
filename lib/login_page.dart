import 'package:doctor_app/forget_password_page.dart';
import 'package:doctor_app/home_page.dart';
import 'package:doctor_app/signUp/registration_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 68.0),
                     child: Image.asset("asset/doctor1.png"),
                   ),
                    Container(
                     // alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 10),
                      child: const Text(
                          'Login',
                        style: TextStyle(fontSize: 30,color: Colors.cyan,fontWeight: FontWeight.bold),
                      ),
                    ),

                    const SizedBox(height: 20,),

                    Container(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Mobile No',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),

                          ),

                        ),
                        validator: (value) {
                          if (value!.isEmpty ) {
                            return "please enter your valid phone no";
                          }if(value.length!=10){
                            return "Mobile no is less than 10 digit";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20,),

                    Container(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                         labelText: 'Password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                                icon: Icon(
                                  _isObscure ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.teal,
                                )),
                            prefixIconColor: Colors.grey
                        ),

                        validator: (value) {
                          if (value!.isEmpty ) {
                            return "please enter your password";
                          } else {
                            return null;
                          }
                        },

                      ),
                    ),


                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(

                        children:  [
                          const Text("Don't have any account?",
                          textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                               GestureDetector(
                                 onTap:(){
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context) => const RegistrationPage())
                                   );
                                 },
                                 child: const Text(
                                     'Register',
                                   style: TextStyle(fontSize: 20,color: Colors.cyan),

                                 ),
                               ),

                        ],
                      ),


                      ),


                    const SizedBox(height: 20,),

                    GestureDetector(
                      onTap:(){
                        if(_formKey.currentState!.validate()){
                          Login();
                        }

                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child:  const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20
                          ),

                        ),
                      ),
                    ),

                    const SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const ForgetPassword())
                        );
                      },
                      child: Container(
                        child:const Text (
                        "Forget Password",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.red,
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
  void Login() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) =>const HomePage()));
  }
}
