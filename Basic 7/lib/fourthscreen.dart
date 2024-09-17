import 'package:flutter/material.dart';
class fourth extends StatefulWidget {
  const fourth({super.key});

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
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
            children: [
SizedBox(height: 20,),
Center(
  child:Container(

    width: 350,
    child:  TextField(
      decoration: InputDecoration(
        hintText: "Full Name",
          border: OutlineInputBorder(

          )
      ),
    ),
  )
  ,
) ,
              SizedBox(height: 20,),
              Center(
                child:Container(

                  width: 350,
                  child:  TextField(
                    decoration: InputDecoration(
                        hintText: "Contact Number",
                        border: OutlineInputBorder(

                        )
                    ),
                  ),
                )
                ,
              ) ,
              SizedBox(height: 20,),
              Center(
                child:Container(

                  width: 350,
                  child:  TextField(
                    decoration: InputDecoration(
                        hintText: "City Name",
                        border: OutlineInputBorder(

                        )
                    ),
                  ),
                )
                ,
              ) ,
              SizedBox(height: 20,),
              Center(
                child:Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Text("Address",style: TextStyle(fontSize: 17),),
                    width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
border: Border.all(
  color: Colors.black
)
                  ),
                )
                ,
              ) ,
            ],
          ),
        ),
      ),
    );
  }
}
