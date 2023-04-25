import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 160,left: 20,right: 20),
            child:ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "asset/reviewimg.jpg",
                //fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35),
            child: const Text("Please Rate the Course!",
            style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30,left: 70),
           child: Row(
             children: [
               const Icon(Icons.star,color: Colors.orange,size:40,),
               const Icon(Icons.star,color: Colors.orange,size:40,),
               const Icon(Icons.star,color: Colors.orange,size:40,),
               const Icon(Icons.star_half_outlined,color: Colors.orange,size:40,),
               const Icon(Icons.star,color: Colors.grey,size:40,),
             ],
           ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                const Text("Your Comment And Suggestions",style: TextStyle(
                    fontSize: 20,color: Colors.grey
                ),),
                const Text("helps us improve the service quality",style: TextStyle(
                    fontSize: 20,color: Colors.grey
                ),),
                const Text("better!",style: TextStyle(
                    fontSize: 20,color: Colors.grey
                ),),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30,left: 20,right: 20),
            padding: const EdgeInsets.all(10),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: const Text('great application',
                  style:TextStyle(fontSize: 20,color: Colors.grey) ,
          ),),
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20,left: 20,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.teal
            ),
            child: const Center(child: Text('Submit',
            style: TextStyle(fontSize: 20,color: Colors.white),
            )),
          ),
        ],
      ),
    );
  }
}
