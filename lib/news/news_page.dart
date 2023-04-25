import 'package:flutter/material.dart';
class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        title: const Text('News'),
        backgroundColor: Colors.teal,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
              margin: const EdgeInsets.only(left: 10,right: 10,top: 20),
              height: 55,
              width: double.infinity,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: const [
                  Icon(Icons.search, size: 40, color: Colors.teal,),
                  SizedBox(width: 10,),
                  Text("Search For News",
                    style: TextStyle(color: Colors.grey,fontSize: 16),
                  )
                ],

              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25,left: 10,right: 10,bottom: 10),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.cyan
              ),
              child:ClipRRect (
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "asset/new2.jpg",
                  fit: BoxFit.cover,
                ),
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
                          width:80 ,
                          height:100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),

                            child: Image.asset(
                              "asset/new2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "News",
                                      style: TextStyle(color: Colors.teal, fontSize:16),
                                    ),
                                    SizedBox(width: 90,),
                                    Text('march12.2023',style: TextStyle(color: Colors.grey, fontSize:14),),
                                  ],
                                ),
                                SizedBox(
                                  width:230,
                                  child: Divider(
                                    thickness: 0.5,
                                    color: Colors.grey.shade400,
                                  ),
                                ),

                                const Text('Doctor in the House :',style: TextStyle(color: Colors.teal),),
                                const Text('Heating Home with your',style: TextStyle(color: Colors.teal),),
                                const Text('New Born',style: TextStyle(color: Colors.teal),),

                              ],
                            ),
                          ),
                        ),

                      ]
                  ),
                  
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
                          width:80 ,
                          height:100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),

                            child: Image.asset(
                              "asset/news3.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "News",
                                      style: TextStyle(color: Colors.teal, fontSize:16),
                                    ),
                                    SizedBox(width: 90,),
                                    Text('Jun12.2023',style: TextStyle(color: Colors.grey, fontSize:14),),
                                  ],
                                ),
                                SizedBox(
                                  width:230,
                                  child: Divider(
                                    thickness: 0.5,
                                    color: Colors.grey.shade400,
                                  ),
                                ),

                                const Text('News Dads Brains Shrink',style: TextStyle(color: Colors.teal),),
                                const Text('COVID Booster',style: TextStyle(color: Colors.teal),),

                              ],
                            ),
                          ),
                        ),

                      ]
                  ),

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
                          width:80 ,
                          height:100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),

                            child: Image.asset(
                              "asset/new4.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "News",
                                      style: TextStyle(color: Colors.teal, fontSize:16),
                                    ),
                                    SizedBox(width: 90,),
                                    Text('Aug12.2023',style: TextStyle(color: Colors.grey, fontSize:14),),
                                  ],
                                ),
                                SizedBox(
                                  width:230,
                                  child: Divider(
                                    thickness: 0.5,
                                    color: Colors.grey.shade400,
                                  ),
                                ),

                                const Text('Is the Pandemic over?if',style: TextStyle(color: Colors.teal),),
                                const Text('Only it where that simple',style: TextStyle(color: Colors.teal),),

                              ],
                            ),
                          ),
                        ),

                      ]
                  ),

                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
