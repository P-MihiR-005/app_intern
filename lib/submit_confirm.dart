


import 'dart:io';

import 'package:app_intern/Home.dart';
import 'package:app_intern/globals.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_intern/globals.dart';
import 'package:image_picker/image_picker.dart';
import 'database.dart';
import 'login.dart';

class submit_confirm extends StatefulWidget {

  const submit_confirm({Key? key}) : super(key: key);
  @override
  submit_confirmState createState() {
    return submit_confirmState();
  }
}
class submit_confirmState extends State<submit_confirm>
{

  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

    double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text('Confirm'),
        ),
        body:
        Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 70, left: 50),
                child: Row(
                    children: [
                    Container(child: Text("Name"),),
                      Container(padding: EdgeInsets.only(left: 40),child: Text(nameController.text,))
                    ]
                )


              ),
              Container(
                  padding: EdgeInsets.only(top: 70, left: 50),
                  child: Row(
                      children: [
                        Container(child: Text("Gender"),),
                        Container(padding: EdgeInsets.only(left: 33),child: Text(genderController.text,))
                      ]
                  )


              ),
              Container(
                  padding: EdgeInsets.only(top: 70, left: 50),
                  child: Row(
                      children: [
                        Container(child: Text("D.O.B."),),
                        Container(padding: EdgeInsets.only(left: 40),child: Text(timeController.text,))
                      ]
                  )


              ),
              Container(
                  padding: EdgeInsets.only(top: 70, left: 50),
                  child: Row(
                      children: [
                        Container(child: Text("Pincode"),),
                        Container(padding: EdgeInsets.only(left: 28),child: Text(pincodeController.text,))
                      ]
                  )
              ),
              Container(
                  padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                  child: new ElevatedButton(
                    child: const Text('SUBMIT'),
                    onPressed: () => {
                      Navigator.pushAndRemoveUntil(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) =>
                                Databasepage(),
                            transitionDuration:
                            Duration(seconds: 0),
                          ),
                              (route) => false)
                    },
                  )


              )




            ],
          ),



      ),
    );





  }





}