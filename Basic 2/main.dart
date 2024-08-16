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
var x=10;

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: <Widget>[

                      Container(

                        color: Colors.white,
                        width: double.infinity,
                        height: 800,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.only(

                              bottomLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                            )
                        ),


                        width: double.infinity,
                        height: 415,
                      ),
                      Positioned(
                          right: 310,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.white.withOpacity(0.1),
                          )),
                      Positioned(
                          right: 150,
                          top: -70,
                          child: CircleAvatar(
                            radius: 56,
                            backgroundColor: Colors.white.withOpacity(0.1),
                          )),
                      Positioned(
                          right: 70,
                          top: 20,
                          child: CircleAvatar(
                            radius: 27,
                            backgroundColor: Colors.white.withOpacity(0.1),
                          )),
                      Positioned(
                          right: -60,
                          top: 90,
                          child: CircleAvatar(
                            radius: 65,
                            backgroundColor: Colors.white.withOpacity(0.1),
                          )),


                      const Positioned(
                          top: 33,
                          left: 8,
                          child: Icon(Icons.arrow_back,size: 37,color: Colors.white,)),


                      Positioned(
                        left: 15,
                        top: 310,
                        child:Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  24
                              ),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10
                                )
                              ]
                          ),
                          width: 365,
                          height: 190,

                        ),
                      ),

                      Positioned(
                          top: 70,
                          left: 95,
                          child: CircleAvatar(
                            radius: 100,
                            backgroundColor: Colors.white.withOpacity(0.5),
                          )),
                      Positioned(
                          top: 100,
                          left: 125,
                          child: CircleAvatar(
                            radius: 69,
                            backgroundColor: Colors.white.withOpacity(0.5),
                          )),
                      const Positioned(
                          top: 115,
                          left: 140,
                          child: CircleAvatar(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Your Score",style: TextStyle(color: Colors.purple),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("150",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize: 30),),
                                    Text("pt",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                                  ],
                                )
                              ],
                            ),
                            radius: 55,
                            backgroundColor: Colors.white,
                          )),
                      Positioned(
                          top: 340,
                          left: 35,
                          child:Container(
                            width: 140,
                            height: 70,
                            color: Colors.white,
                            child: const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.circle,size: 15,color: Colors.purple,),
                                    Text("  100%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.purple),),
                                  ],
                                ),
                                Text("Completion",style: TextStyle(fontSize: 14),)
                              ],

                            ),
                          )
                      ),
                      Positioned(
                          top: 420,
                          left: 35,
                          child:Container(
                            width: 100,
                            height: 70,
                            color: Colors.white,
                            child: const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.circle,size: 15,color: Colors.green,),
                                    Text("  13",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),),
                                  ],
                                ),
                                Text("Correct",style: TextStyle(fontSize: 14),)
                              ],

                            ),
                          )
                      ),
                      Positioned(
                          top: 340,
                          left: 225,
                          child:Container(
                            width: 140,
                            height: 70,
                            color: Colors.white,
                            child: const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.circle,size: 15,color: Colors.purple,),
                                    Text("  20",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.purple),),
                                  ],
                                ),
                                Text("Total Question",style: TextStyle(fontSize: 14),)
                              ],

                            ),
                          )
                      ),
                      Positioned(
                          top: 420,
                          left: 225,
                          child:Container(
                            width: 100,
                            height: 70,
                            color: Colors.white,
                            child: const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.circle,size: 15,color: Colors.orange,),
                                    Text("  07",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange),),
                                  ],
                                ),
                                Text("Wrong",style: TextStyle(fontSize: 14),)
                              ],

                            ),
                          )
                      ),
                      Positioned(
                          top: 530,
                          left: 13,
                          child: Container(
                            width: 370,
                            height: 80,
                            color: Colors.white,
                            child: Row(
                              children: [
                                const SizedBox(width: 15,),
                                Container(
                                  child: const Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        child: Icon(Icons.refresh,size: 30,color: Colors.white,),
                                        backgroundColor: Colors.teal,

                                      ),
                                      Text("Play Again")
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 50,),
                                Container(
                                  child: const Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        child: Icon(Icons.visibility,size: 30,color: Colors.white,),
                                        backgroundColor: Colors.brown,

                                      ),
                                      Text("Review Answer")
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 45,),

                                Container(
                                  child: const Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        child: Icon(Icons.share,size: 30,color: Colors.white,),
                                        backgroundColor: Colors.deepPurple,

                                      ),
                                      Text("Share Score")
                                    ],
                                  ),
                                )


                              ],
                            ),
                          )),
                      Positioned(
                          top: 630,
                          left: 13,
                          child: Container(
                            width: 370,
                            height: 80,
                            color: Colors.white,
                            child: Row(
                              children: [
                                const SizedBox(width: 10,),
                                Container(
                                  child: const Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        child: Icon(Icons.picture_as_pdf,size: 30,color: Colors.white,),
                                        backgroundColor: Colors.lightBlueAccent,

                                      ),
                                      Text("Generate PDF")
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 50,),
                                Container(
                                  child: const Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        child: Icon(Icons.home,size: 30,color: Colors.white,),
                                        backgroundColor: Colors.pinkAccent,

                                      ),
                                      Text("Home")
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 65,),

                                Container(
                                  child: const Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        child: Icon(Icons.emoji_events,size: 30,color: Colors.white,),
                                        backgroundColor: Colors.grey,

                                      ),
                                      Text("Leaderboard")
                                    ],
                                  ),
                                )


                              ],
                            ),
                          ))

                    ],
                  )
                ],
              ),
            )
        ),
      );;
  }
}



 