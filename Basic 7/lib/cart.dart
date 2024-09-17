import 'package:flutter/material.dart';
class caart extends StatefulWidget {
  const caart({super.key});

  @override
  State<caart> createState() => _caartState();
}

class _caartState extends State<caart> {
  int no=0;
  void add(){
    no++;
  }
  void sub(){
    no--;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Container(

            margin: EdgeInsets.symmetric(horizontal: 80),
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
Container(
  width: double.infinity,
  height: 300,
       child: Image(
         fit: BoxFit.fill,
         image: AssetImage("uimagesimple/firstintro.jpeg"),),

),
              SizedBox(height: 20,),
              Text("Xprs Azadi Deal                         ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
              Text("PKR 1000                                                ",style: TextStyle(color: Colors.black,fontSize: 20),),
              Text("Details                                        ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
              Text("2 Mighty Chicken Burgers, 2 Drinks     ", style: TextStyle(color: Colors.black,fontSize: 20),),

              SizedBox(height: 30,),
             Stack(
               children: [
                 Container(
                   width: 350,
                   height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3
                    )
                  ),
                 ),
                 Positioned(
                   top: 3,
                     left: 3,
                     child: Container(
                   width: 70,
                   height: 55,
                   color: Colors.red,
                   child: ElevatedButton(
                     onPressed: () {
                       setState(() {
                         add();
                       });
                     },
                     child: Icon(Icons.add),
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.red,
                       foregroundColor: Colors.white,
                       minimumSize: Size(100, 100), // Set both width and height to the same value
                     ),
                   ),
                 )),
                 Positioned(

                     left: 140,
                     child: Container(
                   width: 70,
                   height: 60,
                   child: Center(
                     child: Text("${no}",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                   )
                 )),
                 Positioned(
                     top: 3,
                     left: 278,
                     child: Container(
                   width: 70,
                   height: 55,
                   color: Colors.red,
                       child: ElevatedButton(
                         onPressed: () {
                           setState(() {
                             sub();
                           });
                         },
                         child: Icon(Icons.remove),
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.red,
                           foregroundColor: Colors.white,
                           minimumSize: Size(100, 100), // Set both width and height to the same value
                         ),
                       ),
                 )),

               ],
             ),
              SizedBox(height: 30,),
              Container(
                width: 350,
                height: 50,
decoration: BoxDecoration(
  color: Colors.red,
borderRadius: BorderRadius.circular(13),
  border: Border.all(
    color: Colors.black,
    width: 3,
  )
),
              child: Center(
                child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
