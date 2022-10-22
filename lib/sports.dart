import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Cat()),
  );
}

class Cat extends StatefulWidget {
  const Cat({Key? key}) : super(key: key);

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  @override
  Widget build(BuildContext context) {
    return
  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Categories"),
        actions: [
          Icon(Icons.check),
          SizedBox(
            width: 30,
          ),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,

                  ),
                  Row(
                    children: [
                      InkWell(
                        // onTap: (){
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => MyApp()),
                        //   );
                        //
                        // },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:NetworkImage(
                                  "https://images.unsplash.com/photo-1559723944-6913027cf19a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGFibGV0JTIwYW5kJTIwcGhvbmV8ZW58MHx8MHx8&w=1000&q=80"),
                              fit: BoxFit.fill,
                            ),
                            // shape: BoxShape.circle,
                          ),
                          padding: EdgeInsetsDirectional.all(70),
                          width: 390,
                          height: 400,

                          child:Column(
                            children: [

                              Text('Mobiles, Tablets ',style:TextStyle(fontSize:40),),
                            ],
                          ),
                        ),
                      ),
                    ],

                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [

                      InkWell(
                        // onTap: (){
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => ()),
                        //   );
                        //
                        // },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:NetworkImage(
                                  "https://media.istockphoto.com/photos/unrecognizable-athlete-jogging-on-the-road-during-rainy-day-picture-id1185370324?k=20&m=1185370324&s=612x612&w=0&h=9MyFt3QWZpd5OSl1a3GEsl81uesbI_MeKgDMqMrFxYs="),
                              fit: BoxFit.fill,
                            ),
                            // shape: BoxShape.circle,
                          ),
                          padding: EdgeInsetsDirectional.only(top: 150,
                              start: 30),
                          width: 390,
                          height: 400,

                          child:Column(
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Sports' ,style:TextStyle(fontSize:60),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [

                      InkWell(
                        // onTap: (){
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => MyApp()),
                        //   );
                        //
                        // },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:NetworkImage(
                                  "https://www.rd.com/wp-content/uploads/2017/09/00_groceryshopping_This-is-the-Absolute-Worst-Day-to-Shop-for-Your-Thanksgiving-Groceries_299082896_wavebreakmedia.jpg"),
                              fit: BoxFit.fill,
                            ),
                            // shape: BoxShape.circle,
                          ),
                          padding: EdgeInsetsDirectional.only(top: 150,
                              start: 30),
                          width: 390,
                          height: 400,
                          child: Text('Supermarket',style:TextStyle(fontSize: 40),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



}