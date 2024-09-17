import 'package:flutter/material.dart';
import 'package:simplysufi/cart.dart';
class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List<String>dealsnamee=[
    "Xprs Azadi Deal",
    "Family Fest Deal 1",
    "Family Fest Deal 2",
    "Family Fest Deal 3",
    "Summer Deal 01",
    "Summer Deal 02",
    "Paratha Roll",
    "Tea Time"
  ];
  List<String>des=[
    "2 Mighty Chicken Burgers, 2 Drinks",
    "1 Mighty Chicken Burger, Fries, and Drink",
    "2 Tikka Legs, 2 Kababs, 2 Naans, 2 Drinks, Raita, Salad",
    "4 Burgers, 4 Fries, 1L Drink",
    "2 Mighty Chicken Burgers, 2 Drinks",
    "2 Spicy Chicken Burgers",
    "Xprs Paratha Roll",
    "Tea 2 Punjabi Samosa",
  ];
  List<String>picd=[
    "uimagesimple/firstintro.jpeg",
    "uimagesimple/deal1.jpg",
    "uimagesimple/deal2.jpg",
    "uimagesimple/deal3.jpg",
    "uimagesimple/deal4.jpg",
    "uimagesimple/deal5.jpg",
    "uimagesimple/deal6.jpg",
    "uimagesimple/deal7.jpg",



  ];
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 670,
                  width: double.maxFinite,
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context,index)=> Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 230,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: 170,
                              height: 200,
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage("${picd[index]}"),),
                            ),
                            top: 13,
                            left: 10,),
                          Positioned(
                            child: Container(
                              width: 180,
                              height: 70,
                              color: Colors.white,
                              child: Text("${dealsnamee[index]}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
                            ),
                            top: 13,
                            left: 200,),
                          Positioned(
                            child: Container(
                              width: 180,
                              height: 60,
                              color: Colors.white,
                              child: Text("${des[index]}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14),),
                            ),
                            top: 50,
                            left: 200,),
                          Positioned(
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return caart();
                                }));
                              },
                              child: Text("Add To Cart"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                minimumSize: Size(170, 30), // Adjust the width here
                              ),
                            ),
                            top: 170,
                            left: 200,),

                          Positioned(child: Divider(
                            height: 0.3,
                            color: Colors.black,
                            thickness: 1,
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
