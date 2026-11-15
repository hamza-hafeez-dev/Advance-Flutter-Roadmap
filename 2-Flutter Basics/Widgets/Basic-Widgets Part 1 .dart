import 'package:flutter/material.dart';

// Basic Widgets - Part 1 :-

// Widgets Are The Building Blocks Of Flutter UI !
//
// We Use Widgets To Create Everything
// We See On The Screen.
//
// In This Lecture We Will Learn :-
//
// Text
// Container
// SizedBox
// Center
// Padding
// Row
// Column


// 1. TEXT WIDGET :-
//
// Text Widget Is Used To Display Text On The Screen.

Text(
  'Hello Flutter',
  style: TextStyle(
    fontSize: 24,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  ),
);


// 2. CONTAINER WIDGET :-
//
// Container Is Used To Create A Box.
//
// We Can Set Its Width, Height & Color.

Container(
  width: 200,
  height: 100,
  color: Colors.blue,

  child: Center(
    child: Text('Hello Container'),
  ),
);


// CONTAINER WITH DECORATION :-
//
// We Can Add Border & Border Radius
// Using BoxDecoration.

Container(
  width: 200,
  height: 100,

  decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(
      color: Colors.black,
      width: 2,
    ),
  ),

  child: Center(
    child: Text('Decorated Container'),
  ),
);


// 3. SIZEDBOX WIDGET :-
//
// SizedBox Is Used To Create Space
// Or Give Fixed Width & Height.

SizedBox(
  width: 100,
  height: 50,
);


// VERTICAL SPACE :-

SizedBox(height: 20);


// HORIZONTAL SPACE :-

SizedBox(width: 20);


// 4. CENTER WIDGET :-
//
// Center Places Its Child
// In The Center Of Available Space.

Center(
  child: Text('Centered Text'),
);


// 5. PADDING WIDGET :-
//
// Padding Adds Space Around Its Child.

Padding(
  padding: EdgeInsets.all(16),

  child: Text('Hello Flutter'),
);


// CUSTOM PADDING :-
//
// symmetric() Adds Horizontal
// And Vertical Padding.

Padding(
  padding: EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 10,
  ),

  child: Text('Custom Padding'),
);


// 6. ROW WIDGET :-
//
// Row Arranges Widgets Horizontally.

Row(
  children: [

    Text('First'),

    SizedBox(width: 10),

    Text('Second'),

    SizedBox(width: 10),

    Text('Third'),

  ],
);


// ROW ALIGNMENT :-
//
// mainAxisAlignment Controls
// The Horizontal Alignment Of Children.

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,

  children: [

    Text('Left'),

    Text('Center'),

    Text('Right'),

  ],
);


// 7. COLUMN WIDGET :-
//
// Column Arranges Widgets Vertically.

Column(
  children: [

    Text('First'),

    SizedBox(height: 10),

    Text('Second'),

    SizedBox(height: 10),

    Text('Third'),

  ],
);


// COLUMN ALIGNMENT :-
//
// mainAxisAlignment Controls
// The Vertical Alignment Of Children.

Column(
  mainAxisAlignment: MainAxisAlignment.center,

  children: [

    Text('First'),

    Text('Second'),

    Text('Third'),

  ],
);


// IMPORTANT RULE :-
//
// Text       -> Display Text
//
// Container  -> Create A Box
//
// SizedBox   -> Create Space
//
// Center     -> Center Its Child
//
// Padding    -> Add Space
//
// Row        -> Horizontal Layout
//
// Column     -> Vertical Layout
