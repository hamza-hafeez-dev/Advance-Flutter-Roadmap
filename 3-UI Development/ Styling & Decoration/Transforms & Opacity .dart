// Transforms & Opacity :-


// TRANSFORMS :-
//
// Transform Is Used To Change The Position, Size Or Rotation Of A Widget.
// We Use Transform To Create Different Visual Effects.
//
// IMPORTANT TRANSFORM TYPES :-
//
// Transform.rotate -> Rotates A Widget.
// Transform.scale -> Changes Widget Size.
// Transform.translate -> Moves A Widget.
// Transform.flip -> Flips A Widget.


// 1. TRANSFORM ROTATE :-
//
// Rotates A Widget By A Given Angle.
// We Use Radians To Define The Rotation Angle.
//
// pi / 4 -> 45 Degrees.
// pi / 2 -> 90 Degrees.

Transform.rotate(
  angle: pi / 4,
  child: Container(
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
);


// 2. TRANSFORM SCALE :-
//
// Changes The Size Of A Widget.
// 1.0 -> Original Size.
// 2.0 -> Double Size.
// 0.5 -> Half Size.

Transform.scale(
  scale: 1.5,
  child: Container(
    height: 100,
    width: 100,
    color: Colors.green,
  ),
);


// 3. TRANSFORM TRANSLATE :-
//
// Moves A Widget From Its Original Position.
// dx -> Horizontal Movement.
// dy -> Vertical Movement.

Transform.translate(
  offset: Offset(30, 20),
  child: Container(
    height: 100,
    width: 100,
    color: Colors.orange,
  ),
);


// 4. TRANSFORM FLIP :-
//
// Flips A Widget Horizontally Or Vertically.
// We Can Use Negative Scale Values For Flipping.

Transform(
  alignment: Alignment.center,
  transform: Matrix4.identity()..scale(-1.0, 1.0),
  child: Container(
    height: 100,
    width: 100,
    color: Colors.purple,
  ),
);


// OPACITY :-
//
// Opacity Controls How Transparent A Widget Looks.
// Its Value Ranges From 0.0 To 1.0.
//
// 0.0 -> Completely Transparent.
// 0.5 -> 50% Visible.
// 1.0 -> Completely Visible.


// 5. USING OPACITY WIDGET :-

Opacity(
  opacity: 0.5,
  child: Container(
    height: 100,
    width: 100,
    color: Colors.red,
  ),
);


// 6. USING ANIMATED OPACITY :-
//
// AnimatedOpacity Changes Opacity Smoothly.
// We Use It When We Want To Show Or Hide A Widget.
//
// opacity -> Target Opacity.
// duration -> Animation Time.

AnimatedOpacity(
  opacity: 0.3,
  duration: Duration(seconds: 1),
  child: Container(
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
);


// IMPORTANT PROPERTIES :-
//
// angle -> Rotation Angle.
// scale -> Widget Size.
// offset -> Widget Movement.
// opacity -> Transparency Level.
// duration -> Animation Time.


// IMPORTANT RULE :-
//
// Use Transform To Change A Widget's Appearance.
// Use Opacity To Control Transparency.
// Use AnimatedOpacity For Smooth Opacity Changes.
