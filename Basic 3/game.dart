import 'package:flutter/material.dart';
class TicGame extends StatefulWidget {
  final String player1;
  final String player2;

  const TicGame({Key? key, required this.player1, required this.player2}) : super(key: key);

  @override
  _TicGameState createState() => _TicGameState();
}

class _TicGameState extends State<TicGame> {
  var grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];
  var winner = "";
  var currentplayer = 'X';

  void drawxo(i) {
    if (grid[i] == '-') {
      setState(() {
        grid[i] = currentplayer;
        currentplayer = currentplayer == 'X' ? 'O' : 'X';
      });

      findWinner(grid[i]);
    }
  }

  bool checkMove(i1, i2, i3, sign) {
    if (grid[i1] == sign && grid[i2] == sign && grid[i3] == sign) {
      return true;
    }
    return false;
  }

  void findWinner(currentsign) {
    if (checkMove(0, 1, 2, currentsign) ||
        checkMove(3, 4, 5, currentsign) ||
        checkMove(6, 7, 8, currentsign) || //rows
        checkMove(0, 3, 6, currentsign) ||
        checkMove(1, 4, 7, currentsign) ||
        checkMove(2, 5, 8, currentsign) || //columns
        checkMove(0, 4, 8, currentsign) ||
        checkMove(2, 4, 6, currentsign) //diagonal
    ) {
      setState(() {
        winner = currentsign;
      });
    }
  }

  void reset() {
    setState(() {
      winner = "";
      grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body:  Column(

            children: [
              SizedBox(height: 65,),
              Container(
                child: Center(
                  child: Text("Enjoy the game and play smart",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.blue),),
                ),
              ),
              if (winner != "")
                Text(
                  '${winner == 'X' ? widget.player1 : widget.player2} won the game',
                  style: TextStyle(fontSize:25,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              Container(
                constraints: BoxConstraints(maxHeight: 400, maxWidth: 400),
                margin: EdgeInsets.all(20),
                color: Colors.black,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
                  itemCount: grid.length,
                  itemBuilder: (context, index) => Material(
                    color: Colors.blue,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () => drawxo(index),
                      child: Center(
                          child: Text(
                            grid[index],
                            style: TextStyle(fontSize: 50),
                          )),
                    ),
                  ),
                ),
              ),

               ElevatedButton.icon(
                    onPressed: reset,
                    icon: Icon(Icons.refresh,color: Colors.blue,),
                    label: Text('Play Again')) ,

            ],
          ),
        ),

    );
  }
}