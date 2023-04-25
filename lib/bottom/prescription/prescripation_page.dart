import 'package:doctor_app/bottom/constant/constant.dart';
import 'package:doctor_app/drawer/drawer_page.dart';
import 'package:flutter/material.dart';

class PrescripationPage extends StatefulWidget {
  const PrescripationPage({Key? key}) : super(key: key);

  @override
  State<PrescripationPage> createState() => _PrescripationPageState();
}

class _PrescripationPageState extends State<PrescripationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        title: const Text('Prescription'),
      ),

      drawer: DrawerPage(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20,left: 10),
              alignment: Alignment.topLeft,
              child: const Text("Available Time",
              style: TextStyle(fontSize: 20,color: Colors.teal),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: const Text('Paracetamol + Caffeine | 300 mg',
              style: TextStyle(fontSize: 22),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 10),
              alignment: Alignment.topLeft,
              child: const Text("Consumption Rules :",
                style: TextStyle(fontSize: 22,color: Colors.teal),
              ),
            ),

             const SizedBox(height: 40,),

             Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10),
                    decoration:  BoxDecoration(
                        color: Colors.teal,
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: const Text(
                      "Before Eating",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                    child: const Text(
                      "After Eating",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30,),

            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration:  BoxDecoration(
                       // color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: const Text(
                      "Sat",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: const Text(
                      "Sun",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration:  BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: const Text(
                      "Mon",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration:  BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: const Text(
                      "Tue",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: const Text(
                      "Wed",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration:  BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: const Text(
                      "Thu",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration:  BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: const Text(
                      "Fri",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration:  BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.teal,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: const Text(
                      "All",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30,),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10),
                    decoration:  BoxDecoration(
                        color: Colors.teal,
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: const Text(
                      "Breakfast",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: const Text(
                      "Lunch",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin:  const EdgeInsets.only(left: 10,top: 10),
                    decoration:  BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: const Text(
                      "After Noon",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin:  const EdgeInsets.only(right: 10,top: 10),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: const Text(
                      "Dinner",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.only(left: 30,top: 5),
              margin: EdgeInsets.all(10),
              height: AppConstant.height(context)*0.06,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: const [
                  Text("Add Notes",
                    style: TextStyle(color: Colors.grey,),
                  )
                ],

              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              width: AppConstant.width(context)*1,
              height: AppConstant.height(context)*0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.cyan
              ),
                child:const Text("Submit",
                style: TextStyle(color: Colors.white),
                )
            ),
          ],

        ),
      ),
    );
  }
}
