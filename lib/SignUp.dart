// import 'package:finalproject/Login.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'Login2.dart';
//
//
// class SignUp extends StatefulWidget{
//   @override
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   final textFieldFocusNode = FocusNode();
//
//   bool _obscured = false;
//
//   void _toggleObscured() {
//     setState(() {
//       _obscured = !_obscured;
//       if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
//       textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.black,
//           leading: InkWell(
//               onTap: (){
//                 Navigator.pop(context);
//
//               },
//               child: Icon(Icons.arrow_back_ios)),
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
//                   "Sign up",
//                   style: TextStyle(
//                       fontSize: 25,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 // Container(
//                 //   padding: EdgeInsetsDirectional.all(20),
//                 //   child: TextField(
//                 //     decoration: new InputDecoration(
//                 //         fillColor: Colors.grey,
//                 //         focusedBorder: OutlineInputBorder(
//                 //           borderSide:
//                 //           const BorderSide(color: Colors.black, width: 1.0),
//                 //           borderRadius: BorderRadius.circular(25.0),
//                 //         ),
//                 //         border: new OutlineInputBorder(
//                 //             borderSide: new BorderSide(color: Colors.black)),
//                 //         labelText: 'Name',
//                 //         labelStyle:
//                 //         TextStyle(fontSize: 15.0, color: Colors.black),
//                 //         prefixText: ' ',
//                 //         suffixText: '',
//                 //         suffixStyle: const TextStyle(color: Colors.black)),
//                 //   ),
//                 // ),
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
//                     keyboardType: TextInputType.visiblePassword,
//                     obscureText: _obscured,
//                     focusNode: textFieldFocusNode,
//                     decoration: new InputDecoration(
//
//                       fillColor: Colors.grey,
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                         const BorderSide(color: Colors.black, width: 1.0),
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                       border: new OutlineInputBorder(
//                           borderSide: new BorderSide(color: Colors.black,width: 3.0)),
//                       labelText: 'password',
//                       labelStyle:
//                       TextStyle(fontSize: 15.0, color: Colors.black),
//                       suffixIcon: Padding(
//                         padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
//                         child: GestureDetector(
//                           onTap: _toggleObscured,
//                           child: Icon(
//                             color: Colors.black,
//                             _obscured
//                                 ? Icons.visibility_rounded
//                                 : Icons.visibility_off_rounded,
//                             size: 24,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Container(
//                 //   padding: EdgeInsetsDirectional.all(20),
//                 //   child: TextField(
//                 //     keyboardType: TextInputType.visiblePassword,
//                 //     obscureText: _obscured,
//                 //     focusNode: textFieldFocusNode,
//                 //     decoration: new InputDecoration(
//                 //
//                 //       fillColor: Colors.grey,
//                 //       focusedBorder: OutlineInputBorder(
//                 //         borderSide:
//                 //         const BorderSide(color: Colors.black, width: 1.0),
//                 //         borderRadius: BorderRadius.circular(25.0),
//                 //       ),
//                 //       border: new OutlineInputBorder(
//                 //           borderSide: new BorderSide(color: Colors.black,width: 3.0)),
//                 //       labelText: 'password',
//                 //       labelStyle:
//                 //       TextStyle(fontSize: 15.0, color: Colors.black),
//                 //       suffixIcon: Padding(
//                 //         padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
//                 //         child: GestureDetector(
//                 //           onTap: _toggleObscured,
//                 //           child: Icon(
//                 //             color: Colors.black,
//                 //             _obscured
//                 //                 ? Icons.visibility_rounded
//                 //                 : Icons.visibility_off_rounded,
//                 //             size: 24,
//                 //           ),
//                 //         ),
//                 //       ),
//                 //     ),
//                 //   ),
//                 // ),
//
//                 // Container(
//                 //   padding: EdgeInsetsDirectional.all(20),
//                 //   child: TextField(
//                 //     decoration: new InputDecoration(
//                 //         fillColor: Colors.grey,
//                 //         focusedBorder: OutlineInputBorder(
//                 //           borderSide:
//                 //           const BorderSide(color: Colors.black, width: 1.0),
//                 //           borderRadius: BorderRadius.circular(25.0),
//                 //         ),
//                 //         border: new OutlineInputBorder(
//                 //             borderSide: new BorderSide(color: Colors.black,width: 3.0)),
//                 //         labelText: 'Phone Number',
//                 //         labelStyle:
//                 //         TextStyle(fontSize: 15.0, color: Colors.black),
//                 //         prefixText: ' ',
//                 //         suffixText: '',
//                 //         suffixStyle: const TextStyle(color: Colors.white)),
//                 //   ),
//                 // ),
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
//                         'Sign up',
//                         style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       onPressed: () {},
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
//                               context,
//                               MaterialPageRoute(builder: (context) => AuthApp()));
//
//                         },
//                         child: Text("already have an account login")),
//                     SizedBox(
//                       height: 100,
//                     ),
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
//
