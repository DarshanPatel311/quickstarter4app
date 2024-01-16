import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Flutter Rich Text',style: TextStyle(
              color: Colors.white,
            ),
            ),

          ),
          body: Center (
            child : RichText(
              // ignore: prefer_const_constructors
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Rich Text helps to create\n',
                    style:TextStyle(
                      color: Colors.black45,
                      fontSize: 25,

                    ),
                  ),
                  const TextSpan(
                    text: '   Highlighted \n',
                    style:TextStyle(
                      color: Colors.red,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  TextSpan(
                      text: 'Clickable',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('Login Text Clicked');
                        }
                        ),

                ],
              ),
            ),
          ),
            ),
          ),


    );
  }


}
