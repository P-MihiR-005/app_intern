import 'dart:io';

import 'package:app_intern/submit_confirm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'globals.dart';
class Databasepage extends StatefulWidget {
  @override
  _DatabaseState createState() => _DatabaseState();
}

class _DatabaseState extends State<Databasepage>{


  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log',
      home: Scaffold(
        appBar: AppBar(
          title: Text('DATA'),
        ),

      ),
    );
  }
}
