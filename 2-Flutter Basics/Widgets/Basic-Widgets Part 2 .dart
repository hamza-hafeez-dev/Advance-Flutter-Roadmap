import 'package:flutter/material.dart';

// Basic Widgets - Part 2 :-

// In Part 1 We Learned Basic Layout Widgets.
//
// Now We Will Learn :-
//
// Icon
// Image
// ElevatedButton
// TextButton
// OutlinedButton
// Scaffold
// AppBar


// 1. ICON WIDGET :-
//
// Icon Widget Is Used To Display Icons.

Icon(
  Icons.home,
  size: 40,
  color: Colors.blue,
);


// 2. IMAGE WIDGET :-
//
// Image Widget Is Used To Display Images.


// IMAGE FROM INTERNET :-

Image.network(
  'https://example.com/image.png',
  width: 200,
  height: 150,
  fit: BoxFit.cover,
);


// IMAGE FROM ASSETS :-
//
// We Can Display Images From Our Project Assets.

Image.asset(
  'assets/images/profile.png',
  width: 200,
  height: 150,
  fit: BoxFit.cover,
);


// 3. ELEVATED BUTTON :-
//
// ElevatedButton Creates A Button
// With Background Color.

ElevatedButton(
  onPressed: () {

    debugPrint('Button Pressed');

  },

  child: Text('Click Me'),
);


// 4. TEXT BUTTON :-
//
// TextButton Creates A Simple Text Button.

TextButton(
  onPressed: () {

    debugPrint('Text Button Pressed');

  },

  child: Text('Click Me'),
);


// 5. OUTLINED BUTTON :-
//
// OutlinedButton Creates A Button
// With An Outline Border.

OutlinedButton(
  onPressed: () {

    debugPrint('Outlined Button Pressed');

  },

  child: Text('Click Me'),
);


// 6. APPBAR WIDGET :-
//
// AppBar Creates The Top Bar Of A Screen.

AppBar(
  title: Text('Home Screen'),

  backgroundColor: Colors.blue,

  actions: [

    IconButton(
      onPressed: () {},
      icon: Icon(Icons.search),
    ),

  ],
);


// 7. SCAFFOLD WIDGET :-
//
// Scaffold Provides The Basic Structure
// For A Flutter Screen.
//
// It Includes AppBar, Body & Other
// Important Screen Components.

Scaffold(
  appBar: AppBar(
    title: Text('My App'),
  ),

  body: Center(
    child: Text('Welcome To Flutter'),
  ),
);


// COMPLETE EXAMPLE :-
//
// Combining Basic Widgets
// To Create A Simple Flutter Screen.

class BasicWidgetsDemo extends StatelessWidget {

  const BasicWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Basic Widgets'),
        backgroundColor: Colors.blue,
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(
              Icons.flutter_dash,
              size: 80,
              color: Colors.blue,
            ),

            SizedBox(height: 20),

            Text(
              'Welcome To Flutter',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text('Learn Flutter Step By Step'),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Welcome To Flutter'),
                  ),
                );

              },

              child: Text('Get Started'),
            ),

          ],
        ),
      ),
    );
  }
}


// IMPORTANT RULE :-
//
// Icon           -> Display Icons
//
// Image          -> Display Images
//
// ElevatedButton -> Elevated Button
//
// TextButton     -> Simple Text Button
//
// OutlinedButton -> Outlined Button
//
// AppBar         -> Top Bar
//
// Scaffold       -> Screen Structure
