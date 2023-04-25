import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
 runApp(
   const MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.black,
       body: GradientContainer(
         Colors.black87,
         Colors.black12,
       ),
     ),
   ),
 );
}
