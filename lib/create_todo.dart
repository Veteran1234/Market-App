import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:finalproject/todo.dart';

class CreateTodo extends StatefulWidget {
  const CreateTodo({Key? key}) : super(key: key);

  @override
  State<CreateTodo> createState() => _CreateTodoState();
}

class _CreateTodoState extends State<CreateTodo> {
  final titleCont = TextEditingController();
  final detailsCont = TextEditingController();
  final imgCont = TextEditingController();


  Object? get dataToSave => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text('Add Product'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Product name',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            TextField(
              controller: titleCont,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            Text(
              'Product description',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            TextField(
              controller: detailsCont,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            TextField(
              controller: imgCont,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,

              ),
              onPressed: () async{



                // };
                 final firestore = FirebaseFirestore.instance;
                 firestore.collection('Categorie1').add({
                   'product name':titleCont.text ,
                 'product description': detailsCont.text ,




                 });


                Provider.of<Todo>(
                  context,
                  listen: false,
                ).addTaskToList(
                  titleCont.text,
                  detailsCont.text,
                  imgCont.text,
                );
                Navigator.pop(context);
              },
              child: Text(
                'Done',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            )
          ],
        ),
      ),
    );
    CollectionReference collectionref = FirebaseFirestore.instance.collection('Categorie1');
    collectionref.add(dataToSave);
  }
}
