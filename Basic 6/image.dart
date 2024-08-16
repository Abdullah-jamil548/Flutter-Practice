import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scaffold(
          body: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(

                  color: Colors.red,
                  width: 5,
                )
            ),
            child: Row(
              children: [

                Expanded(
                    child: Container(
                  color: Colors.white,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        height: 450,
                        width: 300,

                        decoration: BoxDecoration(
                          color: Colors.white,
                            border: Border.all(
                      color: Colors.tealAccent,
                               width: 5,
                              )
                        ),
                        child: Column(
                          children: [
                          SizedBox(height: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                      border: Border.all(
                                          color: Colors.black,
                                          width: 2
                                      )
                                  ),
                             width: 230, height: 40,
                                  child: Center(
                                    child: Text("Strawberry Pavlova",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                                  ),
                                ),
                            SizedBox(height: 10,),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                        color: Colors.black,
                                        width: 2
                                    )
                                ),
                              width: 230, height: 130,
                                child:Column(
                                  children: [

                                    Text("Pavlova is a meringue-based",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("dessert named after the Russian",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("ballerina Anna Pavlova.",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("Pavlova features a crisp crust and",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("soft, light inside, topped with fruit",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("and whipped cream.",style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                )
                            ),
                            SizedBox(height: 10,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(
                                      color: Colors.black,
                                      width: 2
                                  )
                              ),
                              width: 230, height: 25,
                              child: Center(
                                child: Container(
                                  width: 190,
                                  height: 20,
                    child: Center(
               child:Row(
      children: [
         Icon(Icons.star,size: 10,),
        Icon(Icons.star,size: 10,),
        Icon(Icons.star,size: 10,),
        Icon(Icons.star,size: 10,),
        Icon(Icons.star,size: 10,),
        SizedBox(width: 70,),
        Text("170 Reviews",style: TextStyle(fontSize: 10.3,fontWeight: FontWeight.bold),)
      ],
    )
),
                                  decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                      color: Colors.red,
                                      width: 3
                                    )
                                  ),
                                )
                              ),
                            ),
                            SizedBox(height: 10,),

                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(
                                      color: Colors.black,
                                      width: 2
                                  )
                              ),
                              width: 230, height: 70,
                              child: Center(
                                  child: Container(
                                    width: 190,
                                    height: 120,
                                    child:  Column(
                                      children: [
                                        SizedBox(height: 5,),
                                       Row(
                                         children: [
                                           SizedBox(width: 15,),
                                           Icon(Icons.save,color: Colors.teal,),
                                           SizedBox(width: 40,),
                                           Icon(Icons.timer,color: Colors.teal,),
                                           SizedBox(width: 40,),
                                           Icon(Icons.set_meal_rounded,color: Colors.teal,),
                                         ],
                                       ),
                                        Row(
                                          children: [
                                            SizedBox(width: 15,),
                                            Text("PREP",style: TextStyle(fontSize: 10),),
                                            SizedBox(width: 40,),
                                            Text("COOK",style: TextStyle(fontSize: 10),),
                                SizedBox(width: 37,),
                                            Text("FEED",style: TextStyle(fontSize: 10),),
                                          ],
                                        ),
                                        SizedBox(height: 3,),
                                        Row(
                                          children: [
                                            SizedBox(width: 15,),
                                            Text("25 min",style: TextStyle(fontSize: 10),),
                                SizedBox(width: 40,),
                                            Text("1 hr",style: TextStyle(fontSize: 10),),
                                SizedBox(width: 43,),
                                            Text("4-6",style: TextStyle(fontSize: 10),),
                                          ],
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                            color: Colors.red,
                                            width: 3
                                        )
                                    ),
                                  )
                              ),
                            ),
                          ],
                        )
                      ),
                )
                ),
                Flexible(
                  flex: 2,
                    child: Container(
                  width: double.infinity,
                  height: 600,
                  child: Image(
                    fit: BoxFit.fill,
                      image: AssetImage('umaagee/cake.png')),
                )),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
