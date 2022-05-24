import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            // alignment: Alignment.center,
            Image.network( 'https://cdn.pixabay.com/photo/2012/02/25/19/12/animal-16976_960_720.jpg', 
              //'https://cdn.pixabay.com/photo/2019/10/31/18/30/transfer-the-dough-to-a-4592535_960_720.jpg',
             //'https://cdn.pixabay.com/photo/2020/05/08/05/06/cookies-5144158_960_720.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Brazilian wandering spider the most venomous in the world. Hundreds of bites are reported annually, but a powerful anti-venom prevents deaths in most cases.',
                  style: TextStyle(
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                )),

            Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Reaper',
                  style: TextStyle(
                      color: Colors.grey,
                     // fontWeight: FontWeight.bold,
                      fontSize: 20.0),
        ),
                ),
           
            Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  '56 upvote',
                  style: TextStyle(
                      color: Colors.grey,
                      //fontWeight: FontWeight.bold,
                      fontSize: 20.0),
        ),
                ),
            
              Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '5 min Reads',
                  style: TextStyle(
                      color: Colors.grey,
                      //fontWeight: FontWeight.bold,
                      fontSize: 20.0),
        ),
                ),
            
              Container(
   //decoration: new BoxDecoration(color: Colors.white),
   alignment: Alignment.topRight,
   height: 40,
   child: Image.network('https://cdn.pixabay.com/photo/2021/02/26/15/53/biscuit-6052265_960_720.jpg',fit: BoxFit.fill) 
),
        
        ],
          ),
    ),
      );
  }
}

