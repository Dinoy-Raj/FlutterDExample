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
        primarySwatch: Colors.green,
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

  List<bool> isSelected = [false,false,false];
  List<bool> isSelected2 = [false,false,false];
  var isSelected3 = false;
  var icon = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child: Column(
            children: [

              TextButton(
                  onPressed: (){},
                  child: Text("Dinoy"),
                ),


                 TextButton.icon(
                  icon: Icon(Icons.ac_unit),
                  label: Text("dinoy"),
                   onPressed: (){},
              ),

              OutlinedButton(
                //autofocus: true,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
                  ),
                  onPressed: (){},
                  child: Text("Dinoy"),
              ),

              OutlinedButton.icon(
                  onPressed:(){},
                  icon: Icon(Icons.delete),
                  label: Text("Delete"),

              ),

              ElevatedButton(
                  onPressed: (){},
                  child: Text("Dinoy"),
              ),

              ElevatedButton.icon(
                  onPressed:(){},
                  icon: Icon(Icons.add,size: 18,),
                  label: Text("Dinoy"),
              ),

              ToggleButtons(
                  children: [
                    Text("dinoy1"),
                    Text("dinoy2"),
                    Text("dinoy3"),
                  ],
                  isSelected: isSelected,
                  onPressed:(int index){
                    setState(() {
                      for (int indexBtn = 0;indexBtn < isSelected.length;indexBtn++) {
                        if (indexBtn == index) {
                          isSelected[indexBtn] = true;
                        } else {
                          isSelected[indexBtn] = false;
                        }
                      }
                    });
                  } ,
              ),
              
              Container(
                height: 20,
              ),

              ToggleButtons(
                color: Colors.black26,
                children: [
                Icon(Icons.format_bold,color: Colors.greenAccent,),
                  Icon(Icons.format_italic,color: Colors.greenAccent,),
                  Icon(Icons.format_strikethrough,color: Colors.greenAccent,),
                ],
                isSelected: isSelected2,
                onPressed:(int index){
                  setState(() {
                    for (int indexBtn = 0;indexBtn < isSelected2.length;indexBtn++) {
                      if (indexBtn == index) {
                        isSelected2[indexBtn] = true;
                      } else {
                        isSelected2[indexBtn] = false;
                      }
                    }
                  });
                } ,
              ),

              IconButton(
                  icon: Icon(icon),
                  onPressed: (){
                     isSelected3 = !isSelected3;
                    setState(() {
                      isSelected3? icon = Icons.favorite_sharp:icon = Icons.favorite_border;
                      isSelected3? icon = Icons.favorite_sharp:icon = Icons.favorite_border;
                    });
                  }
              ),

            ],
          ),
        ),
      ),
    );
  }
}
