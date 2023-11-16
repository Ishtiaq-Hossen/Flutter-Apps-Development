import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar( //appvar
          title:Text(
              "Todo App",
              style: TextStyle(color: Colors.blue),
          ),
      ),
      */
      //layout widget
      body: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          children: [
            Container(
            color: Colors.red,
                width: 100,
                height:100,
            ),
            Container(
              color: Colors.red,
              width: 100,
              height:100,
            ),
            Container(
              color: Colors.red,
              width: 100,
              height:100,
            ),


          ],
        ),

      ),
    );
  }
}
