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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Sample App",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "TutorialKart",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Sign in",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Container(
                width: 430,
                child:TextField(
                  decoration: InputDecoration(
                    hintText: "User Name",
                    border: OutlineInputBorder(),
                  ),
                ) ,
              ),
              SizedBox(height: 15,),
              Container(
                width: 430,
                child:TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ) ,
              ),
SizedBox(height: 15,),
Text("Forget Password",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(height: 15,),
              Container(
                color: Colors.blue,
                height: 45,
                width: 430,
                child:Center(
                  child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                
              ),
              SizedBox(height: 10,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Does not have account?  ",),
                    Text("Sign in",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ) ,
              )

            ],
          ),
        )),
      ),
    );
  }
}
