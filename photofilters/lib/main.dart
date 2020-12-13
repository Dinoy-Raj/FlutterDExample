import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'color_filters.dart';

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
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<int> imageBytes;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Filters"),
        actions: [
          IconButton(icon: Icon(Icons.add_a_photo),
              onPressed:pickImage )
        ],
      ),
      body:ColorFiltered(
        colorFilter: ColorFilters.invert,
          child: buildImage()
      ),
    );
  }
  Future pickImage() async {
    final image = await ImagePicker().getImage(source: ImageSource.gallery);

    setState(() {
      this.imageBytes =  File(image.path).readAsBytesSync();
    });
  }

  Widget buildImage(){
    return imageBytes != null?Image.memory(imageBytes):Container(
      child: Center(
        child:Text("Pick The Image"),
      ),
    );
  }
}
