import 'package:flutter/material.dart';
import 'package:ticractoe/game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController player1Controller = TextEditingController();
  final TextEditingController player2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 800,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 200,
                    child: Image.asset("abdimage/ddimg.jpg"),
                  ),
                  Positioned(
                      top: 330,
                      left: 30,
                      child: SizedBox(
                        width: 330,
                        height: 100,
                        child: TextField(
                          controller: player1Controller,
                          decoration: const InputDecoration(
                              hintText: "Player 1 NAME",
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue, width: 2))),
                        ),
                      )),
                  Positioned(
                      top: 410,
                      left: 30,
                      child: SizedBox(
                        height: 100,
                        width: 330,
                        child: TextField(
                          controller: player2Controller,
                          decoration: const InputDecoration(
                              hintText: "Player 2 NAME",
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue, width: 2))),
                        ),
                      )),
                  Positioned(
                      top: 500,
                      left: 145,
                      child: Builder(
                        builder: (BuildContext context) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.black, // Border color
                                width: 2.0, // Border width
                              ),
                            ),
                            width: 100,
                            height: 50,
                            child: InkWell(
                              highlightColor: Colors.purple,
                              borderRadius: BorderRadius.circular(25),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TicGame(
                                      player1: player1Controller.text,
                                      player2: player2Controller.text,
                                    ),
                                  ),
                                );
                              },
                              child: const Center(
                                child: Text(
                                  "START",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )),
                  Positioned(
                      top: 610,
                      left: 70,
                      child: Container(
                        width: 260,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: "    Sharpen your strategy\n",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "Have fun with every turn.",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ]),
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
