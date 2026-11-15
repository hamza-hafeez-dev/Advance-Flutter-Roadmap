import 'package:flutter/material.dart';

// Row & Column :-

// Row & Column Are Used To Arrange Widgets.
//
// Row    -> Arranges Widgets Horizontally.
// Column -> Arranges Widgets Vertically.
//
// We Use Row & Column To Create Layouts
// Such As Buttons, Cards, Menus & Screens.


// 1. ROW WIDGET :-
//
// Row Places Its Children From Left To Right.
//
// children Is Used To Add Multiple Widgets.

Row(
  children: [

    Text('First'),

    Text('Second'),

    Text('Third'),

  ],
);


// 2. COLUMN WIDGET :-
//
// Column Places Its Children From Top To Bottom.

Column(
  children: [

    Text('First'),

    Text('Second'),

    Text('Third'),

  ],
);


// 3. MAIN AXIS :-
//
// MainAxis Is The Direction
// In Which Row Or Column Arranges Its Children.
//
// Row    -> Horizontal MainAxis
// Column -> Vertical MainAxis
//
// mainAxisAlignment Controls
// The Alignment Along MainAxis.


// ROW MAIN AXIS ALIGNMENT :-

Row(
  mainAxisAlignment: MainAxisAlignment.center,

  children: [

    Text('First'),

    Text('Second'),

    Text('Third'),

  ],
);


// MAIN AXIS ALIGNMENT OPTIONS :-
//
// MainAxisAlignment.start
// -> Places Children At The Start.
//
// MainAxisAlignment.center
// -> Places Children In The Center.
//
// MainAxisAlignment.end
// -> Places Children At The End.
//
// MainAxisAlignment.spaceBetween
// -> Equal Space Between Children.
//
// MainAxisAlignment.spaceAround
// -> Equal Space Around Children.
//
// MainAxisAlignment.spaceEvenly
// -> Equal Space Between & Around Children.


// 4. CROSS AXIS :-
//
// CrossAxis Is The Direction
// Perpendicular To MainAxis.
//
// Row    -> Vertical CrossAxis
// Column -> Horizontal CrossAxis
//
// crossAxisAlignment Controls
// The Alignment Along CrossAxis.


// ROW CROSS AXIS ALIGNMENT :-

Row(
  crossAxisAlignment: CrossAxisAlignment.center,

  children: [

    Text('First'),

    Text('Second'),

    Text('Third'),

  ],
);


// CROSS AXIS ALIGNMENT OPTIONS :-
//
// CrossAxisAlignment.start
// -> Aligns Children At The Start.
//
// CrossAxisAlignment.center
// -> Aligns Children In The Center.
//
// CrossAxisAlignment.end
// -> Aligns Children At The End.
//
// CrossAxisAlignment.stretch
// -> Stretches Children Along CrossAxis.


// 5. ROW WITH SPACING :-
//
// We Can Use SizedBox To Add Space
// Between Row Children.

Row(
  children: [

    Text('Flutter'),

    SizedBox(width: 20),

    Text('Dart'),

  ],
);


// 6. COLUMN WITH SPACING :-
//
// SizedBox Creates Vertical Space
// Between Column Children.

Column(
  children: [

    Text('Flutter'),

    SizedBox(height: 20),

    Text('Dart'),

  ],
);


// 7. ROW WITH ICON & TEXT :-
//
// Row Is Commonly Used
// To Place Icon And Text Together.

Row(
  children: [

    Icon(Icons.home),

    SizedBox(width: 10),

    Text('Home'),

  ],
);


// 8. COLUMN WITH ICON & TEXT :-
//
// Column Is Commonly Used
// To Place Icon Above Text.

Column(
  children: [

    Icon(Icons.person),

    SizedBox(height: 10),

    Text('Profile'),

  ],
);


// 9. ROW INSIDE COLUMN :-
//
// We Can Combine Row & Column
// To Create More Complex Layouts.

Column(
  children: [

    Text('My Profile'),

    SizedBox(height: 20),

    Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [

        Icon(Icons.person),

        SizedBox(width: 10),

        Text('Hamza'),

      ],
    ),

  ],
);


// 10. COLUMN INSIDE ROW :-
//
// We Can Also Place Column
// Inside A Row.

Row(
  children: [

    Icon(Icons.person),

    SizedBox(width: 10),

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Text('Hamza'),

        Text('Flutter Developer'),

      ],
    ),

  ],
);


// 11. COMPLETE ROW & COLUMN EXAMPLE :-
//
// Creating A Simple Profile UI
// Using Row & Column.

class RowColumnDemo extends StatelessWidget {

  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Row & Column'),
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Profile Icon.

            const Icon(
              Icons.person,
              size: 80,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            // Profile Name.

            const Text(
              'Hamza Hafeez',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Developer Title.

            const Text('Flutter Developer'),

            const SizedBox(height: 20),

            // Buttons In A Row.

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Follow'),
                ),

                const SizedBox(width: 10),

                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Message'),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}


// IMPORTANT RULE :-
//
// Row       -> Horizontal Layout
//
// Column    -> Vertical Layout
//
// children   -> Add Multiple Widgets
//
// mainAxisAlignment
// -> Control Main Direction Alignment
//
// crossAxisAlignment
// -> Control Cross Direction Alignment
//
// SizedBox
// -> Add Space Between Widgets
//
// Row + Column
// -> Create Complex UI Layouts
