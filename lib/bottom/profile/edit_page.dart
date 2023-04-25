import 'package:doctor_app/bottom/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  String? gender;
  bool _isObscure = true;
  bool _isObscure1 = true;
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  final _formpassword = GlobalKey<FormState>();

  TextEditingController dateinput = TextEditingController();

  Pattern emailPattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  Pattern phonePattern =r'(^(?:[+0]9)?[0-9]{10,12}$)';


  @override
  void initState() {
    dateinput.text = "";

    ///set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Form(
        key: _formpassword,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      label: const Text("Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),

              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  validator: (value) {

                    RegExp regex = RegExp("$phonePattern");
                    if (!(regex.hasMatch(value!))) {
                      return "Invalid Pnone no";
                    }
                    if (value.isEmpty ) {
                      return "please enter your valid phone no";
                    }
                    else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Mobile NO",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  validator: (value) {

                    RegExp regex = RegExp("$emailPattern");
                    if (!(regex.hasMatch(value!))) {
                      return "Invalid Email";
                    }

                    else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Email",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  controller: _password,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      labelText: "Password",
                      fillColor: Colors.white,
                      filled: true,
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
                      prefixIconColor: Colors.grey),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your  password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  controller: _confirmPassword,
                  obscureText: _isObscure1,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                    if (value != _password.value.text) {
                      return "please enter same password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 160,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Address",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Container(
                    width: 160,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "City",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "State",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Pin Code",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 15, top: 10),
                    child: const Text(
                      "Gender",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Radio(
                      activeColor: Colors.teal,
                      value: "female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    const Text(
                      "female",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Radio(
                      activeColor: Colors.teal,
                      value: "male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    const Text(
                      "Male",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                height: 65,
                width: double.infinity,
                margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: TextField(
                  controller: dateinput,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: ('DOB'),

                    prefixIcon: const Icon(
                      Icons.calendar_today,
                      color: Colors.red,
                    ),

                  ),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101));

                    if (pickedDate != null) {
                      print(pickedDate);
                      String formattedDate =
                          DateFormat('dd-MM-yyyy').format(pickedDate);
                      print(formattedDate);

                      setState(() {
                        dateinput.text = formattedDate;
                      });
                    } else {
                      print("Date is not selected");
                    }
                  },
                ),
              ),

              GestureDetector(
                onTap: () {
                  if (_formpassword.currentState!.validate()) {

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
                                  "Profile Update Successful",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w500),
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
                                        update();
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
                  height: 60,
                  width: double.infinity,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Update",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void update() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const ProfilePage()));
  }
}
