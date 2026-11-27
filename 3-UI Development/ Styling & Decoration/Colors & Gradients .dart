// Colors & Gradients :-


// Colors Are Used To Add Colors To Flutter Widgets.
// Gradients Are Used To Mix Two Or More Colors Together.
//
// FLUTTER PROVIDES DIFFERENT WAYS TO USE COLORS.


// 1. USING BASIC COLORS :-
//
// Flutter Provides Predefined Colors Through Colors Class.
// We Can Use Colors.red, Colors.blue, Colors.green Etc.

Container(
  color: Colors.blue,
);


// 2. USING CUSTOM COLORS :-
//
// We Can Create Our Own Colors Using Color Class.
// Color Uses A Hexadecimal Value.
//
// 0xFF -> Full Opacity.
// FF   -> Red.
// 00   -> Green.
// 00   -> Blue.

Container(
  color: Color(0xFF2196F3),
);


// 3. USING HEX COLORS WITH OPACITY :-
//
// We Can Also Control The Opacity Of A Color.
// 0x80 Means 50% Opacity.

Container(
  color: Color(0x802196F3),
);


// 4. USING WITH OPACITY :-
//
// withOpacity() Changes The Opacity Of An Existing Color.

Container(
  color: Colors.black.withOpacity(0.5),
);


// 5. LINEAR GRADIENT :-
//
// LinearGradient Mixes Colors In A Straight Direction.
// We Use It Inside BoxDecoration.

Container(
  height: 150,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.blue,
        Colors.purple,
      ],
    ),
  ),
);


// 6. GRADIENT DIRECTION :-
//
// begin Defines Where The Gradient Starts.
// end Defines Where The Gradient Ends.
//
// Alignment.topLeft -> Starts From Top Left.
// Alignment.bottomRight -> Ends At Bottom Right.

Container(
  height: 150,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.blue,
        Colors.purple,
      ],
    ),
  ),
);


// 7. RADIAL GRADIENT :-
//
// RadialGradient Spreads Colors From A Center Point.
// It Creates A Circular Gradient Effect.

Container(
  height: 150,
  decoration: BoxDecoration(
    gradient: RadialGradient(
      colors: [
        Colors.yellow,
        Colors.orange,
        Colors.red,
      ],
    ),
  ),
);


// 8. SWEEP GRADIENT :-
//
// SweepGradient Mixes Colors Around A Center Point.
// It Creates A Circular, Rotating Color Effect.

Container(
  height: 150,
  decoration: BoxDecoration(
    gradient: SweepGradient(
      colors: [
        Colors.red,
        Colors.yellow,
        Colors.green,
        Colors.blue,
        Colors.red,
      ],
    ),
  ),
);


// IMPORTANT GRADIENT PROPERTIES :-
//
// colors -> Colors Used In The Gradient.
// begin  -> Starting Position.
// end    -> Ending Position.
// stops  -> Controls Where Each Color Appears.
// center -> Center Point Of Radial Or Sweep Gradient.


// 9. USING STOPS :-
//
// Stops Control The Position Of Each Color.
// Values Range From 0.0 To 1.0.

Container(
  height: 150,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.red,
        Colors.yellow,
        Colors.green,
      ],
      stops: [0.0, 0.5, 1.0],
    ),
  ),
);


// IMPORTANT RULE :-
//
// Use Colors Class For Predefined Colors.
// Use Color(0xFF...) For Custom Colors.
// Use LinearGradient For Straight Color Mixing.
// Use RadialGradient For Circular Color Mixing.
// Use SweepGradient For Colors Around A Center.
