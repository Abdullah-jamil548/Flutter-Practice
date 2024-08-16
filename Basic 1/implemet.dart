import 'package:flutter/material.dart';
class imple extends StatelessWidget {
  final String email;
  final String pass;
  imple({required this.email,required this.pass});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "User Name:  $email ",
                style: TextStyle(fontSize: 30,color: Colors.white,fontWeight:
                FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Password:   $pass  ",
                style: TextStyle(fontSize: 30,color: Colors.white,fontWeight:
                FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("back"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


/*

 */
