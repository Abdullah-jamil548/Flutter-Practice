import 'package:flutter/material.dart';
class hunger extends StatefulWidget {
  const hunger({super.key});

  @override
  State<hunger> createState() => _hungerState();
}

class _hungerState extends State<hunger> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),// This adds the back button

        ),
        body: SafeArea(
          child: Column(
            children: [
              Text(
                "Sign up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child:   Text(
                  "Create an account it's free",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blueGrey,
                  ),
                ),

              ),
              SizedBox(height: 20,),
              Container(
                width: 300,

                child:TextField(
                  decoration: InputDecoration(
                      hintText: 'Username',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.verified_user),
                        onPressed: () {  },
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 20,
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: 300,

                child:TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.email),
                        onPressed: () {  },
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 20,
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: 300,

                child:TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.lock_open),
                        onPressed: () {  },
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 20,
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 300,

                child:TextField(
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.lock_open),
                        onPressed: () {  },
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 20,
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                width: 300,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Text("Sign up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                  Text("Already have an account? ",style: TextStyle(fontSize: 20),),
                  Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
