import 'package:doctor_app/drawer/drawer_page.dart';
import 'package:flutter/material.dart';

class PatientPage extends StatefulWidget {
  const PatientPage({Key? key}) : super(key: key);

  @override
  State<PatientPage> createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Patient'),

      ),
      drawer: const DrawerPage(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20,top: 20,bottom: 20),
              margin: EdgeInsets.all(10),
              height: 65,
              width: double.infinity,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: const [
                  Icon(Icons.search, size: 40, color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text("Type Name",
                  style: TextStyle(color: Colors.grey,fontSize: 16),
                  )
                ],

              ),
            ),

            Container(
              height: 80,
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              child: ListTile(
                leading: Container(
                  height: 90,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                          "asset/person.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                title:const Text(
                  "Ramesh Raj",style: TextStyle(fontSize: 20,color: Colors.cyan),
                ),
                subtitle:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.man_2_sharp,color: Colors.cyan,),
                        Text("23"),
                        Icon(Icons.man_3_outlined,color: Colors.cyan,),
                        Text("Male"),
                        Icon(Icons.bloodtype,color: Colors.cyan,),
                        Text("A+"),
                      ],
                    ),
                    const Text("Total Appointments",
                    style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Container(
                   alignment: Alignment.center,
                  height: 30,
                  width: 66,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.cyan,
                  ),
                  child: const Text("View",
                  style: TextStyle(color: Colors.white),
                  ),
                ),
                
                
              ),
            ),
            Container(
              height: 80,
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: ListTile(
                leading: Container(
                  height: 90,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "asset/person.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                title:const Text(
                  "Rahul Roy",style: TextStyle(fontSize: 20,color: Colors.cyan),
                ),
                subtitle:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.man_2_sharp,color: Colors.cyan,),
                        Text("23"),
                        Icon(Icons.man_3_outlined,color: Colors.cyan,),
                        Text("Male"),
                        Icon(Icons.bloodtype,color: Colors.cyan,),
                        Text("A+"),
                      ],
                    ),
                    const Text("Total Appointments",
                      style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 66,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),   color: Colors.cyan,),
                  child: const Text("View",
                    style: TextStyle(color: Colors.white),
                  ),
                ),


              ),
            ),
            Container(
              height: 80,
              margin: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: ListTile(
                leading: Container(
                  height: 90,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "asset/person.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                title:const Text(
                  "Suraj Kumar",style: TextStyle(fontSize: 20,color: Colors.cyan),
                ),
                subtitle:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.man_2_sharp,color: Colors.cyan,),
                        Text("29"),
                        Icon(Icons.man_3_outlined,color: Colors.cyan,),
                        Text("Male"),
                        Icon(Icons.bloodtype,color: Colors.cyan,),
                        Text("B+"),
                      ],
                    ),
                    const Text("Total Appointments",
                      style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 66,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),   color: Colors.cyan,),
                  child: const Text("View",
                    style: TextStyle(color: Colors.white),
                  ),
                ),


              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
