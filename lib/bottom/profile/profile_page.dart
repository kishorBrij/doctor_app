import 'package:doctor_app/bottom/profile/edit_page.dart';
import 'package:doctor_app/changepassword/password_change_page.dart';
import 'package:doctor_app/contact_us/contactUs_page.dart';
import 'package:doctor_app/drawer/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[50],
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Profile'),
        ),
        drawer:const DrawerPage(),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                margin:
                    const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
                width: double.infinity,
                height: 360,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.person,
                            size: 25,
                            color: Colors.black,
                          ),
                          const SizedBox(width: 15,),
                          const Text(
                            "Dr.Raju Sing",
                            style: TextStyle(color: Colors.grey,fontSize: 17),
                          ),
                          const SizedBox(width: 100,),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const EditPage())
                              );
                            },
                            child: const Text("Edit",style: TextStyle(
                              fontSize: 20,
                              color: Colors.teal,
                              fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.phone,
                            size: 25,
                            color: Colors.black,
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "9876554321",
                            style: TextStyle(color: Colors.grey,fontSize: 15),
                          ),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.email,
                            size: 25,
                            color: Colors.black,
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "rohit123@gmail.com",
                            style: TextStyle(color: Colors.grey,fontSize: 15),
                          ),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            size: 25,
                            color: Colors.black,
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "Rajiv Chowk Delhi",
                            style: TextStyle(color: Colors.grey,fontSize: 15),
                          ),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.man,
                            size: 25,
                            color: Colors.black,
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "Male",
                            style: TextStyle(color: Colors.grey,fontSize: 15),
                          ),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.date_range_outlined,
                            size: 25,
                            color: Colors.black,
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "05-04-2023",
                            style: TextStyle(color: Colors.grey,fontSize: 15),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children:  [
                    GestureDetector(
                      onTap: (){
                        Get.to( const ChangePassword());
                      },
                      child: const Text("Change Password",
                      style: TextStyle(fontSize: 20,color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 100,),
                    const Icon(Icons.arrow_forward,color: Colors.white,)
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: GestureDetector(
                  onTap: (){
                   Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=> ContactUs())
                   );
                  },
                  child: Row(
                    children:  [
                      const Text("Contact Us",
                        style: TextStyle(fontSize: 20,color: Colors.white),
                      ),
                      const SizedBox(width: 160,),
                      GestureDetector(
                        onTap: (){

                        },
                          child: const Icon(Icons.arrow_forward,color: Colors.white,))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
