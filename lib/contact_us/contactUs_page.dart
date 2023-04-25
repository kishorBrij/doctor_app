import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Contact Us'),
      ),

      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 40,left: 20,right: 20),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Address',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('160, delhi saket'),
                Text('110030,India'),

                SizedBox(height: 20,),
                Text('Landmark',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Near metro station'),
                Text("Saket"),

                SizedBox(height: 20,),
                Text('Location',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('https://pub.dev/packages/get/install'),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
