import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
 runApp(
   MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.black,
       body: GradientContainer.purple(
          const Colors.black87,
          const Colors.black12,
       ),
     ),
   ),
 );
}
