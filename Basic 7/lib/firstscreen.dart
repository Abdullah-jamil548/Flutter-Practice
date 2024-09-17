import 'package:flutter/material.dart';
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List<String>picture=[
    "uimagesimple/thirdintro.jpeg",
    "uimagesimple/firstintro.jpeg",
    "uimagesimple/secondintro.jpeg",
    "uimagesimple/fourthintro.jpeg",
    "uimagesimple/fifthintro.jpeg",
  ];
List<String>deals=[
  "uimagesimple/deals.webp",
  "uimagesimple/newtacos.png",
  "uimagesimple/fries.jpg",
  "uimagesimple/burger.webp",
  "uimagesimple/nuggets.jpg",
  "uimagesimple/pizza.jpg",
  "uimagesimple/shakes.jpg",
  "uimagesimple/slush.jpg",
];
  List<String>dealsname=[
    "Deals",
    "Tacos",
    " Fries",
    "Burger",
    "Nuggets",
    "Pizza",
    "Shakes",
    "Slush",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
appBar:   AppBar(
  backgroundColor: Colors.red,
  leading: Builder(
    builder: (context) {
      return IconButton(
        icon: Icon(Icons.menu), // Custom drawer icon
        iconSize: 30, // Custom size
        color: Colors.white, // Custom color
        onPressed: () {
          Scaffold.of(context).openDrawer(); // Opens the drawer
        },
      );
    },
  ),
  // Default drawer icon// Custom color
  title: Container(
    margin: EdgeInsets.symmetric(horizontal: 70),
    width: 110,
    height: 50,

    child: Image(
        alignment: Alignment.center,
        image: AssetImage("uimagesimple/mainimage.png")),

  ),
  actions: [
    Icon(
      Icons.shopping_cart,size: 30,color: Colors.white,),
    SizedBox(width: 10,),
  ],


),
        drawer: Drawer(
          backgroundColor: Colors.red,
          child: Column(
            children: [
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.home, size: 30, color: Colors.white),
                title: Text("Home",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(Icons.local_offer, size: 30, color: Colors.white),
                title: Text("Promotions",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(Icons.location_on, size: 30, color: Colors.white),
                title: Text("Locations",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(Icons.info, size: 30, color: Colors.white),
                title: Text("About Us",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(Icons.description, size: 30, color: Colors.white),
                title: Text("Terms and Conditions",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(Icons.share, size: 30, color: Colors.white),
                title: Text("Share With Friends",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(Icons.lock, size: 30, color: Colors.white),
                title: Text("Change Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(Icons.chat, size: 30, color: Colors.white),
                title: Text("Live Chat",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Divider(color: Colors.white),
              ListTile(
                leading: Icon(Icons.logout, size: 30, color: Colors.white),
                title: Text("Logout",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Divider(color: Colors.white),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(

              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 270,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(
                              color: Colors.black,
                              width: 0.7
                          ),
                          boxShadow: [

                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 10
                            )
                          ]
                      ),
                    ),
                    Positioned(child: Container(
                      height: 290,
                      width: double.maxFinite,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context,index)=>Container(
                            width: 320,
                            height: 100,
                            margin: EdgeInsets.symmetric(horizontal: 37,vertical: 33),
                            color: Colors.black,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage("${picture[index]}"),),
                          )),
                    ))

                  ],
                ),
                Container(
                    width: 400,
                    height: 340,
                    child:   GridView.builder(
                      padding: EdgeInsets.all(20),
                      itemCount: deals.length,
                      itemBuilder: (BuildContext,index){
                        return Container(
                          width: 100,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(

                                    blurRadius: 10
                                )
                              ]
                          ),
                            child: Stack(
                              children: [
                              Positioned(
                                  child:   Container(
                                width: 140,
                                height: 105,
                               color: Colors.white,
                                    child:Image(image: AssetImage("${deals[index]}"),)
                              ),
                                left: 13,
                              ),
                                Positioned(

                                    child: Text("${dealsname[index]}  ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                  top: 95,
                                  left: 45,
                                )
                              ],
                            ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 25,
                          crossAxisSpacing: 20,
                        mainAxisExtent: 150
                      ),
                    ),
                  ),
SizedBox(height: 30,),
Container(
  color: Colors.white,
  width: double.infinity,
  height: 230,
  child: Stack(
    children: [
      Positioned(
          child: Container(
        width: 200,
        height: 200,
        child: Image(image: AssetImage("uimagesimple/firstintro.jpeg"),),
      ),
      top: 13,
      left: 10,),
      Positioned(
        child: Container(
          width: 180,
          height: 70,
          color: Colors.white,
          child: Text("Xprs Azadi Deal",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 24),),
        ),
        top: 13,
        left: 200,),
      Positioned(
        child: Container(
          width: 180,
          height: 60,
          color: Colors.white,
          child: Text("2 Chicken Chapli Burger 2 Sufi Drink Cans",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15),),
        ),
        top: 50,
        left: 200,),
      Positioned(
        child: Container(
          width: 180,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
         child: Center(
           child: Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),),
         ),
        ),
        top: 170,
        left: 200,),
    ],
  ),
),
                SizedBox(height: 30,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
