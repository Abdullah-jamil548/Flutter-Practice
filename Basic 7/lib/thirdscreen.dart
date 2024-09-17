import 'package:flutter/material.dart';
class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
        title: Container(
        margin: EdgeInsets.symmetric(horizontal: 130),
    width: 110,
    height: 50,

    child: Image(
  alignment: Alignment.center,
    image: AssetImage("uimagesimple/mainimage.png")),
        ),
        ),

        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("No Orders Found",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.grey),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
