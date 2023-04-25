import 'package:doctor_app/bottom/appointment/appointment_page.dart';
import 'package:doctor_app/bottom/patient/patient_page.dart';
import 'package:doctor_app/bottom/prescription/prescripation_page.dart';
import 'package:doctor_app/bottom/profile/edit_page.dart';
import 'package:doctor_app/bottom/profile/profile_page.dart';
import 'package:doctor_app/changepassword/password_change_page.dart';
import 'package:doctor_app/home_page.dart';
import 'package:doctor_app/login_page.dart';
import 'package:doctor_app/news/news_page.dart';
import 'package:doctor_app/review/review_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 220,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined,color: Colors.teal,),
            title: const Text("Home",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){
              Get.to(HomePage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.file_copy,color: Colors.teal,),
            title: const Text("Appointment",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){
              Get.to(AppointmentPage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_2,color: Colors.teal,),
            title: const Text("Patient",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){
              Get.to(PatientPage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_4_outlined,color: Colors.teal,),
            title: const Text("Profile",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){
              Get.to(ProfilePage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.password_sharp,color: Colors.teal,),
            title: const Text("Change Password",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){
              Get.to(ChangePassword());
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit,color: Colors.teal,),
            title: const Text("Edit Profile",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){
              Get.to(EditPage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.note_add_outlined,color: Colors.teal,),
            title: const Text("Prescription",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){
              Get.to(PrescripationPage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.newspaper_sharp,color: Colors.teal,),
            title: const Text("News",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){
                Get.to(NewsPage());
            },
          ),

          ListTile(
            leading: const Icon(Icons.call,color: Colors.teal,),
            title: const Text("Audio Call",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){

            },
          ),
          ListTile(
            leading: const Icon(Icons.video_call,color: Colors.teal,),
            title: const Text("Video Call",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){

            },
          ),
          ListTile(
            leading: const Icon(Icons.star,color: Colors.teal,),
            title: const Text("Reviews",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){
              Get.to(ReviewPage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout,color: Colors.teal,),
            title: const Text("Logout",style: TextStyle(fontSize: 16,color: Colors.grey),),
            onTap: (){
               Navigator.push(context,
               MaterialPageRoute(builder: (context)  => const LoginPage())
               );
            },
          ),




        ],
      ),
    );
  }
}
