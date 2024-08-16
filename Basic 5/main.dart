import 'package:flutter/material.dart';
import 'package:kro_project/first.dart';
import 'package:kro_project/second.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.white,
       body: SafeArea(
          child: Column(
            children: [
              const Center(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "   Please log in to access your \n      personalized experience.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Image(
                      height: 350,
                      width: 350,
                      image: NetworkImage("https://img.freepik.com/free-vector/my-password-concept-illustration_114360-4294.jpg?t=st=1721620241~exp=1721623841~hmac=618840b01844ff5a0d257b0ef56b18c542827d7a8977f3132f6190f502ee4dfa&w=740"),
                    ),
                  ],
                ),
              ),
        Builder(
        builder: (BuildContext context) {
         return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.black, // Border color
                width: 2.0, // Border width
              ),
            ),
            width: 330,
            height: 65,
            child: InkWell(
highlightColor: Colors.purple,
              borderRadius: BorderRadius.circular(25),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const brocodestate()),

                );

         },


              child: const Center(
              child:Text(
                "Login",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                ),
              ),
              ),

            ),

          );
        }
    ),
              const SizedBox(height: 20,),
              Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      width: 330,
                      height: 65,
                      child: InkWell(
                        highlightColor: Colors.purple,
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const hunger()),
                          );
                        },

                        child: const Center(
                          child:Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      ),

                    );
                  }
              ),

            ],
          ),
        ),
      ),
    );
  }
}

