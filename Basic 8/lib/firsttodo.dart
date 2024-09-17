import 'package:flutter/material.dart';
class firsttodo extends StatefulWidget {
  String ?title;
  String ?des;
  firsttodo({required this.title,required this.des});
  @override
  State<firsttodo> createState() => _firsttodoState();
}

class _firsttodoState extends State<firsttodo> {
  Color color=Colors.green;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          if(color==Colors.green)
            {
              color=Colors.red;
            }
          else
            {
              color=Colors.green;
            }
        });

      },
      child: Container(
        margin: EdgeInsets.all(6),
        width: 350,
        height: 70,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(
            child:   Text("${widget.title}",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
          ),
            Center(
              child: Text("${widget.des}",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
            ),

          ],
        ),
        
      ),
    );
  }
}
