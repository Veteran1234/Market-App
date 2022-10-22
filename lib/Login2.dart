import 'package:finalproject/Categories.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'SignUp.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (_) => AuthApp(),
    },
  ));
}

class AuthApp extends StatefulWidget {
  const AuthApp({Key? key}) : super(key: key);

  @override
  State<AuthApp> createState() => _AuthAppState();
}

class _AuthAppState extends State<AuthApp> {
  checkByAuthStateChanges() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.authStateChanges().listen((user) {
      if (user == null) {
        showMsg('State Change: User sign out');
      } else {
        showMsg('State Change: user signed In');
      }
    });
  }

  checkByIdToken() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.idTokenChanges().listen((user) {
      if (user == null) {
        showMsg('Id Token: User sign out');
      } else {
        showMsg('Id Token: user signed In');
      }
    });
  }

  checkByUserChanges() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.userChanges().listen((user) {
      if (user == null) {
        showMsg('User changes: User sign out');
      } else {
        showMsg('User changes: user signed In');
      }
    });
  }

  signInAnonymously() async {
    final cred = await FirebaseAuth.instance.signOut();
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      showMsg('UserId: ${user.uid}');
    }
  }

  signUpWithUsernameAndPassword(email, password) async {
    try {
      final cred = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
      }
      if (user != null) {
        showMsg('UserId: ${cred.user!.email} \n'
            'Email verified: ${cred.user!.emailVerified}\n'
            'Last time: ${cred.user!.metadata.lastSignInTime}');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showMsg('Password is weak');
      } else if (e.code == 'email-already-in-use') {
        showMsg('Email already exist');
      }
    } catch (e) {
      showMsg('Error happened');
    }
  }

  signInWithUsernameAndPassword(email, password) async {
    try {
      final cred = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null && !user.emailVerified) {
        showMsg('Login Failed, please verify email');
      } else if (user != null) {
        showMsg('UserId: ${cred.user!.email} \n'
            'Email verified: ${cred.user!.emailVerified}\n'
            'Last time: ${cred.user!.metadata.lastSignInTime}');
        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cat()),
                          );

      }
    } catch (e) {
      showMsg('Error happened');
      showMsg('Please sign up');


    }
  }

  final emailCont = TextEditingController();
  final passwordCont = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text('Login & Sign up',style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),

              TextField(
                decoration: new InputDecoration(
                    fillColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                    labelText: 'E-Mail',
                    labelStyle:
                    TextStyle(fontSize: 15.0, color: Colors.black),
                    prefixText: ' ',
                    suffixText: '',
                    suffixStyle: const TextStyle(color: Colors.black)),
                controller: emailCont,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: new InputDecoration(
                    fillColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black,width: 3.0)),
                    labelText: 'password',
                    labelStyle:
                    TextStyle(fontSize: 15.0, color: Colors.black),
                    prefixText: ' ',
                    suffixText: '',
                    suffixStyle: const TextStyle(color: Colors.white)),
                controller: passwordCont,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton( style: ElevatedButton.styleFrom(
                primary: Colors.black
              ),
                  onPressed: () async {

                    signInWithUsernameAndPassword(
                      emailCont.text,
                      passwordCont.text,
                    );



                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  )),
              SizedBox(
                width: 400,
                height: 2,
                child: const DecoratedBox(decoration: BoxDecoration(color: Colors.black26)),
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black
                  ),
                  onPressed: () async {
                    signUpWithUsernameAndPassword(
                      emailCont.text,
                      passwordCont.text,
                    );
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  )),

            ],
          ),
        ),
      ),
    );
  }

  showMsg(msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
            msg,
            style: TextStyle(
              fontSize: 26,
            ),
          )),
    );
  }
}