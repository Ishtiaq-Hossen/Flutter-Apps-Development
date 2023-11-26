import 'package:flutter/material.dart';
import 'package:todo_app_iub/task.dart';

import 'add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> _tasks = [/*
    Task(name: 'Learn Flutter'),
    Task(name: 'Teach State Management'),
    Task(name: 'Import Provider Package'),*/
  ];
  var count=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan[900],
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddTaskScreen(
                  onAddTask: (newTask) {
                    setState(() {
                      _tasks.add(Task(name: newTask));
                    });
                  },
                 ),
              ),
            ),
          );
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/you.JPEG"),
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

                  //"${_tasks.length} Tasks",
                  "${_tasks.length-count} Tasks",
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
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),

              child:
              ListView.builder(

                //children: [

                  //ListView.Builder
                  //ListView.builder(
                      itemCount: _tasks.length,
                      itemBuilder: (BuildContext context,int index)
                      {
                        //index=_tasks.length;
                        //for (var task in _tasks)
                         return ListTile(

                          title: Text(_tasks[index].name,
                              style:
                              _tasks[index].isDone==true ? TextStyle(decoration: TextDecoration.lineThrough): TextStyle()
                          ),

                          trailing: Checkbox(
                            value: _tasks[index].isDone,

                            onChanged: (value) {
                              setState(() {
                                _tasks[index].isDone = value!;

                                count=0;
                                for(var task in _tasks){
                                  if(task.isDone){
                                    count =count+1;
                                  }
                                }
                                // count1=count;
                                // count=_tasks.length-count1;
                              },
                              );
                            },
                          ),
                        );
                      },


              ),

              /*
              child: ListView(
              children: [

                  for (var task in _tasks)

                        ListTile(

                          title: Text(task.name,
                            style:
                            task.isDone==true ? TextStyle(decoration: TextDecoration.lineThrough): TextStyle()
                          ),

                          trailing: Checkbox(
                            value: task.isDone,

                            onChanged: (value) {
                                setState(() {
                                  task.isDone = value!;
                                  },
                                );
                            },
                          ),
                        ),

                    ]

              ),*/

              ),
          )
        ],
      ),
    );
  }
}
