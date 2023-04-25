import 'package:doctor_app/drawer/drawer_page.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[50],
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Appointment'),
        ),
        drawer:const DrawerPage(),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 45,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: const Text(
                          "Upcoming",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        child: const Text(
                          "Past",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.topLeft,
                child: const Text("13 March 2023",
                style: TextStyle(fontSize: 20,color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "asset/person.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: const Text(
                    "Raju Sing",
                    style: TextStyle(color: Colors.teal, fontSize: 20),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Video Call - Accept",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "7:10 Am - 8:00 Am",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  trailing: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.teal,
                    child: Icon(Icons.call),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "asset/doctorM.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: const Text(
                    "Ronit kumar",
                    style: TextStyle(color: Colors.teal, fontSize: 20),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Video Call - Accept",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "7:10 Am - 8:00 Am",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 25,
                    child: Icon(Icons.video_call),
                  ),
                ),
              ),

              const SizedBox(height: 50,),

              Container(
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.topLeft,
                child: const Text("23 March 2023",
                  style: TextStyle(fontSize: 20,color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "asset/person.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: const Text(
                    "Raju Sing",
                    style: TextStyle(color: Colors.teal, fontSize: 20),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Video Call - Accept",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "7:10 Am - 8:00 Am",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 25,
                    child: Icon(Icons.call),
                  ),
                ),
              ),
            ],

          ),

        )
    );
  }
}
