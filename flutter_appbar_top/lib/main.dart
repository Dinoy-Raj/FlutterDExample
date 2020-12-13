import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  Widget build(BuildContext context) {
    bool butt = true;

    void _button1() {
      setState(() {
        butt = false;
      });
    }
    void _button2() {
      setState(() {
        butt = true;
      });
    }
    return Scaffold(
      appBar:AppBar(

        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: Icon(Icons.menu,color: Colors.black26),
        title: Text("DinoyApp",
        style: TextStyle(
          color: Colors.black26,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(icon: Icon(Icons.favorite_border,color: Colors.black26), onPressed: () {})),
         /* FavoriteButton(
            iconSize: 40.0,
            valueChanged: (_isFavorite) {
              print('Is Favorite $_isFavorite)');
            },
          ),may you can use*/
          IconButton(icon: Icon(Icons.search,color: Colors.black26), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert,color: Colors.black26), onPressed: (){})
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon:Icon(Icons.menu,color: Colors.black26,) , onPressed:(){}),
            Spacer(),
            IconButton(icon:Icon(Icons.search,color: Colors.black26,) , onPressed:(){}),
            //Spacer(),
            IconButton(icon:Icon(Icons.more_vert,color: Colors.black26,) , onPressed:(){}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.black26,),
        onPressed: (){},
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
