// import 'package:finalproject/Categories.dart';
// import 'package:finalproject/main.dart';
// import 'package:finalproject/todo.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:finalproject/todo.dart';
// import 'SignUp.dart';
// import 'create_todo.dart';
//
// class Login extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.black,
//           leading: Icon(Icons.arrow_back_ios),
//           title: Text("N0VICTOR"),
//           actions: [Icon(Icons.check),
//             SizedBox(
//               width: 30,
//             ),
//           ],
//         ),
//         body: Container(
//
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 90,
//                 ),
//                 Text(
//                   "Login",
//                   style: TextStyle(
//                       fontSize: 25,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Container(
//                   padding: EdgeInsetsDirectional.all(20),
//                   child: TextField(
//                     decoration: new InputDecoration(
//                         fillColor: Colors.grey,
//                         focusedBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(color: Colors.black, width: 1.0),
//                           borderRadius: BorderRadius.circular(25.0),
//                         ),
//                         border: new OutlineInputBorder(
//                             borderSide: new BorderSide(color: Colors.black)),
//                         labelText: 'E-Mail',
//                         labelStyle:
//                         TextStyle(fontSize: 15.0, color: Colors.black),
//                         prefixText: ' ',
//                         suffixText: '',
//                         suffixStyle: const TextStyle(color: Colors.black)),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsetsDirectional.all(20),
//                   child: TextField(
//                     decoration: new InputDecoration(
//                         fillColor: Colors.grey,
//                         focusedBorder: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(color: Colors.black, width: 1.0),
//                           borderRadius: BorderRadius.circular(25.0),
//                         ),
//                         border: new OutlineInputBorder(
//                             borderSide: new BorderSide(color: Colors.black,width: 3.0)),
//                         labelText: 'password',
//                         labelStyle:
//                         TextStyle(fontSize: 15.0, color: Colors.black),
//                         prefixText: ' ',
//                         suffixText: '',
//                         suffixStyle: const TextStyle(color: Colors.white)),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Container(
//                     padding: new EdgeInsets.only(
//                       top: 10.0,
//                       right: 30.0,
//                       left: 30.0,
//                     ),
//                     height: 60,
//                     width: 900,
//                     child: ElevatedButton(
//                       child: const Text(
//                         'Login',
//                         style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => Cat()));
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.black,
//                         shape: new RoundedRectangleBorder(
//                             borderRadius: new BorderRadius.circular(15.0),
//                             side: BorderSide(
//                                 color: Colors.black12)), // Background color
//                       ),
//                     )),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: 35,
//
//                     ),
//                     InkWell(
//                         onTap: (){
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => SignUp()),
//                           );
//
//                         },
//                         child: Text("Don't Have an Account?")),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
