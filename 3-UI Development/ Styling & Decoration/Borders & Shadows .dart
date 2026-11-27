// Borders & Shadows :-


// Borders Are Used To Add Outlines Around Widgets.
// Shadows Are Used To Give Widgets A Depth Effect.
//
// We Mostly Use Them Inside BoxDecoration.


// 1. BASIC BORDER :-
//
// Border.all() Adds A Border Around The Container.
// color -> Border Color.
// width -> Border Thickness.

Container(
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.blue,
      width: 2,
    ),
  ),
);


// 2. BORDER RADIUS :-
//
// borderRadius Is Used To Make Rounded Corners.

Container(
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(15),
  ),
);


// 3. DIFFERENT BORDER SIDES :-
//
// We Can Apply Borders To Specific Sides.
// Use BorderSide To Define Each Side.

Container(
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    border: Border(
      top: BorderSide(
        color: Colors.red,
        width: 3,
      ),
      bottom: BorderSide(
        color: Colors.blue,
        width: 3,
      ),
    ),
  ),
);


// 4. BOX SHADOW :-
//
// boxShadow Adds A Shadow Behind The Container.
//
// color -> Shadow Color.
// blurRadius -> Controls Shadow Softness.
// spreadRadius -> Controls Shadow Size.
// offset -> Controls Shadow Position.

Container(
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        blurRadius: 10,
        spreadRadius: 2,
        offset: Offset(4, 4),
      ),
    ],
  ),
);


// 5. MULTIPLE SHADOWS :-
//
// We Can Add More Than One Shadow.
// Each Shadow Can Have Different Properties.

Container(
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.red.withOpacity(0.2),
        blurRadius: 10,
        offset: Offset(4, 4),
      ),
      BoxShadow(
        color: Colors.blue.withOpacity(0.2),
        blurRadius: 10,
        offset: Offset(-4, -4),
      ),
    ],
  ),
);


// 6. BORDER WITH SHADOW :-
//
// We Can Combine Borders And Shadows
// To Create A Clean Card Design.

Container(
  height: 150,
  width: 250,
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.grey.shade300,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 8,
        offset: Offset(0, 4),
      ),
    ],
  ),
);


// IMPORTANT PROPERTIES :-
//
// Border.all() -> Adds Border On All Sides.
// BorderSide() -> Controls A Specific Border.
// borderRadius -> Makes Corners Rounded.
// boxShadow -> Adds Shadow.
// blurRadius -> Controls Shadow Softness.
// spreadRadius -> Controls Shadow Size.
// offset -> Changes Shadow Position.


// IMPORTANT RULE :-
//
// Use Border To Create Outlines.
// Use BorderRadius To Make Rounded Corners.
// Use BoxShadow To Add Depth.
// Use BoxDecoration To Combine Them.
