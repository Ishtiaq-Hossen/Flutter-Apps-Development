

import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  get topLeft => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add, color: Colors.white,

        ),
        onPressed: () {
          {
            {
              // flutter defined function
              //BuildContext context;
              showDialog(

                context: context,

                builder: (BuildContext context) {
                  return AlertDialog(

                    title: const Text('Add Task'),
                    //backgroundColor: Colors.white,

                    content: TextField(

                      decoration: InputDecoration(hintText: "Enter your input here"),

                    ),

                    actions: <Widget>[

                      TextButton(

                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },

                      ),

                      TextButton(

                        child: const Text('Add'),

                        onPressed: () {
                          // Handle the submit action
                          Navigator.of(context).pop();
                        },

                      ),
                    ],

                  );
                },

              );
            }
          }
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("assets/Images/you.JPEG"),
                ),
                SizedBox(height: 10),
                Text(
                  "Ishtiaq Hossen",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "ishtiaqhossen321@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "My Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "3 Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(

            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35.0),
                  topLeft: Radius.circular(35.0),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
            ),


            //height: 100,

          ),

        ],
      ),
    );

  }


}
