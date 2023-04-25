import 'package:doctor_app/bottom/appointment/appointment_page.dart';
import 'package:doctor_app/bottom/patient/patient_page.dart';
import 'package:doctor_app/bottom/prescription/prescripation_page.dart';
import 'package:doctor_app/bottom/profile/profile_page.dart';
import 'package:doctor_app/news/news_page.dart';
import 'package:flutter/material.dart';

import 'bottom/home/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const AppointmentPage(),
    const PatientPage(),
    const PrescripationPage(),
    const ProfilePage(),

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('asset/house.png',height: 25,width: 25,color: Colors.black,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('asset/calendar.png',height: 25,width: 25,color: Colors.grey,),
              label: 'Appointment',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('asset/user.png',height: 25,width: 25,color: Colors.grey,),
              label: 'Patient',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('asset/medical-prescription.png',height: 25,width: 25,color: Colors.grey,),
              label: 'Prescription',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('asset/medical.png',height: 25,width: 25,color: Colors.grey,),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor:Colors.cyan,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          //iconSize: 25,
          onTap: _onItemTapped,
          // fixedColor: Colors.lightGreen,
          elevation: 10),
    );
  }
}
