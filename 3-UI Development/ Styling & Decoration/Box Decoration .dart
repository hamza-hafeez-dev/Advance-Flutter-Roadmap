// Box Decoration :-


// BoxDecoration Is Used To Style A Container.
// It Helps Us Add Colors, Borders, Rounded Corners,
// Shadows And Background Images.
//
//
// IMPORTANT PROPERTIES :-
//
// color          -> Background Color.
// borderRadius   -> Rounded Corners.
// border         -> Adds Border.
// boxShadow      -> Adds Shadow.
// gradient       -> Adds Gradient Colors.
// image          -> Adds Background Image.


// 1. BASIC DECORATION :-


Container(
  height: 150,
  width: 150,

  decoration: BoxDecoration(
    color: Colors.blue,
  ),
);


// 2. BORDER RADIUS :-


// Used To Make Rounded Corners.


Container(
  height: 150,
  width: 150,

  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(20),
  ),
);


// 3. BORDER :-


// Used To Add Border Around A Container.


Container(
  height: 150,
  width: 150,

  decoration: BoxDecoration(
    color: Colors.white,

    border: Border.all(
      color: Colors.black,
      width: 2,
    ),
  ),
);


// 4. BOX SHADOW :-


// Used To Add Shadow Behind A Container.


Container(
  height: 150,
  width: 150,

  decoration: BoxDecoration(
    color: Colors.white,

    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10,
        spreadRadius: 2,
        offset: Offset(4, 4),
      ),
    ],
  ),
);


// 5. GRADIENT :-


// Used To Apply Multiple Colors.


Container(
  height: 150,
  width: 150,

  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.blue,
        Colors.purple,
      ],
    ),
    borderRadius: BorderRadius.circular(20),
  ),
);


// 6. BACKGROUND IMAGE :-


// Used To Add An Image Inside A Container.


Container(
  height: 200,
  width: 200,

  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/bg.png'),
      fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.circular(20),
  ),
);


// IMPORTANT RULES :-
//
// 1. Use BoxDecoration To Style Containers.
// 2. Use BorderRadius.circular() For Rounded Corners.
// 3. Use Border.all() To Add Borders.
// 4. Use BoxShadow() To Add Shadows.
// 5. Use LinearGradient() For Gradient Colors.
// 6. Do Not Set Container Color And Decoration Color Together.
//
//
// SIMPLE SUMMARY :-
//
// BoxDecoration Helps Us Customize Container Appearance
// With Colors, Borders, Shadows, Gradients And Images.
