import 'package:finalproject/Login2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:finalproject/create_todo.dart';
import 'package:finalproject/todo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'SignUp.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Todo todo = Todo(); // shared Object
  runApp(ChangeNotifierProvider(
    create: (_) => Todo(),
    child: MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (_) => AuthApp(), // UI  -> MyApp()
        '/todo': (_) => CreateTodo(), // UI  -> CreateTodo()
      },
      // routes: {
      //   '/home': (_) => ChangeNotifierProvider(
      //         create: (_) => todo, // Data -> Todo()
      //         child: MyApp(), // UI  -> MyApp()
      //       ),
      //   '/todo': (_) => ChangeNotifierProvider(
      //         create: (_) => todo, // Data -> Todo()
      //         child: CreateTodo(), // UI  -> CreateTodo()
      //       ),
      // },
    ),
  ));
}

// State management
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text('Mobile & Tablets Prodcuts'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Consumer<Todo>(
          builder: (context, todo, child) => ListView.builder(
            itemCount: todo.tasks.length,
            itemBuilder: (context, index) => Container(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 8,
                  ),
                  title: Text(
                    todo.tasks[index].title,
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  subtitle: Text(
                    todo.tasks[index].details,
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "${todo.tasks[index].img}"),
                    radius: 30,
                  ),
                )),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pushNamed(context, '/todo');
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
