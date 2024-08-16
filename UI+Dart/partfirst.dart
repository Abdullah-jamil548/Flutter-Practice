import 'package:flutter/material.dart';
import 'package:untitled/implemet.dart';
class noaway extends StatefulWidget {



  @override
  State<noaway> createState() => _noawayState();
}
final TextEditingController useremail= TextEditingController();
final TextEditingController userpass= TextEditingController();
class _noawayState extends State<noaway> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text("Sample App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(

                  children: [
                    SizedBox(height: 100,),
                    Text("TutorialKart",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 44),),
                    SizedBox(height: 5,),
                    Text("Sign in",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 30),),
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                        width: 350,
                        child: TextField(
                          controller: useremail,
                          decoration: InputDecoration(
                              hintText: "User Name",
                              border: OutlineInputBorder(

                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                        width: 350,
                        child: TextField(
                          controller: userpass,
                          decoration: InputDecoration(
                              hintText: "Password",
                              border: OutlineInputBorder(

                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Forget Password",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 15,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return imple(
                          email: useremail.text,
                          pass: userpass.text,
                        );
                      }));
                    }, child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(350, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                      )
                    ),
                    ),
                    SizedBox(height: 13,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Does not have account? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                        Text("Sign in",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 21),)
                      ],
                    )
                  ],
                ),
              )
            ),
          ),

      );
  }
}
