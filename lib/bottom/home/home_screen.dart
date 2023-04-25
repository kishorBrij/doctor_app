import 'package:doctor_app/drawer/drawer_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        title: const Text('Dr.Sophia Dunkels'),
      ),
      drawer:const DrawerPage(),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                "Upcoming Appointments",
                style: TextStyle(fontSize: 20, color: Colors.teal),
              ),
            ),
            Container(
              padding: const EdgeInsets.all( 10),
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                      width:60 ,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          
                          child: Image.asset(
                            "asset/doctorM.jpg",
                          fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Rahul Verma",
                              style: TextStyle(color: Colors.teal, fontSize: 20),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.phone,
                                  color: Colors.teal,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("+91987665445"),
                                Text(
                                  ".Approved",
                                  style: TextStyle(color: Colors.teal),
                                ),
                                
                              ],
                            ),

                          ],
                        ),
                      ),
                    ]
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const Text("Febuary 12, 2023 at 9:30 am - 12:00Pm")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all( 10),
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      children: [
                        Container(
                          width:60 ,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),

                            child: Image.asset(
                              "asset/doctorpic1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Rekha Verma",
                                style: TextStyle(color: Colors.teal, fontSize: 20),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.teal,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("+91987665987"),
                                  Text(
                                    ".Pending",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ]
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const Text("Febuary 12, 2023 at 9:30 am - 12:00Pm")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all( 10),
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(

                        width:60 ,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),

                          child: Image.asset(
                            "asset/doctorM1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Rajesh Singh",
                              style: TextStyle(color: Colors.teal, fontSize: 20),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone,
                                  color: Colors.teal,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("+91987665987"),
                                const Text(
                                  ".Pending",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const Text("Febuary 12, 2023 at 9:30 am - 12:00Pm")
                ],

              ),
            ),



          ],
        ),
      ),
    );
  }
}
