import 'package:doctor_app/bottom/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formPassword = GlobalKey<FormState>();

  bool _isObscure = true;
  bool _isObscure1 = true;
  final bool _isObscure2 = true;
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Change Password'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formPassword,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 30, left: 10, right: 10, bottom: 10),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    labelText: "Old Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
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
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your old password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 10, right: 10, bottom: 10),
                child: TextFormField(
                  controller: _password,
                  obscureText: _isObscure1,
                  decoration: InputDecoration(
                    labelText: "New Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure1 = !_isObscure1;
                          });
                        },
                        icon: Icon(
                          _isObscure1 ? Icons.visibility_off : Icons.visibility,
                          color: Colors.teal,
                        )),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your new password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 10, right: 10, bottom: 10),
                child: TextFormField(
                  controller: _confirmPassword,
                  obscureText: _isObscure2,
                  decoration: InputDecoration(
                      labelText: "Confirm New Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
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
                  ),
                  validator: (value) {
                    if (value != _password.value.text) {
                      return "password not match";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_formPassword.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "asset/circleTick.jpg",
                                  height: 100,
                                  width: 100,
                                ),
                                const Text(
                                  "Password Change Successful",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: GestureDetector(
                                      onTap: () {
                                        passwordChange();
                                      },
                                      child: const Text(
                                        "Ok",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ],
                            ),

                            //content:Text("Successful",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500),),
                          );
                        });
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                      top: 20, left: 10, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Update",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void passwordChange() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const ProfilePage()));
  }
}
