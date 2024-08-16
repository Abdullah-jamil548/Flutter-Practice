import 'package:flutter/material.dart';
class brocodestate extends StatefulWidget {
  const brocodestate({super.key});

  @override
  State<brocodestate> createState() => _brocodestateState();
}

class _brocodestateState extends State<brocodestate> {
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
    "Login",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 35,
      color: Colors.black,
    ),
  ),
  SizedBox(height: 10,),
Center(
  child:   Text(
    "Login to your account",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.blueGrey,
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
SizedBox(height: 20,),
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
  SizedBox(height: 50,),
  Container(
    width: 300,
    height: 65,
    decoration: BoxDecoration(
      color: Colors.purple,
      borderRadius: BorderRadius.circular(25)
    ),
    child: Center(
      child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
    ),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(height: 40,),
    Text("Don't have an account? ",style: TextStyle(fontSize: 20),),
    Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

  ],
),

  Image(
      height: 280,
      width: 400,
      image: NetworkImage("https://img.freepik.com/premium-vector/online-registration-sign-up-login-account-smartphone-app-user-interface-with-secure-password-mobile-application-ui-web-banner-access-cartoon-people-vector-illustration_2175-1078.jpg?w=826")),


],
          ),
        ),
      ),
    );
  }
}

