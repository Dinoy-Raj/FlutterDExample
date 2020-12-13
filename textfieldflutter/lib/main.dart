

import 'package:flutter/material.dart';

import 'max_line_formatter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Center(
       child: buildTextField(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  final int maxlines = 7;
  final int maxlength = 7;
  final maxForedValue =3;
  Widget buildTextField()=>Padding(
    padding: const EdgeInsets.all(10.0),
    child: Builder(
      builder: (context)=> TextField(
       textInputAction: TextInputAction.newline,
          //keyboardType: TextInputType.multiline,
        autofocus: true,
        maxLength: maxlength,
        maxLengthEnforced: false,
        maxLines: maxlines,
        inputFormatters: [
          MaxLinesTextInputFormatter(maxForedValue,(){
            showSnackBar(context, "Only $maxForedValue Line Breaks Are Allowed");
          }),
        ],
        decoration: InputDecoration(
          border: border(),
          hintText: "dinoyraj",
          labelText: "password",
        ),
      ),
    ),
  );

  InputBorder border() => OutlineInputBorder(
   borderRadius: BorderRadius.all(Radius.circular(16)),
    borderSide: BorderSide(color: Colors.greenAccent,width: 0),
  );
  void showSnackBar(BuildContext context,String text){
    Scaffold.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(
          content:Text(text),
        ));

  }
}
