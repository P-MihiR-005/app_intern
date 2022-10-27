import 'package:app_intern/Home.dart';
import 'package:app_intern/login.dart';
import 'package:app_intern/reset.dart';
import 'package:app_intern/signup.dart';
import 'package:app_intern/submit_confirm.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';




Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // Check for Errors
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            routes: <String, WidgetBuilder>{
              '/signup': (BuildContext context) => new SignupPage(),
              '/reset' :(BuildContext context) => new ForgotPassword(),
              '/Login' :(BuildContext context) => new Login(),
              '/Homepage' :(BuildContext context) => new HomePage(),
              '/submit_confirm' :(BuildContext context) => new submit_confirm(),
            },
              home: Login(),


          );
        });


  }
}
