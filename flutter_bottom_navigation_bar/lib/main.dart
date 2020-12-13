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
  int _currentIndex = 0;
  String contents ="Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.black.withOpacity(.20),
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (value){
          setState(() {
             _currentIndex = value;
             switch(_currentIndex){
               case 0:
                 contents = "Favorite";
                 break;
               case 1:
                 contents = "Music";
                 break;
               case 2:
                 contents = "Location";
                 break;
               case 3:
                 contents = "News";
                 break;
             }
          });
        },

        items: [
          BottomNavigationBarItem(
              title:Text("favorite"),
              icon: Icon(Icons.favorite)
          ),
          BottomNavigationBarItem(
              title:Text("music"),
              icon: Icon(Icons.music_note_outlined)
          ),
          BottomNavigationBarItem(
              title:Text("location"),
              icon: Icon(Icons.location_on_rounded)
          ),
          BottomNavigationBarItem(
              title:Text("news"),
              icon: Icon(Icons.library_books_rounded)
          ),
        ],

      ),
      body: Container(
        child: Center(
          child: Text(
            contents,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,

            ),
          ),
        ),
      ),

    );
  }
}
