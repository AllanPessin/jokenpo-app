import 'dart:math';

import 'package:flutter/material.dart';

class JokenpoMoves extends StatefulWidget {
  @override
  _JokenpoMovesState createState() => _JokenpoMovesState();
}

class _JokenpoMovesState extends State<JokenpoMoves> {
  
  var imageBot = AssetImage("lib/assets/nenhum.png");

  var imageUser = AssetImage("lib/assets/nenhum.png");

  var userChoice = "";

  var _message = "";

  void rockChoice () {
    this.imageUser = AssetImage("lib/assets/pedra.png");
    this.userChoice = "rock";

    var options = ["rock", "scissor", "paper"];
    var number = Random().nextInt(2);
    var choice = options[number];

    if( 
      userChoice == "rock" && choice == "scissor" || 
      userChoice == "scissor" && choice == "paper" ||
      userChoice == "paper" && choice == "rock"
    ){
      this._message = "VOCÊ GANHOU!!!";
    } else if(
      choice == "rock" && userChoice == "scissor" ||
      choice == "scissor" && userChoice == "paper" ||
      choice == "paper" && userChoice == "rock"
    ){
      this._message = "VOCÊ PERDEU!!!";
    } else {
      this._message = "EMPATE!!!";
    }

    switch (choice) {
      case "rock":
      setState(() {
        this.imageBot = AssetImage("lib/assets/pedra.png");
      });
      break;
      case "paper":
      setState(() {
        this.imageBot = AssetImage("lib/assets/papel.png");
      });
      break;
      case "scissor":
      setState(() {
        this.imageBot = AssetImage("lib/assets/tesoura.png");
      });
      break;
    }

  }
  void paperChoice () {
    this.imageUser = AssetImage("lib/assets/papel.png");
    this.userChoice = "paper";

    var options = ["rock", "scissor", "paper"];
    var number = Random().nextInt(2);
    var choice = options[number];

    if( 
      userChoice == "rock" && choice == "scissor" || 
      userChoice == "scissor" && choice == "paper" ||
      userChoice == "paper" && choice == "rock"
    ){
      this._message = "VOCÊ GANHOU!!!";
    } else if(
      choice == "rock" && userChoice == "scissor" ||
      choice == "scissor" && userChoice == "paper" ||
      choice == "paper" && userChoice == "rock"
    ){
      this._message = "VOCÊ PERDEU!!!";
    } else {
      this._message = "EMPATE!!!";
    }

    switch (choice) {
      case "rock":
      setState(() {
        this.imageBot = AssetImage("lib/assets/pedra.png");
      });
      break;
      case "paper":
      setState(() {
        this.imageBot = AssetImage("lib/assets/papel.png");
      });
      break;
      case "scissor":
      setState(() {
        this.imageBot = AssetImage("lib/assets/tesoura.png");
      });
      break;
    }
  }
  void scissorChoice () {
    this.imageUser = AssetImage("lib/assets/tesoura.png");
    this.userChoice = "scissor";

    var options = ["rock", "scissor", "paper"];
    var number = Random().nextInt(2);
    var choice = options[number];

    if( 
      userChoice == "rock" && choice == "scissor" || 
      userChoice == "scissor" && choice == "paper" ||
      userChoice == "paper" && choice == "rock"
    ){
      this._message = "VOCÊ GANHOU!!!";
    } else if(
      choice == "rock" && userChoice == "scissor" ||
      choice == "scissor" && userChoice == "paper" ||
      choice == "paper" && userChoice == "rock"
    ){
      this._message = "VOCÊ PERDEU!!!";
    } else {
      this._message = "EMPATE!!!";
    }

    switch (choice) {
      case "rock":
      setState(() {
        this.imageBot = AssetImage("lib/assets/pedra.png");
      });
      break;
      case "paper":
      setState(() {
        this.imageBot = AssetImage("lib/assets/papel.png");
      });
      break;
      case "scissor":
      setState(() {
        this.imageBot = AssetImage("lib/assets/tesoura.png");
      });
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue[50],
      child: Column(        
        children: [
          SizedBox(
            height: 100.0,
          ),
          Container(            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Container(
                    child: Image(image: imageBot),
                  ),
                ),
                Container(
                  child: Container(
                    child: Image(image: imageUser),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Bot",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.red[800],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Você",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.blue[800],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Text(_message,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            child: Text('Escolha um opção',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, right: 10),
                child: FlatButton(onPressed: () => {rockChoice()}, 
                  child: Text(
                  "Pedra"
                  ),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: FlatButton(
                  onPressed: () => {paperChoice()}, 
                  child: Text(
                  "Papel"
                  ),
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: FlatButton(onPressed: () => {scissorChoice()}, 
                  child: Text(
                  "Tesoura"
                  ),
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}