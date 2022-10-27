
import 'dart:io';

import 'package:app_intern/submit_confirm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'globals.dart';
class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage>{


  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Log',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FORM'),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
class MyCustomForm extends StatefulWidget {

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  var name = "";
  var phone = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.

  File? image;
  @override
  pickImage(ImageSource source) async{
    final image=await ImagePicker().pickImage(source: source);
    if(image==null) return;
    final imageTemporary=File(image.path);
    setState(() =>this.image=imageTemporary);
  }





  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          TextFormField(
              controller: genderController,
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter Gender',
              labelText: 'Gender',
            ),
          ),
          TextFormField(
            controller: timeController,
            decoration: const InputDecoration(

              icon: const Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'Dob',
            ),
          ),
          TextFormField(
            controller: pincodeController,
            decoration: const InputDecoration(
              icon: const Icon(Icons.add_location ),
              hintText: 'Enter your Pincode',
              labelText: 'Pincode',
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 50),
            child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 60),
                child: ElevatedButton(

                onPressed: ()=> pickImage(ImageSource.gallery), child: Text("Upload image")),
              ),

              Container(
                child: ElevatedButton(
                onPressed: ()=> pickImage(ImageSource.camera), child: Text("Camera upload")),)
            ],
          ),
          ),

          Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new ElevatedButton(
                child: const Text('CONFIRM'),
                onPressed: () => {
                  Navigator.pushAndRemoveUntil(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, a, b) =>
                            submit_confirm(),
                        transitionDuration:
                        Duration(seconds: 0),
                      ),
                          (route) => false)
                },
              )),
        ],
      ),
    );
  }






}


