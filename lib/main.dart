import 'package:flutter/material.dart';
import 'massenger_screen.dart';

void main()
{
  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen(),
      // backgroundImage: NetworkImage(
      //     'https://avatars.githubusercontent.com/u/85329448?v=4'
      // ),
    );
  }
}