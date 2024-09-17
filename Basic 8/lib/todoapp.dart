import 'package:flutter/material.dart';
import 'package:todoapp/firsttodo.dart';
import 'package:todoapp/todomodel.dart';
class todo extends StatefulWidget {
  const todo({super.key});

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  List<todomodel> todos=[];
  TextEditingController title=TextEditingController();
  TextEditingController dis=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
           Expanded(
         flex: 7,
             child:Row(
               children: [
                 Expanded(child:ListView.builder(

                     itemCount: todos.length,
                     itemBuilder: (context,index){

                       return Row(
                         children: [
                       firsttodo(title: todos[index].titlee, des: todos[index].des),
                        GestureDetector(
                          child:    Icon(Icons.delete),
                          onTap: (){
                            setState(() {
                              todos.removeAt(index);
                            });
                          },
                        )
                         ],
                       );
                     }) ),

               ],
             )),
Flexible(
  child: Container(
    height:410,

)),

 Container(
   width: 350,
   child: TextFormField(
     controller: title,
     decoration: InputDecoration(
       hintText: "TITLE",
         border: OutlineInputBorder(

         )
     ),
   ),
 ),

              SizedBox(height: 15,),
              Container(
                width: 350,
                child: TextFormField(
controller: dis,
                  decoration: InputDecoration(
                    hintText: "DESCRIPTION",
                      border: OutlineInputBorder(

                      )
                  ),
                ),
              ),
SizedBox(height: 5,),
ElevatedButton(onPressed: (){
setState(() {
  todos.add(todomodel(titlee: title.text, des: dis.text));
});


}, child: Text("ADD TODO"))

            ],
          ),
        ),
      ),
    );
  }
}
